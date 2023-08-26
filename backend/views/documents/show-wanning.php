<?php

use yii\helpers\Html;

$this->title = Yii::t('app', 'Documents Expiring Soon');
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="documents-show-wanning">

    <div style="display: flex; justify-content: space-between;">
        <p>
            <?= Html::a('<i class="fas fa-chevron-left"></i> ' . Yii::t('app', 'Go Back'), ['index'], ['class' => 'btn btn-primary']) ?>
            <?= Html::button('<i class="fas fa-share"></i> ' . Yii::t('app', 'Share'), ['class' => 'btn btn-secondary', 'id' => 'copy-button']) ?>
        </p>


    </div>

    <?php $currentUrl = Yii::$app->request->absoluteUrl; ?>
    <script>
        document.getElementById('copy-button').addEventListener('click', function() {
            var textArea = document.createElement('textarea');
            textArea.value = '<?= $currentUrl ?>';
            document.body.appendChild(textArea);
            textArea.select();
            try {
                document.execCommand('copy');
                alert('URL copied to clipboard.');
            } catch (err) {
                console.error('Unable to copy URL: ', err);
            }
            document.body.removeChild(textArea);
        });
    </script>

    <div class="card border-danger">
        <div class="card-header text-white bg-danger">
            <?= Html::encode($this->title) ?>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <?php if (!empty($documents)) : ?>

                    <table class="kv-grid-table table table-bordered table-striped kv-table-wrap">
                        <thead>
                            <tr>
                                <th><?= Yii::t('app', 'Categories') ?></th>
                                <th><?= Yii::t('app', 'Title') ?></th>
                                <th><?= Yii::t('app', 'Categories') ?></th>
                                <th><?= Yii::t('app', 'Supplier Name') ?></th>
                                <th><?= Yii::t('app', 'Raw Material') ?></th>
                                <th><?= Yii::t('app', 'Types') ?></th>
                                <th><?= Yii::t('app', 'Expiration') ?></th>
                                <th class="kv-align-middle skip-export kv-merged-header"> <?= Yii::t('app', 'Actions') ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($documents as $document) : ?>
                                <tr>
                                    <td style="width:120px;" class="text-center"><?= '<span class="badge" style="background-color:' . $document->categories->color . ';"><b>' . $document->categories->name . '</b></span>' ?></td>
                                    <td style="width:300px;"><?= Html::encode($document->title) ?></td>
                                    <td style="width:100px;" class="text-center"><?= '<span class="badge" style="background-color:' . $document->occupier->color . ';"><b>' . $document->occupier->name . '</b></span>' ?></td>
                                    <td style="width:200px;"><?= Html::encode($document->supplier_name) ?></td>
                                    <td style="width:120px;" class="text-center"><?= '<span class="badge" style="background-color:' . $document->rawMaterial->color . ';"><b>' . $document->rawMaterial->name . '</b></span>' ?></td>
                                    <td style="width:100px;" class="text-center"><?= '<span class="badge" style="background-color:' . $document->types->color . ';"><b>' . $document->types->name . '</b></span>' ?></td>
                                    <td style="width:200px;"><?= Yii::$app->formatter->asDate($document->expiration_date, 'php:d M Y') .
                                                                    ' <span class="badge" style="background-color: ' . ($document->getDaysToExpiration() < $document->document_date ? 'red' : 'green') . ';">' . $document->getDaysToExpiration() . ' days left</span>' ?></td>
                                    <td class="text-center skip-export kv-align-center kv-align-middle w4" style="width:90px;" data-col-seq="9">
                                        <div class="btn-group btn-group-xs" role="group">
                                            <a class="btn btn-outline-danger btn-sm" href="/backend/web/documents/<?= Html::encode($document->id) ?>" title="ดู" aria-label="ดู" data-pjax="0"><span class="fas fa-eye" aria-hidden="true"></span></a>
                                            <a class="btn btn-outline-danger btn-sm" href="/backend/web/documents/update/<?= Html::encode($document->id) ?>" title="ปรับปรุง" aria-label="ปรับปรุง" data-pjax="0"><span class="fas fa-pencil-alt" aria-hidden="true"></span></a>
                                        </div>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                <?php else : ?>
                    <p>No documents found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <div class="row mt-2">
        <p><b><u><?= Yii::t('app', 'Note') ?></u></b> <?= Yii::t('app', 'Show documents less than 60 days old') ?></p>
    </div>

</div>