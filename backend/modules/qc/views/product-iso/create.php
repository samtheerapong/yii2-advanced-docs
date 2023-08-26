<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\qc\models\ProductIso $model */

$this->title = Yii::t('app', 'Create Product Iso');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Product Isos'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-iso-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
