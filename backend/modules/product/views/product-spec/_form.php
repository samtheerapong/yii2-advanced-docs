<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var backend\modules\product\models\ProductSpec $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="product-spec-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'files[]')->fileInput(['multiple' => true]) ?>
    <?= $form->field($model, 'spec[]')->fileInput(['multiple' => true]) ?>
    <?= $form->field($model, 'fda[]')->fileInput(['multiple' => true]) ?>
    <?= $form->field($model, 'nutrition[]')->fileInput(['multiple' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>