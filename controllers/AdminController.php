<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\Admin;


use \yii\db\ActiveRecord;
use yii\db\Connection;

class AdminController extends \yii\web\Controller
{
    public function actionIndex()
    {
    	// Подключаем класс app/models/Admin.php
    	// Помещаем полученый класс в переменную $model
    	$model = new Admin();
    	
    	// Подключаем вид из app/views/admin/index.php
    	// Передаем виду функцию getTblBrigada() из класса Admin(), через переменную model
        return $this->render('index', [
            'model' => $model->getTblBrigada(),
        ]);
    }

}
