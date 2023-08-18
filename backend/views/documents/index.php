<?php

use backend\models\Documents;
use backend\models\Categories;
use backend\models\Occupier;
use backend\models\RawMaterial;
use backend\models\Status;
use backend\models\Types;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
// use yii\grid\GridView;
use kartik\grid\GridView;
use kartik\select2\Select2;
use yii\bootstrap5\LinkPager;
use yii\helpers\ArrayHelper;

use kartik\export\ExportMenu;

/** @var yii\web\View $this */
/** @var backend\models\DocumentsSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = Yii::t('app', 'Documents');
$this->params['breadcrumbs'][] = $this->title;
?>
<!-- Add the following meta tag to refresh the page every 1 minute -->
<meta http-equiv="refresh" content="360">
<div class="documents-index">

    <div style="display: flex; justify-content: space-between;">
        <div class="mb-3"> <?= Html::a('<i class="fa fa-plus"></i> ' . Yii::t('app', 'Create Data'), ['create'], ['class' => 'btn btn-danger']) ?></div>
        <div class="mb-3" style="text-align: right;">
       
            <?php
            echo ExportMenu::widget([
                'dataProvider' => $dataProvider,
                'columns' => [
                    'id',
                    [
                        'attribute' => 'categories_id',
                        'format' => 'html',
                        'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                        'options' => ['style' => 'width:120px;'],
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:' . $model->categories->color . ';"><b>' . $model->categories->name . '</b></span>';
                        },
                    ],
                    [
                        'attribute' => 'status_id',
                        'format' => 'html',
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:'
                                . $model->status->color . ';"><b>'
                                . $model->status->name
                                . ' </b></span>';
                        },
                    ],
                    'status_details',
                    'numbers',
                    'title',
                    'description:ntext',
                    [
                        'attribute' => 'expiration_date',
                        'format' => 'html',
                        'value' => function ($model) {
                            return Yii::$app->formatter->asDate($model->expiration_date, 'php:d M Y') .
                                ' <span class="badge" style="background-color: ' . ($model->getDaysToExpiration() < $model->document_date ? 'red' : 'green') . ';">' . $model->getDaysToExpiration() . ' days left</span>';
                        },
                    ],
                    [
                        'attribute' => 'raw_material',
                        'format' => 'html',
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:'
                                . $model->rawMaterial->color . ';"><b>'
                                . $model->rawMaterial->name
                                . ' </b></span>';
                        },
                    ],
                    [
                        'attribute' => 'categories_id',
                        'format' => 'html',
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:'
                                . $model->categories->color . ';"><b>'
                                . $model->categories->name
                                . ' </b></span>';
                        },
                    ],

                    [
                        'attribute' => 'occupier_id',
                        'format' => 'html',
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:'
                                . $model->occupier->color . ';"><b>'
                                . $model->occupier->name
                                . ' </b></span>';
                        },
                    ],

                    [
                        'attribute' => 'types_id',
                        'format' => 'html',
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:'
                                . $model->types->color . ';"><b>'
                                . $model->types->name
                                . ' </b></span>';
                        },
                    ],

                ],
                'exportConfig' => [
                    ExportMenu::FORMAT_TEXT => false,
                    ExportMenu::FORMAT_PDF => false,
                    ExportMenu::FORMAT_HTML => false,
                    ExportMenu::FORMAT_EXCEL => false,
                    ExportMenu::FORMAT_EXCEL_X => false,
                ],
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
                    'panel' => [
                        'before' => ' ',
                        // 'heading' => '<div class="card-header text-white bg-secondary">' . Html::encode($this->title) . '</div>',
                        // 'options' => ['class' => 'card'], // Apply the card theme class
                    ],
                    'pager' => [
                        'class' => LinkPager::class,
                        // 'prevPageLabel' => 'Previous',
                        // 'nextPageLabel' => 'Next',
                        'options' => ['class' => 'pagination justify-content-center m-1'], // Adjust this class to center the pagination.
                        'linkContainerOptions' => ['class' => 'page-item'],
                        'linkOptions' => ['class' => 'page-link'],
                    ],
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        // [
                        //     'attribute' => 'numbers',
                        //     'format' => 'html',
                        //     'options' => ['style' => 'width:150px;'],
                        //     'contentOptions' => ['class' => 'text-center'],
                        //     'value' => function ($model) {
                        //         return Html::a($model->numbers, ['view', 'id' => $model->id]);
                        //     },
                        // ],

                        [
                            'attribute' => 'categories_id',
                            'format' => 'html',
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'options' => ['style' => 'width:120px;'],
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->categories->color . ';"><b>' . $model->categories->name . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'categories_id',
                                'data' => ArrayHelper::map(Categories::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],
                        // 'title',
                        [
                            'attribute' => 'title',
                            'format' => 'html',
                            'options' => ['style' => 'width:auto;'],
                            'value' => function ($model) {
                                return Html::a($model->title, ['view', 'id' => $model->id]);
                            },
                            // 'filter' => Select2::widget([
                            //     'model' => $searchModel,
                            //     'attribute' => 'title',
                            //     'data' => ArrayHelper::map(Documents::find()->all(), 'title', 'title'),
                            //     'options' => ['placeholder' => Yii::t('app', 'Select...')],
                            //     'language' => 'th',
                            //     'pluginOptions' => [
                            //         'allowClear' => true
                            //     ],
                            // ])
                        ],

                        [
                            'attribute' => 'occupier_id',
                            'format' => 'html',
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'options' => ['style' => 'width:80px;'],
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->occupier->color . ';"><b>' . $model->occupier->name . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'occupier_id',
                                'data' => ArrayHelper::map(Occupier::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        // 'supplier_name',
                        [
                            'attribute' => 'supplier_name',
                            'format' => 'html',
                            // 'options' => ['style' => 'width:200px;'],
                            'value' => function ($model) {
                                // return Html::a($model->supplier_name, ['view', 'id' => $model->id]);
                                return $model->supplier_name;
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'supplier_name',
                                'data' => ArrayHelper::map(Documents::find()->all(), 'supplier_name', 'supplier_name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'raw_material',
                            'format' => 'html',
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'options' => ['style' => 'width:120px;'],
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->rawMaterial->color . ';"><b>' . $model->rawMaterial->name . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'raw_material',
                                'data' => ArrayHelper::map(RawMaterial::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],

                        [
                            'attribute' => 'types_id',
                            'format' => 'html',
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'options' => ['style' => 'width:100px;'],
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->types->color . ';"><b>' . $model->types->name . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'types_id',
                                'data' => ArrayHelper::map(Types::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],
                        // 'status_id',

                        [
                            'attribute' => 'status_id',
                            'format' => 'html',
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'options' => ['style' => 'width:100px;'],
                            'value' => function ($model) {
                                return '<span class="badge" style="background-color:' . $model->status->color . ';"><b>' . $model->status->name . '</b></span>';
                            },
                            'filter' => Select2::widget([
                                'model' => $searchModel,
                                'attribute' => 'status_id',
                                'data' => ArrayHelper::map(Status::find()->all(), 'id', 'name'),
                                // 'theme' => Select2::THEME_DEFAULT,
                                // 'theme' => Select2::THEME_KRAJEE,
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => [
                                    'allowClear' => true
                                ],
                            ])
                        ],
                        //'ref',
                        // 'files:ntext',
                        [
                            'attribute' => 'expiration_date',
                            'label' => Yii::t('app', 'Days left'),
                            'options' => ['style' => 'width:80px;'],
                            'contentOptions' => ['class' => 'text-center'],
                            'format' => 'html',
                            'value' => function ($model) {
                                return $model->getDaysToExpirationValue();
                            },
                            'filter' => false
                        ],

                        [
                            // 'class' => ActionColumn::class,
                            'class' => 'kartik\grid\ActionColumn',
                            // 'header' => 'จัดการ',
                            'headerOptions' => ['style' => 'width: 140px;'],
                            'contentOptions' => ['class' => 'text-center'], // จัดตรงกลาง
                            'buttonOptions' => ['class' => 'btn btn-sm btn-outline-primary btn-group'],
                            'urlCreator' => function ($action, Documents $model, $key, $index, $column) {
                                return Url::toRoute([$action, 'id' => $model->id]);
                            }
                        ],
                    ],
                ]); ?>


            </div>
            <!-- </div>
</div>

</div> -->