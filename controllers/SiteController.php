<?php

namespace app\controllers;

use app\models\ContactForm;
use app\models\LoginForm;
use app\models\Stampdate;
use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use yii\web\Controller;

class SiteController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {
    	
    	// the ID of the current user. 
    	//Null if the user not authenticated.
    	$id = (int)\Yii::$app->user->id;
    	
    	// проверяем если существует $id и содержин INT число
    	// то юзер аутертифицыровался иначе $id содержит Null
    	// по хорошему здесь мы должны 
    	// проводить сравнение $id c 'id' пользователя,
    	// из масива $users модели models/User, или из БД для секюрности
    	if( $id )
    	{
    		// подключили модуль вывода просрочки
    		$model = new Stampdate();
    		return $this->render('index_allow',[
    				//передали масив, результат работы метода dateControl() класса Stampdate()
    				'instrumentStatus' => $model->dateControl(),
    		]);
    	}
    	
    	// Вернет имя пользователя
    	//$identity = $identity->username;    	   

    	// the current user identity. Null if the user is not authenticated.
    	// $identity = \Yii::$app->user->identity;
    	    	   
    	
    	
        return $this->render('index');
    }

    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    public function actionAbout()
    {
        return $this->render('about');
    }
}
