<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\models\AutoNumber $model */

$this->title = Yii::t('app', 'Create Auto Number');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Auto Numbers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="auto-number-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
