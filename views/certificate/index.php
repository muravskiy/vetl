<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1>Дозволи</h1>
<ul>
<?php foreach ($countries as $certificate): ?>
    <li>
        <?= Html::encode("	Виданий - {$certificate->issued}.
							Назва - {$certificate->name_certificate}.
							Номер : {$certificate->number_certificate}.
							Дата видачи : {$certificate->date_issue_certificate}.
							Дійсний до : {$certificate->valid_to_certificate}.
									
							") ?>
       

        
    </li>
<?php endforeach; ?>
</ul>

<?= LinkPager::widget(['pagination' => $pagination]) ?>