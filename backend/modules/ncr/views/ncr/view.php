<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
// use kartik\detail\DetailView;
use dosamigos\gallery\Gallery;

//
use app\modules\sam\models\NcrStatus;
use app\modules\sam\models\Department;
use app\models\Uploads;
use yii2assets\printthis\PrintThis;

/* @var $this yii\web\View */
/* @var $model app\models\PhotoLibrary */

$this->title = $model->ncr_number;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'NCR'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ncr-view">
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
                    [
                        'attribute' => 'status',
                        'format' => 'html',
                        'value' => function ($model) {
                            return '<span class="badge" style="background-color:'
                                . $model->ncrStatus->color . ';">'
                                . $model->ncrStatus->details
                                . '</span>';
                        },
                    ],
                    'ncr_number', //เลขที่ NCR
                    'created_at:date',
                    // 'to_department',
                    [
                        'attribute' => 'to_department',
                        'value' => function ($model) {
                            return $model->todepartmentName;
                        }
                    ],
                    [
                        'attribute' => 'problem',
                        'value' => function ($model) {
                            return $model->problemName;
                        }
                    ],
                    'lot',
                    'production_date',
                    'product_name',
                    'customer_name',
                    'detail:ntext',
                    [
                        'attribute' => 'from_department',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->fromDepartment->details;
                        },
                    ],
                    'notify_by',
                    'proplem_date:date',
                    'recheck',
                    [
                        'attribute' => 'images',
                        'format' => 'raw',
                        'value' => function ($model) {
                            return Gallery::widget(['items' => $model->getThumbnails($model->ref, $model->ncr_number)]);
                        },
                    ],
                    // [
                    //     'attribute' => 'images',
                    //     'format' => 'raw',
                    //     'value' => function ($model) {
                    //         return $model->renderGallery($model);
                    //     },
                    // ],

                    // 'updated_at:date',
                    // 'customer_mobile_phone',
                    // 'location',
                    // 'start_date:date',
                    // 'end_date:date',
                ],
            ]) ?>
        </div>
    </div>
</div>