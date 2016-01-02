<?php

namespace app\models;

use yii\db\ActiveRecord;
use yii\base\Model;

class Certificate extends ActiveRecord 
{  
	public function getFailCertificats(){
		
		$i = '0';
		// на этот раз мы сделали выборку просрочки из базы одним запросом
		$sql='SELECT id,issued,name_certificate,number_certificate FROM certificate 
					WHERE valid_to_certificate <= ("SELECT date_issue_certificate FROM certificate") 
					and not_actual = false';
		
		$ArrayFailCertificate = Certificate::findBySql($sql)
		->asArray()
		->all();

		return $ArrayFailCertificate;
	}
	
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
}