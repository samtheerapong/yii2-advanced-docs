<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-backend',
    'name' => 'NFC',
    'language' => 'th',
    'timezone' => 'Asia/Bangkok',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => [
        'log',
        [
            'class' => 'common\components\LanguageSelector',
            'supportedLanguages' => ['en-US', 'th-TH'], //กำหนดรายการภาษาที่ support หรือใช้ได้
        ]
    ],
    'modules' => [
        'qc' => [
            'class' => 'backend\modules\qc\Module',
        ],

        'hrm' => [
            'class' => 'backend\modules\hrm\Module',
        ],

        'ex' => [
            'class' => 'backend\modules\ex\Module',
        ],

        'ncr' => [
            'class' => 'backend\modules\ncr\Module',
        ],

        'product' => [
            'class' => 'backend\modules\product\Module',
        ],

        // kartik gridview
        'gridview' =>  [
            'class' => '\kartik\grid\Module'
        ],
    ],
    
    'components' => [
        
        'image' => [
            'class' => 'yii\image\ImageDriver',
            'driver' => 'GD',  //GD or Imagick
        ],

        'assetManager' => [
            'bundles' => [
                'kartik\form\ActiveFormAsset' => [
                    'bsDependencyEnabled' => false // do not load bootstrap assets for a specific asset bundle
                ],
            ],
        ],
        // 'view' => [
        //     'theme' => [
        //         'pathMap' => [
        //             '@backend/views' => '@backend/themes/admin',
        //         ],
        //     ],
        // ],

        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => \yii\log\FileTarget::class,
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'i18n' => [
            'translations' => [
                'app*' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    'basePath' => '@common/messages',
                    // 'sourceLanguage' => 'en-US',
                ],
            ],
        ],
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            // Disable index.php
            'showScriptName' => false,
            // Disable r= routes
            'enablePrettyUrl' => true,
            'rules' => [
                '<controller:\w+>/<id:\d+>' => '<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
                ['class' => 'yii\rest\UrlRule', 'controller' => 'location', 'except' => ['delete', 'GET', 'HEAD', 'POST', 'OPTIONS'], 'pluralize' => false],
                '<module:\w+>/<controller:\w+>/<action:\w+>' => '<module>/<controller>/<action>',
                // 'export/pdf' => 'export/export-pdf',
            ],
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail', // Customize this based on your project structure
            'useFileTransport' => false, // Set this to false to enable email sending
            'transport' => [
                'class' => 'Swift_SmtpTransport',
                'host' => 'smtp-mail.outlook.com', // Hotmail SMTP server
                'username' => 'northernfood.it@hotmail.com', // Your Hotmail/Outlook email address
                'password' => 'Nfc@053673985', // Your Hotmail/Outlook password
                'port' => '587', // The SMTP server port for Hotmail
                'encryption' => 'tls', // Use TLS encryption (required for Hotmail)
            ],
        ],
        //     'urlManagerFrontend' => [
        //         'class' => 'yii\web\urlManager',
        //         'baseUrl' => '/yii2-advanced-docs/frontend/web',
        //         'scriptUrl'=>'/yii2-advanced-docs/frontend/web/index',
        //         'enablePrettyUrl' => true,
        //         'showScriptName' => true,
        //  ],
    ],
    'params' => $params,
];
