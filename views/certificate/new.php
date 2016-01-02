<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>
<br>
<h1>Создать новый сертификат</h1><br>

<?php 
$form = ActiveForm::begin([
	'id' => 'login-form',
    'method' => 'get',
    'action' => ['controller/action'],
]);
//echo $form->field($model, 'uploadFile[]')->fileInput(['multiple'=>'multiple']);
?>