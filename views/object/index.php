<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ObjectSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Objects';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="object-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Object', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'type_object_id',
            'tbl_name_object_id',
            'tbl_brigada_id',
            'inventory_number',
            // 'tbl_locality_id',
            // 'facility_id',
            // 'inspection_date',
            // 'inspection_interval',
            // 'next_inspection',
            // 'protocol_number',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
