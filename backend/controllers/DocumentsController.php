<?php

namespace backend\controllers;

use Yii;
use backend\models\Documents;
use backend\models\DocumentsSearch;
use common\components\Rule;
use common\models\User;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use mdm\autonumber\AutoNumber;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;
use yii\web\UploadedFile;
use Exception;
use yii\filters\AccessControl;
use yii\helpers\BaseFileHelper;



/**
 * DocumentsController implements the CRUD actions for Documents model.
 */
class DocumentsController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
            'access' => [
                'class' => AccessControl::class,
                'ruleConfig' => [
                    'class' => Rule::class,
                ],
                'only' => ['index', 'view', 'create', 'update', 'delete', 'download'],
                'rules' => [
                    [
                        'actions' => ['index'],
                        'allow' => true,
                        'roles' => [
                            User::ROLE_ADMIN,
                            User::ROLE_MANAGER,
                            User::ROLE_USER,
                            User::ROLE_QA,
                            User::ROLE_SALE,
                        ],
                    ],
                    [
                        'actions' => ['view'],
                        'allow' => true,
                        'roles' => [
                            User::ROLE_ADMIN,
                            User::ROLE_MANAGER,
                            User::ROLE_QA,
                            User::ROLE_SALE,
                        ],
                    ],
                    [
                        'actions' => ['update', 'create'],
                        'allow' => true,
                        'roles' => [
                            User::ROLE_ADMIN,
                            User::ROLE_MANAGER,
                            User::ROLE_QA
                        ],
                    ],
                    [
                        'actions' => ['delete'],
                        'allow' => true,
                        'roles' => [
                            User::ROLE_ADMIN
                        ],
                    ],
                    [
                        'actions' => ['download'],
                        'allow' => true,
                        'roles' => [
                            User::ROLE_ADMIN,
                            User::ROLE_MANAGER,
                            User::ROLE_QA,
                            User::ROLE_SALE,
                        ],
                    ],
                ],
            ],
        ];
    }

    /**
     * Lists all Documents models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new DocumentsSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        $dataProvider->pagination = [
            'pageSize' => 10, // Number of items per page
        ];

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Documents model.
     * @param int $id ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Documents model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Documents();
        $model->document_date = 60;
        $ref = substr(Yii::$app->getSecurity()->generateRandomString(), 10);


        if ($model->load(Yii::$app->request->post())) {
            //  Auto Number
            $AutoNumber = AutoNumber::generate(date('Ym') . '-???');
            $model->numbers = $AutoNumber;

            // uploadfile
            $this->CreateDir($model->ref);
            $model->docs = $this->uploadMultipleFile($model);


            if ($model->save()) {

                // Yii::$app->session->setFlash('success', Yii::t('app', 'Created Successfully'));


                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            $model->ref =  $ref;
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Documents model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $tempDocs = $model->docs;

        if ($this->request->isPost && $model->load($this->request->post())) {

            $this->CreateDir($model->ref);
            $model->docs = $this->uploadMultipleFile($model, $tempDocs);

            $model->save();

            Yii::$app->session->setFlash('success', Yii::t('app', 'Updated Successfully'));

            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Documents model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        //remove upload file & data
        $this->removeUploadDir($model->ref);
        // Uploads::deleteAll(['ref' => $model->ref]);

        $model->delete();

        return $this->redirect(['index']);
        // $this->findModel($id)->delete();
        // return $this->redirect(['index']);
    }


    /**
     * Finds the Documents model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Documents the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Documents::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }


    /***************** action Deletefile ******************/
    public function actionDeletefile($id, $field, $fileName)
    {
        $status = ['success' => false];
        if (in_array($field, ['docs'])) {
            $model = $this->findModel($id);
            $files =  Json::decode($model->{$field});
            if (array_key_exists($fileName, $files)) {
                if ($this->deleteFile('file', $model->ref, $fileName)) {
                    $status = ['success' => true];
                    unset($files[$fileName]);
                    $model->{$field} = Json::encode($files);
                    $model->save();
                }
            }
        }
        echo json_encode($status);
    }


    /***************** deleteFile ******************/
    private function deleteFile($type = 'file', $ref, $fileName)
    {
        if (in_array($type, ['file', 'thumbnail'])) {
            if ($type === 'file') {
                $filePath = Documents::getUploadPath() . $ref . '/' . $fileName;
            } else {
                $filePath = Documents::getUploadPath() . $ref . '/thumbnail/' . $fileName;
            }
            @unlink($filePath);
            return true;
        } else {
            return false;
        }
    }


    /***************** upload MultipleFile ******************/
    private function uploadMultipleFile($model, $tempFile = null)
    {
        $files = [];
        $json = '';
        $tempFile = Json::decode($tempFile);
        $UploadedFiles = UploadedFile::getInstances($model, 'docs');
        if ($UploadedFiles !== null) {
            foreach ($UploadedFiles as $file) {
                try {
                    $oldFileName = $file->basename . '.' . $file->extension;
                    $newFileName = md5($file->basename . time()) . '.' . $file->extension;
                    $file->saveAs(Documents::UPLOAD_FOLDER . '/' . $model->ref . '/' . $newFileName);
                    $files[$newFileName] = $oldFileName;
                } catch (Exception $e) {
                }
            }
            $json = json::encode(ArrayHelper::merge($tempFile, $files));
        } else {
            $json = $tempFile;
        }
        return $json;
    }

    /***************** Create Dir ******************/
    private function CreateDir($folderName)
    {
        if ($folderName != NULL) {
            $basePath = Documents::getUploadPath();
            if (BaseFileHelper::createDirectory($basePath . $folderName, 0777)) {
                BaseFileHelper::createDirectory($basePath . $folderName . '/thumbnail', 0777);
            }
        }
        return;
    }

    /***************** Remove Upload Dir ******************/
    private function removeUploadDir($dir)
    {
        BaseFileHelper::removeDirectory(Documents::getUploadPath() . $dir);
    }


    /***************** Download ******************/
    public function actionDownload($id, $file, $fullname)
    {
        $model = $this->findModel($id);
        if (!empty($model->ref) && !empty($model->docs)) {
            Yii::$app->response->sendFile($model->getUploadPath() . '/' . $model->ref . '/' . $file, $fullname);
        } else {
            $this->redirect(['/documents/view', 'id' => $id]);
        }
    }
}
