<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var backend\modules\hrm\models\Employees $model */

$this->title = Yii::t('app', 'Create Employees');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Employees'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="employees-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'user' => $user,
    ]) ?>

</div>
