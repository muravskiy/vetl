<?php

namespace app\models;

/**
 * Подключаю сласс ActiveRecord, Connection
 */
use \yii\db\ActiveRecord;
use yii\db\Connection;

//define('CONNECT','Yii::$app->db');

/**
 * Создаю сласс Admin который наследует класс ActiveRecord
 */
class Admin extends ActiveRecord
{
	// Создаю переменную $connect для хранения состояния подключение к БД 
	private static $connect;
	
	// Класс реализует подключение к БД, после чего выбирает все что есть в таблице
	// Подключаеться этот класс в контроллере app/controllers/AdminController.php 
	public function getTblBrigada() {
		$connect = \Yii::$app->db;
    	//$sql ='select * from tbl_brigada';
    	$cmd = $connect->createCommand('select * from tbl_brigada');
    	$result = $cmd->queryAll();
    	return $result;
	}
}