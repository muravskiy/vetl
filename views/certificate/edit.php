<?php
use yii\helpers\Html;
?>
<h1>Меню обновления просроченых сертификатов</h1><br>
<h4>Список просроченых сертификатов</h4>
<pre>
<?php  
foreach ( $getFailCert as $value){
	print '<div style="border: 1px solid gray;padding:5px;"><b>Кем выдан:</b> '.$value['issued'].'<br>';
	print '<b>Название сертификата:</b> '.$value['name_certificate'].'<br>';
	print '<b>Номер сертификата:</b> '.$value['number_certificate'].'<br>';
	print '<b>Дата видачи:</b> '.$value['date_issue_certificate'].'<br>';
	print '<b>Сертификат действовал до:</b> '.$value['valid_to_certificate'].'</div><br>';
}
?>
</pre>

<?= Html::a('Cоздать Сертификат', 
				['certificate/new'], 
				['class' => 'btn btn-default']
		); ?>
		
<?= Html::a('Выбрать сертификат для обновления', 
				['certificate/setcert'], 
				['class' => 'btn btn-default']
		); ?>