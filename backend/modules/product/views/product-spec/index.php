<?php

use backend\models\Status;
use backend\modules\product\models\ProductSpec;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use kartik\grid\GridView;
use kartik\select2\Select2;
use yii\bootstrap5\LinkPager;

use kartik\export\ExportMenu;
use yii\helpers\ArrayHelper;

/** @var yii\web\View $this */
/** @var backend\modules\product\models\ProductSpecSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = Yii::t('app', 'Product Specs');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-spec-index">
    <div style="display: flex; justify-content: space-between;">
        <div class="mb-3"> <?= Html::a('<i class="fa fa-plus"></i> ' . Yii::t('app', 'Create Data'), ['create'], ['class' => 'btn btn-danger']) ?></div>
        <div class="mb-3" style="text-align: right;">

            <?php
            echo ExportMenu::widget([
                'exportConfig' => [
                    ExportMenu::FORMAT_TEXT => false,
                    ExportMenu::FORMAT_PDF => false,
                    ExportMenu::FORMAT_HTML => false,
                    ExportMenu::FORMAT_EXCEL => false,
                    ExportMenu::FORMAT_EXCEL_X => false,
                ],
                'dataProvider' => $dataProvider,

            ]); ?>
        </div>
    </div>

    <div class="card border-secondary">
        <div class="card-header text-white bg-secondary">
            <?= Html::encode($this->title) ?>
        </div>
        <div class="card-body">
            <div class="table-responsive">

                <?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],

                        [
                            'attribute' => 'product_number',
                            'format' => 'html',
                            'options' => ['style' => 'width:200px;'],
                            'value' => function ($model) {
                                return Html::a($model->product_number, ['view', 'id' => $model->id]);
                            },
                        ],
                        [
                            'attribute' => 'revision',
                            'format' => 'html',
                            'options' => ['style' => 'width:50px;'],
                            'value' => function ($model) {
                                return Html::a($model->revision, ['view', 'id' => $model->id]);
                            },
                        ],
                        [
                            'attribute' => 'title',
                            'format' => 'html',
                            'options' => ['style' => 'width:auto;'],
                            'value' => function ($model) {
                                return Html::a($model->title, ['view', 'id' => $model->id]);
                            },
                        ],
                        'iso_cert',
                        [
                            'attribute' => 'product_status',
                            'format' => 'html',
                            'contentOptions' => ['class' => 'text-center'],
                            'value' => function ($model) {
                                // var_dump($model->productStatus); // Debugging statement
                                return '<span class="badge" style="background-color:' . $model->productStatus->color . ';"><b>' . $model->productStatus->name . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'product_status',
                                'data' => ArrayHelper::map(Status::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'class' => 'kartik\grid\ActionColumn',
                            'headerOptions' => ['style' => 'width: 140px;'],
                            'contentOptions' => ['class' => 'text-center'],
                            'buttonOptions' => ['class' => 'btn btn-sm btn-outline-primary btn-group'],
                            'urlCreator' => function ($action, ProductSpec $model, $key, $index, $column) {
                                return Url::toRoute([$action, 'id' => $model->id]);
                            }
                        ],
                    ],
                ]); ?>


            </div>
        </div>
    </div>
</div>