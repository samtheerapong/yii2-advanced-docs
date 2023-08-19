<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\models\Occupier $model */

$this->title = Yii::t('app', 'Create Occupier');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Occupiers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="occupier-create">
    <p>
        <?= Html::a('<i class="fa fa-chevron-left"></i> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
    </p>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>