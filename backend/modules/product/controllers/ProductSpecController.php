<?php

namespace backend\modules\product\controllers;

use backend\modules\product\models\Iso;
use backend\modules\product\models\ProductSpec;
use backend\modules\product\models\ProductSpecSearch;
use common\components\Rule;
use common\models\User;
use mdm\autonumber\AutoNumber;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;

/**
 * ProductSpecController implements the CRUD actions for ProductSpec model.
 */
class ProductSpecController extends Controller
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
                        'actions' => ['index', 'view', 'create', 'update', 'delete', 'download'],
                        'allow' => true,
                        'roles' => [
                            User::ROLE_ADMIN,
                            User::ROLE_MANAGER,
                         
                        ],
                    ],
                    
                ],
            ],
        ];
    }

    /**
     * Lists all ProductSpec models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new ProductSpecSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single ProductSpec model.
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
     * Creates a new ProductSpec model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new ProductSpec();
        $model->revision = 1;

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {

                $model->product_number = AutoNumber::generate('P' . date('Ym') . '-???');

                $model->process = $model->uploadFilesProcess();
                $model->spec = $model->uploadFilesSpec();
                $model->fda = $model->uploadFilesFda();
                $model->nutrition = $model->uploadFilesNutrition();


                $model->save();
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing ProductSpec model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post())) {

            $model->process = $model->uploadFilesProcess();
            $model->spec = $model->uploadFilesSpec();
            $model->fda = $model->uploadFilesFda();
            $model->nutrition = $model->uploadFilesNutrition();

            $model->save();
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing ProductSpec model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the ProductSpec model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return ProductSpec the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = ProductSpec::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }

}
