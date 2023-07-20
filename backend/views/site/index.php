<?php

/** @var yii\web\View $this */

use yii\bootstrap5\Html;

$this->title = 'Documents Center';
?>
<div class="site-index">

    <div class="d-grid gap-2">
        
        <?= Html::a('<i class="fas fa-file"></i> ' . Yii::t('app', 'Documents'), ['documents/index'], ['class' => 'btn btn-primary btn-lg mt-2 mb-3']) ?>
    </div>

    <div class="col-md-12">
        <div class="alert alert-info">
            <center>สอบถามการใช้งาน โทร 31 มือถือ 087-087-3830 Line ID = sam-it </center>
            <p>
                <center><img src="https://portfoliotheerapong.web.app/assets/img/qrcode-line.jpg" alt="https://portfoliotheerapong.web.app/assets/img/qrcode-line.jpg" width="400"></center>
            </p>
        </div>

    </div>

</div>