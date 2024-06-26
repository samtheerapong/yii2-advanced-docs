<?php

use backend\assets\AppAsset;
use common\widgets\Alert;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Nav;
use yii\bootstrap5\NavBar;
use yii\helpers\Html;
use yii\helpers\Url;

AppAsset::register($this);
$this->beginPage();
$this->registerCssFile('https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@500&family=Kanit&family=Sriracha&family=Sarabun:wght@500&display=swap');
?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Application For Northernfood complex">
    <meta name="author" content="Theerapong Khanta">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="refresh" content="360">
    <?= $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head(); ?>
</head>

<body class="d-flex flex-column h-100">
    <?php $this->beginBody(); ?>
    <header>
        <?php
        NavBar::begin([
            'brandLabel' => Html::img(Yii::getAlias('@web') . '/images/logo.png', ['class' => 'img-fluid', 'width' => '50px']),
            'brandUrl' => Yii::$app->homeUrl,
            'options' => ['class' => 'navbar navbar-expand-md navbar-dark bg-dark fixed-top'],
        ]);
        $menuItems = [
            // ['label' => Yii::t('app', 'Documents Center'), 'url' => ['/documents/index']],
            [
                'label' => Yii::t('app', 'Documents Center'),
                'items' => [
                    ['label' => Yii::t('app', 'Documents Center'), 'url' => ['/documents/index']],
                    ['label' => Yii::t('app', 'Documents Expiring Soon'), 'url' => ['/documents/show-wanning']],
                    ['label' => Yii::t('app', 'Configuration'), 'url' => ['/documents/configs']],
                ],
            ],
            [
                'label' => Yii::t('app', 'Product Spec'),
                'items' => [
                    ['label' => Yii::t('app', 'Product Spec'), 'url' => ['/qc/products/index']],
                    ['label' => Yii::t('app', 'Configuration'), 'url' => ['/qc/products/configs']],
                ],
            ],
            [
                'label' => Yii::t('app', 'Raw Material'),
                'items' => [
                    ['label' => Yii::t('app', 'Raw Material'), 'url' => ['/qc/rawmats/index']],
                    ['label' => Yii::t('app', 'Configuration'), 'url' => ['/qc/rawmats/configs']],
                ],
            ],


        ];
        echo Nav::widget([
            'options' => ['class' => 'navbar-nav me-auto mb-2 mb-md-0'],
            'items' => $menuItems,
        ]);
        if (Yii::$app->user->isGuest) {
            echo Html::tag('div', Html::a(Yii::t('app', 'Register'), ['../../frontend/web/site/signup'], ['class' => 'btn btn-link signup text-decoration-none']), ['class' => 'd-flex']);
            echo Html::tag('div', Html::a(Yii::t('app', 'Login'), ['/site/login'], ['class' => 'btn btn-danger']), ['class' => 'd-flex']);
        } else {
            $nameToDisplay = Yii::$app->user->identity->thai_name ?: Yii::$app->user->identity->username;
            $menuItems = [
                [
                    'label' => Yii::t('app', 'Configuration'),
                    'visible' => in_array(Yii::$app->user->identity->username, ['admin', 'phitchai']),
                    'items' => [
                        [
                            'label' => Yii::t('app', 'Auto Number'),
                            'visible' => in_array(Yii::$app->user->identity->username, ['admin']),
                            'url' => ['/auto-number/index'],
                        ],
                        [
                            'label' => Yii::t('app', 'Profile'),
                            'url' => ['/user/view', 'id' => Yii::$app->user->identity->id],
                        ],
                        [
                            'label' => Yii::t('app', 'Users'),
                            'url' => ['/user/index'],
                        ],
                    ],
                ],
                [
                    'label' => Yii::$app->language == 'th-TH' ? 'TH' : 'EN',
                    'url' => Url::current(['language' => Yii::$app->language == 'th-TH' ? 'en-US' : 'th-TH']),
                    'linkOptions' => ['class' => 'active'],
                ],
                [
                    'label' => "( $nameToDisplay )",
                    'items' => [
                        ['label' => Yii::t('app', 'Logout'), 'url' => ['/site/logout'], 'linkOptions' => ['class' => 'logout-link', 'data-method' => 'post']],
                    ],
                ],
            ];
            echo Nav::widget([
                'options' => ['class' => 'navbar-nav ml-auto'],
                'items' => $menuItems,
            ]);
        }
        NavBar::end();
        ?>

    </header>
    <main role="main" class="flex-shrink-0">
        <div class="container">
            <?= Breadcrumbs::widget(['links' => $this->params['breadcrumbs'] ?? []]) ?>
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>
    </main>
    <footer class="footer mt-auto py-3 text-muted">
        <div class="container">


            <p class="float-start"> Document Online System (DOS) &copy; NFC <?= date('Y') ?></p>
            &nbsp; IT Department
            <span>
                <?= Html::a(
                    Html::img(Yii::getAlias('@web') . '/images/thai.png', ['class' => 'img-fluid', 'width' => '20px']),
                    Url::current(['language' => 'th-TH']),
                    ['class' => (Yii::$app->request->cookies->getValue('language') == 'th-TH' ? 'active' : '')]
                ); ?>


                <?= Html::a(
                    Html::img(Yii::getAlias('@web') . '/images/en.png', ['class' => 'img-fluid', 'width' => '20px']),
                    Url::current(['language' => 'en-US']),
                    ['class' => (Yii::$app->request->cookies['language'] == 'en-US' ? 'active' : '')]
                ); ?>
            </span>
            <p class="float-end">Version 1.1.1</p>
        </div>
    </footer>
    <?php $this->endBody(); ?>
</body>

</html>
<?php $this->endPage(); ?>