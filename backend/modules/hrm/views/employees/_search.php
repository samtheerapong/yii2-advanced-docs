<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var backend\modules\hrm\models\EmployeesSearch $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="employees-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'employee_id') ?>

    <?= $form->field($model, 'user_id') ?>

    <?= $form->field($model, 'employee_code') ?>

    <?= $form->field($model, 'th_fname') ?>

    <?= $form->field($model, 'th_lname') ?>

    <?php // echo $form->field($model, 'en_fname') ?>

    <?php // echo $form->field($model, 'en_lname') ?>

    <?php // echo $form->field($model, 'nickname') ?>

    <?php // echo $form->field($model, 'phone') ?>

    <?php // echo $form->field($model, 'photo') ?>

    <?php // echo $form->field($model, 'files') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
