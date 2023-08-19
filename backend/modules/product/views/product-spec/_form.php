<?php

use kartik\widgets\DatePicker;
use kartik\widgets\FileInput;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/** @var yii\web\View $this */
/** @var backend\modules\product\models\ProductSpec $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="product-spec-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>
    <div class="card border-secondary">
        <div class="card-header text-white bg-secondary">
            <?= Html::encode($this->title) ?>
        </div>
        <div class="card-body">

            <?= $form->field($model, 'product_number')->hiddenInput()->label(false); ?>

            <div class="row">
                <div class="col-md-6 mb-2">
                    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
                </div>
                <div class="col-md-2 mb-2">
                    <?= $form->field($model, 'revision')->textInput(['maxlength' => true]) ?>
                </div>
                <div class="col-md-4 mb-2">
                    <?= $form->field($model, 'revised_date')->widget(
                        DatePicker::class,
                        [
                            'language' => 'th',
                            'options' => [
                                'placeholder' => Yii::t('app', 'Select...'),
                                // 'required' => true,
                            ],
                            'pluginOptions' => [
                                'format' => 'yyyy-mm-dd',
                                'todayHighlight' => true,
                                'autoclose' => true,
                            ]
                        ]
                    ); ?>
                </div>
                <div class="col-md-12 mb-2">
                    <?= $form->field($model, 'description')->textarea(['rows' => 2]) ?>
                </div>
                <div class="col-md-12 mb-2">
                    <?= $form->field($model, 'iso_cert')->textInput(['maxlength' => true]) ?>
                </div>
            </div>
        </div>


        <div class="card-header text-white bg-info">
            <?= Yii::t('app', 'Uploads') ?>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-8 mb-2">
                    <?= $form->field($model, 'spec[]')->widget(FileInput::class, [
                        'options' => [
                            'multiple' => true
                        ],
                        'pluginOptions' => [
                            'showPreview' => false,
                        ]
                    ]); ?>
                </div>
                <div class="col-md-4 mb-2">
                    <?= $form->field($model, 'spec_expiration')->widget(
                        DatePicker::class,
                        [
                            'language' => 'th',
                            'options' => [
                                'placeholder' => Yii::t('app', 'Select...'),
                                // 'required' => true,
                            ],
                            'pluginOptions' => [
                                'format' => 'yyyy-mm-dd',
                                'todayHighlight' => true,
                                'autoclose' => true,
                            ]
                        ]
                    ); ?>
                </div>

                <div class="col-md-8 mb-2">
                    <?= $form->field($model, 'process[]')->widget(FileInput::class, [
                        'options' => [
                            'multiple' => true
                        ],
                        'pluginOptions' => [
                            'showPreview' => false,
                        ]
                    ]); ?>
                </div>
                <div class="col-md-4 mb-2">
                    <?= $form->field($model, 'process_expiration')->widget(
                        DatePicker::class,
                        [
                            'language' => 'th',
                            'options' => [
                                'placeholder' => Yii::t('app', 'Select...'),
                                // 'required' => true,
                            ],
                            'pluginOptions' => [
                                'format' => 'yyyy-mm-dd',
                                'todayHighlight' => true,
                                'autoclose' => true,
                            ]
                        ]
                    ); ?>
                </div>

                <div class="col-md-8 mb-2">
                    <?= $form->field($model, 'fda[]')->widget(FileInput::class, [
                        'options' => [
                            'multiple' => true
                        ],
                        'pluginOptions' => [
                            'showPreview' => false,
                        ]
                    ]); ?>
                </div>
                <div class="col-md-4 mb-2">
                    <?= $form->field($model, 'fda_expiration')->widget(
                        DatePicker::class,
                        [
                            'language' => 'th',
                            'options' => [
                                'placeholder' => Yii::t('app', 'Select...'),
                                // 'required' => true,
                            ],
                            'pluginOptions' => [
                                'format' => 'yyyy-mm-dd',
                                'todayHighlight' => true,
                                'autoclose' => true,
                            ]
                        ]
                    ); ?>
                </div>

                <div class="col-md-8 mb-2">
                    <?= $form->field($model, 'nutrition[]')->widget(FileInput::class, [
                        'options' => [
                            'multiple' => true
                        ],
                        'pluginOptions' => [
                            'showPreview' => false,

                        ]
                    ]); ?>
                </div>
                <div class="col-md-4 mb-2">
                    <?= $form->field($model, 'nutrition_expiration')->widget(
                        DatePicker::class,
                        [
                            'language' => 'th',
                            'options' => [
                                'placeholder' => Yii::t('app', 'Select...'),
                                // 'required' => true,
                            ],
                            'pluginOptions' => [
                                'format' => 'yyyy-mm-dd',
                                'todayHighlight' => true,
                                'autoclose' => true,
                            ]
                        ]
                    ); ?>
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