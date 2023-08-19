<?php

/** @var yii\web\View $this */

use yii\bootstrap5\Html;

$this->title = 'Documents Center';
?>
<div class="site-index">

    <div class="alert alert-info">
        <div class="d-grid gap-2 m-2">
            <?= Html::a(Yii::t('app', 'Start App'), ['documents/index'], ['class' => 'btn btn-primary btn-block']) ?>
        </div>
        <center>สอบถามการใช้งาน โทร 087-087-3830 Line ID = sam-it </center>
        <p>
            <center><img src="https://portfoliotheerapong.web.app/assets/img/qrcode-line.jpg" alt="https://portfoliotheerapong.web.app/assets/img/qrcode-line.jpg" width="400"></center>
        </p>
    </div>


</div>


 <!-- <div class="card border-primary">
        <div class="card-header text-white bg-primary">
            Table
        </div>
        <div class="card-body">
            <div class="table-responsive">
            <?= GridView::widget([
                    'dataProvider' => $dataProviderDocuments,
                    'filterModel' => $searchModelDocuments,
                    'pager' => [
                        'class' => LinkPager::class,
                        'options' => ['class' => 'pagination justify-content-center m-1'],
                        'linkContainerOptions' => ['class' => 'page-item'],
                        'linkOptions' => ['class' => 'page-link'],
                    ],
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        [
                            'attribute' => 'categories_id',
                            'format' => 'raw',
                            'contentOptions' => ['class' => 'text-center'],
                            'options' => ['style' => 'width:120px;'],
                            'value' => fn ($model) => '<span class="badge" style="background-color:' . $model->categories->color . ';"><b>' . $model->categories->name . '</b></span>',
                            'filter' => Select2::widget([
                                'model' => $searchModelDocuments,
                                'attribute' => 'categories_id',
                                'data' => ArrayHelper::map(Categories::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => ['allowClear' => true],
                            ])
                        ],
                        [
                            'attribute' => 'title',
                            'format' => 'raw',
                            'value' => fn ($model) => mb_strimwidth($model->title, 0, 45, '...'),
                        ],
                        [
                            'attribute' => 'occupier_id',
                            'format' => 'raw',
                            'contentOptions' => ['class' => 'text-center'],
                            'options' => ['style' => 'width:80px;'],
                            'value' => fn ($model) => '<span class="badge" style="background-color:' . $model->occupier->color . ';"><b>' . $model->occupier->name . '</b></span>',
                            'filter' => Select2::widget([
                                'model' => $searchModelDocuments,
                                'attribute' => 'occupier_id',
                                'data' => ArrayHelper::map(Occupier::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => ['allowClear' => true],
                            ])
                        ],
                        [
                            'attribute' => 'supplier_name',
                            'format' => 'raw',
                            'value' => fn ($model) => $model->supplier_name,
                            'filter' => Select2::widget([
                                'model' => $searchModelDocuments,
                                'attribute' => 'supplier_name',
                                'data' => ArrayHelper::map(Documents::find()->select('supplier_name')->distinct()->all(), 'supplier_name', 'supplier_name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => ['allowClear' => true],
                            ])
                        ],
                        [
                            'attribute' => 'raw_material',
                            'format' => 'raw',
                            'contentOptions' => ['class' => 'text-center'],
                            'options' => ['style' => 'width:120px;'],
                            'value' => fn ($model) => '<span class="badge" style="background-color:' . $model->rawMaterial->color . ';"><b>' . $model->rawMaterial->name . '</b></span>',
                            'filter' => Select2::widget([
                                'model' => $searchModelDocuments,
                                'attribute' => 'raw_material',
                                'data' => ArrayHelper::map(RawMaterial::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => ['allowClear' => true],
                            ])
                        ],
                        [
                            'attribute' => 'types_id',
                            'format' => 'raw',
                            'contentOptions' => ['class' => 'text-center'],
                            'options' => ['style' => 'width:100px;'],
                            'value' => fn ($model) => '<span class="badge" style="background-color:' . $model->types->color . ';"><b>' . $model->types->name . '</b></span>',
                            'filter' => Select2::widget([
                                'model' => $searchModelDocuments,
                                'attribute' => 'types_id',
                                'data' => ArrayHelper::map(Types::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => ['allowClear' => true],
                            ])
                        ],
                        [
                            'attribute' => 'status_id',
                            'format' => 'raw',
                            'contentOptions' => ['class' => 'text-center'],
                            'options' => ['style' => 'width:100px;'],
                            'value' => fn ($model) => '<span class="badge" style="background-color:' . $model->status->color . ';"><b>' . $model->status->name . '</b></span>',
                            'filter' => Select2::widget([
                                'model' => $searchModelDocuments,
                                'attribute' => 'status_id',
                                'data' => ArrayHelper::map(Status::find()->all(), 'id', 'name'),
                                'options' => ['placeholder' => Yii::t('app', 'Select...')],
                                'language' => 'th',
                                'pluginOptions' => ['allowClear' => true],
                            ])
                        ],
                        [
                            'attribute' => 'expiration_date',
                            'label' => Yii::t('app', 'Days left'),
                            'options' => ['style' => 'width:80px;'],
                            'contentOptions' => ['class' => 'text-center'],
                            'format' => 'raw',
                            'value' => fn ($model) => $model->getDaysToExpirationValue(),
                            'filter' => false
                        ],
                    ],
                ]); ?>
            </div>
        </div>
    </div> -->