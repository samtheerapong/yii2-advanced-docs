<?php

use backend\modules\product\models\ProductSpec;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var backend\modules\product\models\ProductSpecSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = Yii::t('app', 'Product Specs');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-spec-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Product Spec'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); 
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            
            [
                'attribute' => 'product_number',
                'format' => 'html',
                'options' => ['style' => 'width:200px;'],
                'value' => function ($model) {
                    return Html::a($model->product_number, ['view', 'id' => $model->id]);
                },
            ],
            [
                'attribute' => 'revision',
                'format' => 'html',
                'options' => ['style' => 'width:50px;'],
                'value' => function ($model) {
                    return Html::a($model->revision, ['view', 'id' => $model->id]);
                },
            ],
            [
                'attribute' => 'title',
                'format' => 'html',
                'options' => ['style' => 'width:auto;'],
                'value' => function ($model) {
                    return Html::a($model->title, ['view', 'id' => $model->id]);
                },
            ],
            'iso_cert',
            [
                'class' => ActionColumn::class,
                'urlCreator' => function ($action, ProductSpec $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                }
            ],
        ],
    ]); ?>


</div>