<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var backend\modules\product\models\ProductSpec $model */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Product Spec'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>

<div class="product-spec-view">
    <div style="display: flex; justify-content: space-between;">
        <p>
            <?= Html::a('<i class="fas fa-chevron-left"></i> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
        </p>

        <p style="text-align: right;">
            <?= Html::a('<i class="fas fa-edit"></i> ' . Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-warning']) ?>

            <?= Html::a('<i class="fas fa-trash"></i> ' . Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                    'method' => 'post',
                ],
            ]) ?>

        </p>
    </div>

    <div class="card border-secondary">
        <div class="card-header text-white bg-secondary">
            <?= Html::encode($this->title) ?>
        </div>
        <div class="card-body">
            <?= DetailView::widget([
                'model' => $model,
                'template' => '<tr><th style="width: 300px;">{label}</th><td> {value}</td></tr>',
                'attributes' => [
                    // 'id',
                    // 'product_number',
                    [
                        'attribute' => 'product_status',
                        'format' => 'html',
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:'
                                . $model->productStatus->color . ';"><b>'
                                . $model->productStatus->name
                                . ' </b></span>';
                        },
                    ],
                    [
                        'attribute' => 'product_number',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->product_number . '<b> Rev.  </b>' . $model->revision;
                        },
                    ],

                    [
                        'attribute' => 'revised_date',
                        'format' => 'html',
                        'value' => function ($model) {
                            return Yii::$app->formatter->asDate($model->revised_date, 'php:d M Y');
                        },
                    ],
                    'title',
                    'description',
                    // 'iso',
                    [
                        'attribute' => 'iso',
                        'value' => function ($model) {
                            return $model->isoNameArray;
                        }
                    ],
                    'ref',
                    // 'spec',
                    [
                        'attribute' => 'spec',
                        'format' => 'html',
                        'value' => $model->listDownloadFiles('spec')
                    ],
                    // [
                    //     'attribute' => 'spec',
                    //     'format' => 'raw',
                    //     'value' => function ($model) {
                    //         return  $model->generateFileLinks('spec') . '<br> <b>วันหมดอายุ : </b>' .  Yii::$app->formatter->asDate($model->spec_expiration, 'php:d M Y');
                    //     },
                    // ],
                    // [
                    //     'attribute' => 'process',
                    //     'format' => 'raw',
                    //     'value' => function ($model) {
                    //         return  $model->generateFileLinks('process') . '<br> <b>วันหมดอายุ : </b>' . Yii::$app->formatter->asDate($model->process_expiration, 'php:d M Y');
                    //     },
                    // ],
                    // [
                    //     'attribute' => 'fda',
                    //     'format' => 'raw',
                    //     'value' => function ($model) {
                    //         return  $model->generateFileLinks('fda') . '<br> <b>วันหมดอายุ : </b>' . Yii::$app->formatter->asDate($model->fda_expiration, 'php:d M Y');
                    //     },
                    // ],
                    // [
                    //     'attribute' => 'nutrition',
                    //     'format' => 'raw',
                    //     'value' => function ($model) {
                    //         return  $model->generateFileLinks('nutrition') . '<br> <b>วันหมดอายุ : </b>' . Yii::$app->formatter->asDate($model->nutrition_expiration, 'php:d M Y');
                    //     },
                    // ],
                    // 'created_at:date',
                    // 'updated_at:date',
                    // [
                    //     'attribute' => 'created_by',
                    //     'format' => 'html',
                    //     'value' => function ($model) {
                    //         $user = $model->createdBy->thai_name;
                    //         return $user ? $model->createdBy->thai_name : $model->createdBy->username;
                    //     },
                    // ],
                    // [
                    //     'attribute' => 'updated_by',
                    //     'format' => 'html',
                    //     'value' => function ($model) {
                    //         $user = $model->createdBy->thai_name;
                    //         return $user ? $model->createdBy->thai_name : $model->createdBy->username;
                    //     },
                    // ],
                ],
            ]) ?>

        </div>
    </div>
</div>