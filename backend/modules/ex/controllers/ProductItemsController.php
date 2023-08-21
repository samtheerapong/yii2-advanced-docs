<?php

namespace backend\modules\ex\controllers;

use backend\modules\ex\models\ProductItems;
use backend\modules\ex\models\ProductItemsSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ProductItemsController implements the CRUD actions for ProductItems model.
 */
class ProductItemsController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all ProductItems models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new ProductItemsSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single ProductItems model.
     * @param int $products_id Products ID
     * @param int $items_id Items ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($products_id, $items_id)
    {
        return $this->render('view', [
            'model' => $this->findModel($products_id, $items_id),
        ]);
    }

    /**
     * Creates a new ProductItems model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new ProductItems();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'products_id' => $model->products_id, 'items_id' => $model->items_id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing ProductItems model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $products_id Products ID
     * @param int $items_id Items ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($products_id, $items_id)
    {
        $model = $this->findModel($products_id, $items_id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'products_id' => $model->products_id, 'items_id' => $model->items_id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing ProductItems model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $products_id Products ID
     * @param int $items_id Items ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($products_id, $items_id)
    {
        $this->findModel($products_id, $items_id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the ProductItems model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $products_id Products ID
     * @param int $items_id Items ID
     * @return ProductItems the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($products_id, $items_id)
    {
        if (($model = ProductItems::findOne(['products_id' => $products_id, 'items_id' => $items_id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
