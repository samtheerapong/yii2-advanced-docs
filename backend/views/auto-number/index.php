<?php

use backend\models\AutoNumber;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use kartik\grid\GridView;

/** @var yii\web\View $this */
/** @var backend\models\AutoNumberSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = Yii::t('app', 'Auto Number');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="auto-number-index">
    <div style="display: flex; justify-content: space-between;">
        <div class="mb-3"> <?= Html::a('<i class="fa fa-plus"></i> ' . Yii::t('app', 'Create Data'), ['create'], ['class' => 'btn btn-danger']) ?></div>
        <div class="mb-3" style="text-align: right;">


        </div>
    </div>
    <div class="card border-success">
        <div class="card-header text-white bg-success">
            <?= Html::encode($this->title) ?>
        </div>
        <div class="card-body">
            <?= GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],

                    'group',
                    'number',
                    'optimistic_lock',
                    'update_time:datetime',
                    [
                        'class' => 'kartik\grid\ActionColumn',
                        'contentOptions' => ['class' => 'text-center'],
                        // 'buttonOptions' => ['class' => 'btn btn-sm btn-outline-primary btn-group'],
                        'buttonOptions' => ['class' => 'btn btn-outline-dark btn-sm'],
                        'template' => '<div class="btn-group btn-group-xs" role="group"> {view} {update} {delete}</div>',
                        'urlCreator' => function ($action, $model, $key, $index, $column) {
                            return Url::toRoute([$action, 'group' => $model->group]);
                        }
                    ],
                ],
            ]); ?>


        </div>
    </div>
</div>