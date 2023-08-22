<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var backend\modules\hrm\models\Employees $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="employees-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($user, 'username')->textInput() ?>
    <?= $form->field($user, 'password_hash')->textInput() ?>
    <?= $form->field($user, 'email')->textInput() ?>

    <?= $form->field($model, 'employee_code')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'th_fname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'th_lname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'en_fname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'en_lname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nickname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'phone')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'photo')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'files')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>