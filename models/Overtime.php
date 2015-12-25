<?php

namespace app\models;

use yii\db\ActiveRecord;

class Overtime extends ActiveRecord
{
	

	
	function badlist() {
		'from brigada INNER JOIN attachmentbrigada ON brigada.attachmentbrigada_id = attachmentbrigada.id;';
	}
	
	
	
}