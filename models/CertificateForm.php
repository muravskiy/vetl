<?php

namespace app\models;
use yii\base\Model;

class CertificateForm extends Model 
{  
	public $issued = "незнаю что суда писать";
	public $name_certificate = "name сартификата";
	public $number_certificate = "номер сартификата";
	public $date_issue_certificate = "дата выдачи сартификата";
	public $valid_to_certificate = "сартификат актуален до. Пример: '2020-12-11'";
	public $file;
	
	public function rules()
	{
		return [
				[['issued', 'name_certificate', 'number_certificate', 'date_issue_certificate', 'valid_to_certificate'], 
						'required', 
						'message' => 'Поле обязательно для заполнения'
				],
				//['issued', 'email', 'message' => 'Некоректная штука issued'],
				// описание и примеры http://www.yiiframework.com/doc-2.0/guide-input-file-upload.html
				[['file'], 'file'],
				//[['file'], 'file', 'extension' => 'jpg, png'],
			 ];
	}
	
	public function attributeLabels()
	{
		return array(
				'issued'    => 'Выпущен',
				'name_certificate' => 'Имя сартификата',
				'number_certificate' => 'номер сартификата',
				'date_issue_certificate' => 'дата выдачи сартификата',
				'valid_to_certificate' => 'Сертификат истекает',
				'file' => 'Загрузить файл',
		);
	}
	
	// Приверка безопасности атрибутов формы
	//public function isAttributeSafe(){}
}