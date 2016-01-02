<?php

namespace app\models;

use yii\base\Model;

class CertificateForm extends Model 
{  
	public $issued;
	public $name_certificate;
	public $number_certificate;
	public $date_issue_certificate;
	public $valid_to_certificate;
	
	public function rules()
	{
		return [
				[['issued', 'name_certificate', 'number_certificate', 'date_issue_certificate', 'valid_to_certificate'], 'required'],
				//['email', 'email'],
		];
	}
}