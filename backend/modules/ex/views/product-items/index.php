<?php

use backend\modules\ex\models\ProductItems;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var backend\modules\ex\models\ProductItemsSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = Yii::t('app', 'Product Items');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-items-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Create Product Items'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'products_id',
            'items_id',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, ProductItems $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'products_id' => $model->products_id, 'items_id' => $model->items_id]);
                 }
            ],
        ],
    ]); ?>


</div>
