<?php
use yii\helpers\Html;
?>
<h1>Меню обновления просроченых сертификатов</h1><br>
<h4>Список просроченых сертификатов</h4>
<pre><!-- НЕ УДАЛЯТЬ!!  Это важный для вида тег, не удалять-->
<?php  
foreach ( $getFailCert as $value){ ?>
	
	<!--  <a href ="<?=Yii::$app->urlManager->createUrl(['site/user', 'id' => $id])?>"><?=$value['issued']?></a>  -->
<?php 
echo <<<END
<div style="border: 1px solid gray;padding:8px;margin:5px;margin-top:-55px;">
<b>Кем выдан:</b> {$value['issued']}
<b>Название сертификата:</b> {$value['name_certificate']}
<b>Номер сертификата:</b> {$value['number_certificate']}
<b>Дата видачи:</b> {$value['date_issue_certificate']}
<b>Сертификат действовал до:</b> {$value['valid_to_certificate']}
</div>

END;
}
?>
</pre>
<!-- Пока так, для примера. 
http://muravskiy.ua/index.php?r=certificate/edit
-->
<?php
echo \vova07\imperavi\Widget::Widget([
    'name' => 'redactor',
    'settings' => [
        'lang' => 'ru',
        'minHeight' => 200,
        'plugins' => [
            'clips',
            'fullscreen'
        ]
    ]
]);
?>
<?= Html::a('Cоздать Сертификат', 
				['certificate/new'], 
				['class' => 'btn btn-default']
		); ?>
		
<?= Html::a('Выбрать сертификат для обновления', 
				['certificate/setcert'], 
				['class' => 'btn btn-default']
		); ?>