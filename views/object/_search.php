<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ObjectSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="object-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'type_object_id') ?>

    <?= $form->field($model, 'tbl_name_object_id') ?>

    <?= $form->field($model, 'tbl_brigada_id') ?>

    <?= $form->field($model, 'inventory_number') ?>

    <?php // echo $form->field($model, 'tbl_locality_id') ?>

    <?php // echo $form->field($model, 'facility_id') ?>

    <?php // echo $form->field($model, 'inspection_date') ?>

    <?php // echo $form->field($model, 'inspection_interval') ?>

    <?php // echo $form->field($model, 'next_inspection') ?>

    <?php // echo $form->field($model, 'protocol_number') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
