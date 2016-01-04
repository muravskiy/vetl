<?php

namespace app\models;

use yii\db\ActiveRecord;

class Certificate extends ActiveRecord 
{  
	/**
	 * выбрать все просроченные сертификаты
	 * @return \yii\db\ActiveRecord[][]
	 */
	public function getFailCertificats(){
		
		// sql запрос на выборку только просроченых сертификатов
		$sql='SELECT id,issued,name_certificate,number_certificate,date_issue_certificate,valid_to_certificate
				FROM certificate 
					WHERE DATE_FORMAT(`valid_to_certificate`, "%Y-%c-%d") < CURDATE() ';

		// на этот раз мы сделали выборку просрочки из базы одним запросом
		$ArrayFailCertificate = Certificate::findBySql($sql)
		->asArray()
		->all();

		return $ArrayFailCertificate;
	}
	// выбрать конкретный сертификат по id
	public function getFailCertificate($id=null)
	{
		$id = (int)$id;
		$sql="SELECT * FROM certificate 
					WHERE id = $id";
		
		$ArrayFailCertificate = Certificate::findBySql($sql)
		->asArray()
		->all();

		return $ArrayFailCertificate;
	}
	
	public function setNewCertificate(){}
	
	// проверка коректрости даты
	// пример $this->validateDate( '2018-11-28', 'Y-m-d' ); 
	// вернет true
	public function validateDate($date, $format = 'Y-m-d H:i:s')
	{
		$d = \DateTime::createFromFormat($format, $date);
		return $d && $d->format($format) == $date;
	}
	
}