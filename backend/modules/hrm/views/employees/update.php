<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\hrm\models\Employees $model */

$this->title = Yii::t('app', 'Update Employees: {name}', [
    'name' => $model->employee_id,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Employees'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->employee_id, 'url' => ['view', 'employee_id' => $model->employee_id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="employees-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
