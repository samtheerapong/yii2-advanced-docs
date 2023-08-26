<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\qc\models\ProductStatus $model */

$this->title = Yii::t('app', 'Create Product Status');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Product Statuses'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-status-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
