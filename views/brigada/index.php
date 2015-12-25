<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\BrigadaSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Бригади';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="brigada-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Створити бригаду', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'room_brigade',
            'last_name_SHNS',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
