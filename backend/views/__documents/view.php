<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var backend\models\Documents $model */

$this->title = $model->numbers;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Documents'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="documents-view">

    <div style="display: flex; justify-content: space-between;">
        <p>
            <?= Html::a('<i class="fas fa-chevron-left"></i> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>

            <?= Html::a('<i class="fas fa-download"></i> ' . Yii::t('app', 'Download'), ['download', 'id' => $model->id], ['class' => 'btn btn-info']) ?>
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
                'attributes' => [
                    // 'id',
                    'numbers',
                    'title',
                    'description:ntext',
                    'created_at',
                    'updated_at',
                    'created_by',
                    'updated_by',
                    // 'categories_id',
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
                    // 'status_id',
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
                    'ref',
                    'files:ntext',
                    [
                        'attribute' => 'files',
                        'format' => 'html', 'value' => !$model->files ? '' : Html::a('ดาวน์โหลด', ['/documents/download', 'type' => 'files', 'id' => $model->id])
                    ],
                ],
            ]) ?>

        </div>
    </div>
</div>