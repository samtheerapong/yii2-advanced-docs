<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var backend\models\AutoNumber $model */

$this->title = $model->group;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Auto Numbers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="auto-number-view">
    <div style="display: flex; justify-content: space-between;">
        <p>
            <?= Html::a('<i class="fas fa-chevron-left"></i> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
            <?= Html::button('<i class="fas fa-share"></i> ' . Yii::t('app', 'Share'), ['class' => 'btn btn-success', 'id' => 'copy-button']) ?>
        </p>

        <p style="text-align: right;">

            <?= Html::a('<i class="fas fa-edit"></i> ' . Yii::t('app', 'Update'), ['update', 'group' => $model->group], ['class' => 'btn btn-warning']) ?>

            <?= Html::a('<i class="fas fa-trash"></i> ' . Yii::t('app', 'Delete'), ['delete', 'group' => $model->group], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                    'method' => 'post',
                ],
            ]) ?>
        </p>
    </div>
    <div class="card border-success">
        <div class="card-header text-white bg-success">
            <?= Html::encode($this->title) ?>
        </div>

        <div id="PrintThis">

            <div class="card-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'template' => '<tr><th style="width: 300px;">{label}</th><td> {value}</td></tr>',
                    'attributes' => [
                        'group',
                        'number',
                        'optimistic_lock',
                        'update_time:datetime',
                    ],
                ]) ?>

            </div>

        </div>
    </div>
</div>