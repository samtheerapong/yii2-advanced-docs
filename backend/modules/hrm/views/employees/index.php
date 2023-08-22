<?php

use backend\modules\hrm\models\Employees;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var backend\modules\hrm\models\EmployeesSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = Yii::t('app', 'Employees');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="employees-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Employees'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'employee_id',
            'user_id',
            'employee_code',
            'th_fname',
            'th_lname',
            //'en_fname',
            //'en_lname',
            //'nickname',
            //'phone',
            //'photo:ntext',
            //'files:ntext',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Employees $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'employee_id' => $model->employee_id]);
                 }
            ],
        ],
    ]); ?>


</div>
