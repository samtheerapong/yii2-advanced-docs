<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var backend\modules\product\models\ProductSpec $model */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Product Specs'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="product-spec-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
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
            'id',
            'title',
            // 'files:ntext',
            [
                'attribute' => 'files',
                'format' => 'raw',
                'value' => call_user_func(function ($data) {
                    $files = null;
                    if ($data->files) {
                        foreach ($data->getFiles() as $key => $value) {
                            // $files .= Html::a('<i class="fa fa-trash"></i>', ['delete-file', 'id' => $data->id, 'file' => $value], ['class' => 'btn btn-xs btn-danger', 'data' => ['confirm' => 'แน่ใจนะว่าต้องการลบ?', 'method' => 'post']]).' '.
                            // Html::a($value, Url::to(Yii::getAlias('@web').'/'.$data->uploadFilesFolder.'/'.$value), ['target' => '_blank']).'<br />';
                            $files .= '<div><li>' . Html::a($value, Url::to(Yii::getAlias('@web') . '/' . $data->uploadFilesFolder . '/' . $value), ['target' => '_blank']) . '<br /></li></div>';
                        }
                        return $files;
                    } else {
                        return null;
                    }
                }, $model),
            ],
            [
                'attribute' => 'spec',
                'format' => 'raw',
                'value' => call_user_func(function ($data) {
                    $specs = null;
                    if ($data->spec) {
                        foreach ($data->getFilesSpec() as $key => $value) {
                            $specs .= '<div><li>' . Html::a($value, Url::to(Yii::getAlias('@web') . '/' . $data->uploadFilesFolderSpec . '/' . $value), ['target' => '_blank']) . '<br /></li></div>';
                        }
                        return $specs;
                    } else {
                        return null;
                    }
                }, $model),
            ],
            [
                'attribute' => 'fda',
                'format' => 'raw',
                'value' => call_user_func(function ($data) {
                    $fdas = null;
                    if ($data->fda) {
                        foreach ($data->getFilesfda() as $key => $value) {
                            $fdas .= '<div><li>' . Html::a($value, Url::to(Yii::getAlias('@web') . '/' . $data->uploadFilesFolderFda . '/' . $value), ['target' => '_blank']) . '<br /></li></div>';
                        }
                        return $fdas;
                    } else {
                        return null;
                    }
                }, $model),
            ],
            [
                'attribute' => 'nutrition',
                'format' => 'raw',
                'value' => call_user_func(function ($data) {
                    $nutritions = null;
                    if ($data->nutrition) {
                        foreach ($data->getFilesNutrition() as $key => $value) {
                            $nutritions .= '<div><li>' . Html::a($value, Url::to(Yii::getAlias('@web') . '/' . $data->uploadFilesFolderNutrition . '/' . $value), ['target' => '_blank']) . '<br /></li></div>';
                        }
                        return $nutritions;
                    } else {
                        return null;
                    }
                }, $model),
            ]
        ],
    ]) ?>

</div>