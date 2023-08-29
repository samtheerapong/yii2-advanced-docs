<?php

use kartik\widgets\DatePicker;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var backend\models\AutoNumber $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="auto-number-form">

    <?php $form = ActiveForm::begin(); ?>
    <div class="card border-success">
        <div class="card-header text-white bg-success">
            <?= Html::encode($this->title) ?>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-4 mt-2">
                    <?= $form->field($model, 'group')->textInput(['maxlength' => true]) ?>
                </div>
                <div class="col-md-4 mt-2">
                    <?= $form->field($model, 'number')->textInput() ?>
                </div>
                <div class="col-md-4 mt-2">
                    <?= $form->field($model, 'optimistic_lock')->textInput() ?>
                </div>

            </div>
        </div>
        <div class="card-footer">
            <div class="row">
                <div class="form-group">
                    <div class="d-grid gap-2">
                        <?= Html::submitButton('<i class="fas fa-save"></i> ' . Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php ActiveForm::end(); ?>
</div>