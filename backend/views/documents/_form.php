<?php

use backend\models\Categories;
use backend\models\Status;
use kartik\widgets\Select2;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\FileInput;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;

/** @var yii\web\View $this */
/** @var backend\models\Documents $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="documents-form">


    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <div class="card border-secondary">
        <div class="card-header text-white bg-secondary">
            <?= Html::encode($this->title) ?>
        </div>
        <div class="card-body">
            <div class="row">

                <div class="col-md-12" style="display: none;">
                    <?= $form->field($model, 'numbers')->textInput(['maxlength' => true, 'disabled' => true]) ?>
                </div>

                <div class="col-md-12">
                    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
                </div>

                <div class="col-md-12">
                    <?= $form->field($model, 'description')->textarea(['rows' => 2]) ?>
                </div>

                <div class="col-md-6">
                    <?= $form->field($model, 'ref')->textInput(['maxlength' => true]) ?>
                </div>

                <div class="col-md-3">
                    <?= $form->field($model, 'categories_id')->widget(Select2::class, [
                        'language' => 'th',
                        'data' => ArrayHelper::map(Categories::find()->all(), 'id', 'name'),
                        'options' => ['placeholder' => Yii::t('app', 'Select...')],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]);
                    ?>
                </div>

                <div class="col-md-3">
                    <?= $form->field($model, 'status_id')->widget(Select2::class, [
                        'language' => 'th',
                        'data' => ArrayHelper::map(Status::find()->all(), 'id', 'name'),
                        'options' => ['placeholder' => Yii::t('app', 'Select...')],
                        'pluginOptions' => [
                            'showUpload' => false, // Hide the upload button
                            'allowedFileExtensions' => ['pdf'], // Allow these file extensions
                            'allowedFileTypes' => ['pdf'], // Allow only images and pdf files
                        ],
                    ]);
                    ?>
                </div>

                <div class="col-md-12">
                    <?= $form->field($model, 'pdf_file')->widget(FileInput::classname(), [
                        'options' => ['multiple' => false], // Allow selecting multiple files (if needed)
                        'pluginOptions' => ['previewFileType' => 'any']
                    ]); ?>
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