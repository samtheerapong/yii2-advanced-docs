<?php

/** @var \yii\web\View $this */
/** @var string $content */

use backend\assets\AppAsset;
use common\widgets\Alert;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;
use yii\bootstrap5\Nav;
use yii\bootstrap5\NavBar;
use yii\helpers\Url;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>

<body class="d-flex flex-column h-100">
    <?php $this->beginBody() ?>

    <header>
        <?php
        NavBar::begin([
            'brandLabel' => Yii::$app->name,
            'brandUrl' => Yii::$app->homeUrl,
            'options' => [
                'class' => 'navbar navbar-expand-md navbar-dark bg-dark fixed-top',
            ],
        ]);
        $menuItems = [
            [
                'label' => Yii::t('app', 'Documents Center'),
                // 'linkOptions' => ['class' => 'logout-link'],
                'url' => ['documents/index']
            ],
        ];

        echo Nav::widget([
            'options' => ['class' => 'navbar-nav me-auto mb-2 mb-md-0'],
            'items' => $menuItems,
        ]);
        if (Yii::$app->user->isGuest) {
            echo Html::tag(
                'div',
                Html::a(
                    Yii::t('app', 'Register'),
                    ['../../frontend/web/site/signup'], // Assuming 'site/signup' is the route to the signup page
                    ['class' => 'btn btn-primary'] // Setting the link class to 'btn-primary'
                ),
                ['class' => 'd-flex']
            );
            echo Html::tag('div', Html::a(Yii::t('app', 'Login'), ['/site/login'], ['class' => ['btn btn-link login text-decoration-none']]), ['class' => ['d-flex']]);
        } else {
            $nameToDisplay = Yii::$app->user->identity->thai_name ? Yii::$app->user->identity->thai_name : Yii::$app->user->identity->username;
            $menuItems = [

                ['label' => Yii::t('app', 'Categories'), 'url' => ['categories/index']],
                ['label' => Yii::t('app', 'Statuses'), 'url' => ['status/index']],
                ['label' => Yii::t('app', 'Types'), 'url' => ['types/index']],
                ['label' => Yii::t('app', 'Users'), 'url' => ['user/index']],

                [
                    'label' => '( ' . $nameToDisplay . ' )',
                    'items' => [
                        ['label' => Yii::t('app', 'Profile'), 'url' => [' ']],
                        // ['label' => Yii::t('app', 'Statuses'), 'url' => ['status/index']],
                        // ['label' => Yii::t('app', 'Types'), 'url' => ['types/index']],
                        // ['label' => Yii::t('app', 'User'), 'url' => ['../../frontend/web/site/signup']],
                        [
                            'label' => Yii::t('app', 'Logout'),
                            'url' => ['/site/logout'],
                            'linkOptions' => ['class' => 'logout-link', 'data-method' => 'post'],
                        ],
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

            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
            ]) ?>
            <?= Alert::widget() ?>
            <?= $content ?>
        </div>
    </main>

    <footer class="footer mt-auto py-3 text-muted">

        <div class="container">
            <p class="float-start">&copy; NFC <?= date('Y') ?></p>
            &nbsp; Dev By Theerapong Khanta.
            <span>
                <?= Html::a(Html::img('https://cdn.pixabay.com/photo/2013/07/12/17/58/thailand-152711_1280.png', ['width' => '20px']), Url::current(['language' => 'th-TH']), ['class' => (Yii::$app->request->cookies['language'] == 'th-TH' ? 'active' : '')]); ?>
                <?= Html::a(Html::img('https://cdn.pixabay.com/photo/2015/11/06/13/29/union-jack-1027898_1280.jpg', ['width' => '20px']), Url::current(['language' => 'en-US']), ['class' => (Yii::$app->request->cookies['language'] == 'en-US' ? 'active' : '')]); ?>

            </span>

            <p class="float-end">Version 1.0.0</p>
        </div>
    </footer>

    <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage();
