<?php

namespace app\models;

use yii\db\ActiveRecord;

class Overtime extends ActiveRecord
{
		
	function badlist() {
		
		$customer = Certificate::findOne(2);
		
		$dt = date('Y-m-d');
		
		foreach ($customer as $customer1){
			
			if($dt >= $customer->valid_to_certificate)
				$customer1 = $customer;
			
		}
		
		
		//else $customer1 = 1;
	
		
		$result = $customer1;
	
			
	/*		$query = Certificate::findOne(2);
			$posts = $query->asArray()->all();
			
			$dt = date('Y-m-d');
			
			foreach ($posts as $posts1){
					
				if($dt >= $posts->valid_to_certificate)
					$posts1 = $posts;
						
			}
			
			$result = $posts1;
		*/
				
				
				
		return $result;
		
	}
	
	//'from brigada INNER JOIN attachmentbrigada ON brigada.attachmentbrigada_id = attachmentbrigada.id;'
	
}