<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\ex\models\Items $model */

$this->title = Yii::t('app', 'Create Items');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Items'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="items-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
