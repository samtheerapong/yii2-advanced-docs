<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\ex\models\ProductItems $model */

$this->title = Yii::t('app', 'Create Product Items');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Product Items'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-items-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
