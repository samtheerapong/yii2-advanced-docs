<?php

namespace backend\controllers;

use backend\models\DocumentsSearch;
use common\models\LoginForm;
use Yii;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'rules' => [
                    [
                        'actions' => ['login', 'error', 'logout', 'index'],
                        'allow' => true,
                    ],
                    // [
                    //     'actions' => ['logout', 'index'],
                    //     'allow' => true,
                    //     'roles' => ['@'],
                    // ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => \yii\web\ErrorAction::class,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {

        $searchModelDocuments = new DocumentsSearch();
        $dataProviderDocuments = $searchModelDocuments->search(Yii::$app->request->queryParams);
        $dataProviderDocuments->pagination = [
            'pageSize' => 10, // Number of items per page
        ];

        // **************** report graphStatus ********************
        $sqlstatus = "SELECT COUNT(m.id) AS count, r.name
         FROM documents m
         LEFT JOIN status r 
         ON r.id = m.status_id
         GROUP BY m.status_id";
        $datastatus = Yii::$app->db->createCommand($sqlstatus)->queryAll();
        $graphstatus = [];
        foreach ($datastatus as $d) {
            $graphstatus[] = [
                'name' => $d['name'],
                'y' => intval($d['count']),
            ];
        }

        // **************** report graphrawmaterial ********************
        $sqlrawmaterial = "SELECT COUNT(m.id) AS count, r.name
         FROM documents m
         LEFT JOIN raw_material r 
         ON r.id = m.raw_material
         GROUP BY m.raw_material";
        $datarawmaterial = Yii::$app->db->createCommand($sqlrawmaterial)->queryAll();
        $graphrawmaterial = [];
        foreach ($datarawmaterial as $d) {
            $graphrawmaterial[] = [
                'name' => $d['name'],
                'y' => intval($d['count']),
            ];
        }

         // **************** report graphtypes ********************
         $sqltypes = "SELECT COUNT(m.id) AS count, r.name
         FROM documents m
         LEFT JOIN types r 
         ON r.id = m.types_id
         GROUP BY m.types_id";
        $datatypes = Yii::$app->db->createCommand($sqltypes)->queryAll();
        $graphtypes = [];
        foreach ($datatypes as $d) {
            $graphtypes[] = [
                'name' => $d['name'],
                'y' => intval($d['count']),
            ];
        }

        // **************** report graphcategories ********************
        $sqlcategories = "SELECT COUNT(m.id) AS count, r.name
         FROM documents m
         LEFT JOIN categories r 
         ON r.id = m.categories_id
         GROUP BY m.categories_id";
        $datacategories = Yii::$app->db->createCommand($sqlcategories)->queryAll();
        $graphcategories = [];
        foreach ($datacategories as $d) {
            $graphcategories[] = [
                'name' => $d['name'],
                'y' => intval($d['count']),
            ];
        }

        return $this->render('index', [
            'searchModelDocuments' => $searchModelDocuments, //table Requester
            'dataProviderDocuments' => $dataProviderDocuments, //table Requester
            'graphcategories' => $graphcategories, 
            'graphrawmaterial' => $graphrawmaterial, 
            'graphtypes' => $graphtypes, 
            'graphstatus' => $graphstatus,
        ]);
    }

    /**
     * Login action.
     *
     * @return string|Response
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $this->layout = 'blank';

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }

        $model->password = '';

        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return Response
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
