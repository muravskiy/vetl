<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Object */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="object-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'type_object_id')->textInput() ?>

    <?= $form->field($model, 'tbl_name_object_id')->textInput() ?>

    <?= $form->field($model, 'tbl_brigada_id')->textInput() ?>

    <?= $form->field($model, 'inventory_number')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tbl_locality_id')->textInput() ?>

    <?= $form->field($model, 'facility_id')->textInput() ?>

    <?= $form->field($model, 'inspection_date')->textInput() ?>

    <?= $form->field($model, 'inspection_interval')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'next_inspection')->textInput() ?>

    <?= $form->field($model, 'protocol_number')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
