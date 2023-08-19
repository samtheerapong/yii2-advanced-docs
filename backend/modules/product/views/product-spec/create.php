<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\product\models\ProductSpec $model */

$this->title = Yii::t('app', 'Create Data');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Product Spec'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-spec-create">

<p>
        <?= Html::a('<i class="fa fa-chevron-left"></i> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
    </p>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
