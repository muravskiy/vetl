<?php

namespace app\models;

use yii\db\ActiveRecord;

class Overtime extends ActiveRecord
{
	
	public $customer1;
	public $result = array();
	function badlist() {
		
		$customer1 = Certificate::findOne(2);
		//var_dump($customer);
		$result = $customer1->valid_to_certificate;
		
		
		return $result;
		
	}
	
	//'from brigada INNER JOIN attachmentbrigada ON brigada.attachmentbrigada_id = attachmentbrigada.id;'
	
}