<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<br>
<h1>Обновление просроченых сертификатов</h1><br>
Вид обновления просроченых сертификатов<br>
<br><br>
<h2>Список просрочки</h2><br>

<ul>

<?php 
//var_dump( $failcertificat );exit;
		foreach ($failcertificat as $value ){
			$ds = Html::a('Редактировать', ['certificate/edit', ['id' => "{$value[id]}"]], ['class' => 'btn btn-default']);			
			echo <<<END
  			<b>Редактировать сертификат: </b> {$value[name_certificate]} <br>
  			<b>Имя сертификата:</b> {$value[name_certificate]}<br>
			<b>id сертификата:&nbsp;{$value[id]}</b><br>
			<b>черт знает что из столбика issued таблицы сертификаты:</b> {$value[issued]} <br>
			
			<b>Номер сертификата:</b> {$value[number_certificate]} <br><br>
			{$ds}
			<br><br><br>
END;
			
		}
?>
</ul>
<?php  

//echo LinkPager::widget(['pagination' => $pagination]) ?>

