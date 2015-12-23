<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Object */

$this->title = 'Create Object';
$this->params['breadcrumbs'][] = ['label' => 'Objects', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="object-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
