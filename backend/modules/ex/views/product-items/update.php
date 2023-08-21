<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\ex\models\ProductItems $model */

$this->title = Yii::t('app', 'Update Product Items: {name}', [
    'name' => $model->products_id,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Product Items'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->products_id, 'url' => ['view', 'products_id' => $model->products_id, 'items_id' => $model->items_id]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="product-items-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
