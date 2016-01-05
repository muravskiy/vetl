<?php
use yii\helpers\Html;
?>
<h1>Меню обновления просроченых сертификатов</h1><br>
<h4>Список просроченых сертификатов</h4>
<pre>
<?php  
foreach ( $getFailCert as $value){
echo <<<END
<div style="border: 1px solid gray;padding:5px;margin-top:-50px;">
	<b>Кем выдан:</b> {$value['issued']}
	<b>Название сертификата:</b> {$value['name_certificate']}
	<b>Номер сертификата:</b> {$value['number_certificate']}
	<b>Дата видачи:</b> {$value['date_issue_certificate']}
	<b>Сертификат действовал до:</b> {$value['valid_to_certificate']}
</div><br>
END;
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