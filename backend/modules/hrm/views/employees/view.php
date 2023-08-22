<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var backend\modules\hrm\models\Employees $model */

$this->title = $model->employee_id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Employees'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="employees-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'employee_id' => $model->employee_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'employee_id' => $model->employee_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'employee_id',
            'user_id',
            'employee_code',
            'th_fname',
            'th_lname',
            'en_fname',
            'en_lname',
            'nickname',
            'phone',
            'photo:ntext',
            'files:ntext',
        ],
    ]) ?>

</div>
