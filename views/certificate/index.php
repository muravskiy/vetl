<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1>Дозволи</h1>
<ul>
<?php foreach ($countries as $tbl_certificate): ?>
    <li>
        <?= Html::encode("	Виданий - {$tbl_certificate->issued}.
							Назва - {$tbl_certificate->name_certificate}.
							Номер : {$tbl_certificate->number_certificate}.
							Дата видачи : {$tbl_certificate->date_issue_certificate}.
							Дійсний до : {$tbl_certificate->valid_to_certificate}.
									
							") ?>
       

        
    </li>
<?php endforeach; ?>
</ul>

<?= LinkPager::widget(['pagination' => $pagination]) ?>