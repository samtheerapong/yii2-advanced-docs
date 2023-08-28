<?php

use backend\models\Categories;
use backend\models\Documents;
use backend\models\Occupier;
use backend\models\RawMaterial;
use backend\models\Status;
use backend\models\Types;
use kartik\grid\GridView;
use kartik\widgets\Select2;
use yii\bootstrap5\LinkPager;
use yii\helpers\ArrayHelper;
use miloschuman\highcharts\Highcharts;
use yii\bootstrap5\Html;

$this->title = Yii::t('app', 'Dashboard');
?>

<div class="site-index">
    <div class="card border-secondary">
        <div class="card-header text-white bg-secondary">
            <?= Yii::t('app', 'Documents') ?>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <?= Highcharts::widget([
                        'scripts' => ['modules/exporting', 'themes/grid-light'],
                        'options' => [
                            'title' => ['text' => Yii::t('app', 'Categories')],
                            'xAxis' => ['categories' => [Yii::t('app', 'group data')]],
                            'yAxis' => ['title' => ['text' => Yii::t('app', 'Times')]],
                            'series' => [
                                [
                                    'type' => 'pie',
                                    'name' => 'Category',
                                    'data' => $graphcategories,
                                    'tooltip' => [
                                        // 'pointFormat' => '<b>{point.name}</b>: {point.percentage:.1f}%',
                                        'pointFormat' => '<b>{point.name}</b>: {point.y} ({point.percentage:.1f}%)',
                                    ],
                                    'dataLabels' => [
                                        'style' => [
                                            'color' => '#000',
                                        ],
                                    ],
                                ],
                            ],
                        ],
                    ]);
                    ?>
                </div>
                <div class="col-md-3 col-sm-12">
                    <?= Highcharts::widget([
                        'scripts' => ['modules/exporting', 'themes/grid-light'],
                        'options' => [
                            'title' => ['text' => Yii::t('app', 'Raw Material')],
                            'xAxis' => ['categories' => [Yii::t('app', 'group data')]],
                            'yAxis' => ['title' => ['text' => Yii::t('app', 'Times')]],
                            'series' => [
                                [
                                    'type' => 'pie',
                                    'name' => 'Category',
                                    'data' => $graphrawmaterial,
                                    'tooltip' => [
                                        // 'pointFormat' => '<b>{point.name}</b>: {point.percentage:.1f}%',
                                        'pointFormat' => '<b>{point.name}</b>: {point.y} ({point.percentage:.1f}%)',
                                    ],
                                    'dataLabels' => [
                                        'style' => [
                                            'color' => '#000',
                                        ],
                                    ],
                                ],
                            ],
                        ],
                    ]);
                    ?>
                </div>

                <div class="col-md-3 col-sm-12">
                    <?= Highcharts::widget([
                        'scripts' => ['modules/exporting', 'themes/grid-light'],
                        'options' => [
                            'title' => ['text' => Yii::t('app', 'Types')],
                            'xAxis' => ['categories' => [Yii::t('app', 'group data')]],
                            'yAxis' => ['title' => ['text' => Yii::t('app', 'Times')]],
                            'series' => [
                                [
                                    'type' => 'pie',
                                    'name' => 'Category',
                                    'data' => $graphtypes,
                                    'tooltip' => [
                                        // 'pointFormat' => '<b>{point.name}</b>: {point.percentage:.1f}%',
                                        'pointFormat' => '<b>{point.name}</b>: {point.y} ({point.percentage:.1f}%)',
                                    ],
                                    'dataLabels' => [
                                        'style' => [
                                            'color' => '#000',
                                        ],
                                    ],
                                ],
                            ],
                        ],
                    ]);
                    ?>
                </div>
                <div class="col-md-3 col-sm-12">
                    <?= Highcharts::widget([
                        'scripts' => ['modules/exporting', 'themes/grid-light'],
                        'options' => [
                            'title' => ['text' => Yii::t('app', 'Status')],
                            'xAxis' => ['categories' => [Yii::t('app', 'group data')]],
                            'yAxis' => ['title' => ['text' => Yii::t('app', 'Times')]],
                            'series' => [
                                [
                                    'type' => 'pie',
                                    'name' => 'Category',
                                    'data' => $graphstatus,
                                    'tooltip' => [
                                        // 'pointFormat' => '<b>{point.name}</b>: {point.percentage:.1f}%',
                                        'pointFormat' => '<b>{point.name}</b>: {point.y} ({point.percentage:.1f}%)',
                                    ],
                                    'dataLabels' => [
                                        'style' => [
                                            'color' => '#000',
                                        ],
                                    ],
                                ],
                            ],
                        ],
                    ]);
                    ?>
                </div>
            </div>
        </div>
    </div>