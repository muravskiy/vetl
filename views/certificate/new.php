<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>
<br>
<h1>Создать новый сертификат</h1><br>
<?php 
$f = ActiveForm::begin(
		//['id' => 'newcert-form','method' => 'post','action' => ['certificate/new'],],
		['options' => ['enctype' => 'multipart/form-data']]
	);
// Вариант для работы с файлами
//$f = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]);
?>

<?=$f->field($form, 'issued');?>
<?=$f->field($form, 'name_certificate');?>
<?=$f->field($form, 'number_certificate');?>
<?=$f->field($form, 'date_issue_certificate');?>
<?=$f->field($form, 'valid_to_certificate');?>
<?=$f->field($form, 'valid_to_certificate');?>
<?=$f->field($form, 'file')->fileInput();?>
<?= Html::submitButton('Создать сертификат');?>

<?php ActiveForm::end();?>

<?php print_r($valForm);?>