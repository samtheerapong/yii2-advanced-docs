<?php

use backend\modules\ncr\models\Department;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use kartik\grid\GridView;

use yii\helpers\ArrayHelper;
use backend\modules\ncr\models\NcrStatus;
use backend\modules\ncr\models\Problem;
use kartik\export\ExportMenu;

$this->title = Yii::t('app', 'NCR');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ncr-index">

    <!-- <?php echo $this->render('_search', ['model' => $searchModel]); ?> -->
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
        <div class="card-body">
            <?= GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],

                    // 'ncr_number',
                    [
                        'attribute' => 'ncr_number',
                        'format' => 'html',
                        'options' => ['style' => 'width:150px;'],
                        'value' => function ($model) {
                            return $model->ncr_number;
                        }
                    ],
                    // 'created_at:date',
                    [
                        'attribute' => 'created_at',
                        'format' => 'html',
                        'options' => ['style' => 'width:120px;'],
                        'value' => function ($model) {
                            return Yii::$app->formatter->asDate($model->created_at, 'medium');
                        }
                    ],
                    // 'to_department',

                    [
                        'attribute' => 'to_department',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->todepartmentName;
                        },
                        'filter' => Html::activeDropDownList($searchModel, 'to_department', ArrayHelper::map(Department::find()->all(), 'department_id', 'details'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])
                    ],



                    // 'problem',
                    [
                        'attribute' => 'problem',
                        'format' => 'html',
                        'value' => function ($model) {
                            return $model->problemName;
                        },
                        'filter' => Html::activeDropDownList($searchModel, 'problem', ArrayHelper::map(Problem::find()->all(), 'problem_id', 'name'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])
                    ],
                    // 'lot',
                    // 'production_date',
                    'product_name',
                    // 'customer_name',
                    // 'detail:ntext',

                    // [
                    //     'attribute'=>'from_department',
                    //     'value'=>function($model){
                    //         return $model->fromDepartment->details;
                    //     },
                    //     'filter' => Html::activeDropDownList($searchModel, 'from_department', ArrayHelper::map(Department::find()->all(), 'department_id', 'details'), ['class' => 'form-control', 'prompt' => 'ทั้งหมด...'])
                    //   ],
                    // [
                    //     'attribute' => 'from_department',
                    //     'format' => 'html',
                    //     'value' => function ($model) {
                    //         return $model->fromDpartment->details;
                    //     },
                    // ],
                    // 'status',
                    [
                        'attribute' => 'status',
                        'format' => 'html',
                        'contentOptions' => ['class' => 'text-center'],
                        'options' => ['style' => 'width:120px;'],
                        'value' => function ($model) {
                            return '<span class="badge text-white" style="background-color:' . $model->ncrStatus->color . ';">' . $model->ncrStatus->details . '</span>';
                        },
                        'filter' => Html::activeDropDownList(
                            $searchModel,
                            'status',
                            ArrayHelper::map(NcrStatus::find()->all(), 'id', 'details'),
                            [
                                'class' => 'form-control',
                                'prompt' => 'ทั้งหมด...'
                            ]
                        )

                    ],
                    // 'notify_by',
                    // 'proplem_date:date',
                    // 'recheck',

                    // 'customer_mobile_phone',

                    [
                        'class' => 'kartik\grid\ActionColumn',
                        'options' => ['style' => 'width:120px;'],
                        'buttonOptions' => ['class' => 'btn btn-outline-dark btn-sm'],
                        'template' => '<div class="btn-group btn-group-xs" role="group"> {view} {update} {delete}</div>',
                        'urlCreator' => function ($action, $model, $key, $index, $column) {
                            return Url::toRoute([$action, 'id' => $model->id]);
                        }
                    ],
                ],
            ]); ?>
        </div>
    </div>
</div>