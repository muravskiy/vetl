<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1>Бригади</h1>
<ul>
<?php foreach ($countries as $tbl_brigada): ?>
    <li>
        <?= Html::encode("{$tbl_brigada->room_brigade} ({$tbl_brigada->last_name_SHNS})") ?>:
        <
    </li>
<?php endforeach; ?>
</ul>

<?= LinkPager::widget(['pagination' => $pagination]) ?>