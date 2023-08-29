<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\models\AutoNumber $model */

$this->title = Yii::t('app', 'Update Auto Number: {name}', [
    'name' => $model->group,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Auto Numbers'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->group, 'url' => ['view', 'group' => $model->group]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="auto-number-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
