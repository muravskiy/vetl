<?php

namespace app\models;

use yii\db\ActiveRecord;

class Overtime extends ActiveRecord
{
		
	function badlist() {
		
		$query = Certificate::find();
		$customer = $query->asArray()->all();
		
		$dt = date('Y-m-d');
		
		foreach ($customer as $customer1){
			
			if($customer1 [valid_to_certificate] <= $dt){
				$rgResult[] = $customer1;
				
			}
				
			
		}
		
		
		
		
		
		//else $customer1 = 1;
	
		
		$result = $rgResult;
			
		return $result;
		
	}
	
	//'from brigada INNER JOIN attachmentbrigada ON brigada.attachmentbrigada_id = attachmentbrigada.id;'
	
}