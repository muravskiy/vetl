<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1>Меню обновления сертификита</h1><br>

<h4>Просроченый сертификат</h4>
<pre>
<?php  
echo $getFailCert[0][issued].'<br>';
echo $getFailCert[0][name_certificate].'<br>';
echo $getFailCert[0][number_certificate].'<br>';
echo $getFailCert[0][valid_to_certificate].'<br>';
?>
</pre>

<?= Html::a('Cоздать Сертификат', 
				['certificate/new'], 
				['class' => 'btn btn-default']
		); ?>
		
<?= Html::a('Выбрать сертификат', 
				['certificate/setcert'], 
				['class' => 'btn btn-default']
		); ?>