<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\qc\models\Rawmats $model */

$this->title = Yii::t('app', 'Create Rawmats');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Rawmats'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rawmats-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>