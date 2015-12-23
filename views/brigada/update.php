<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Brigada */

$this->title = 'Update Brigada: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Brigadas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="brigada-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
