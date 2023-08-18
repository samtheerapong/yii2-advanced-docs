<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\models\RawMaterial $model */

$this->title = Yii::t('app', 'Create Raw Material');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Raw Materials'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="raw-material-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
