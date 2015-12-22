<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>
<h1>Дозвільні документи лабораторії</h1><br>
<ul>
<?php foreach ($countries as $certificate): ?>
    <li>
        <?= Html::encode("") ?>
       					Назва - <b> <?= $certificate->name_certificate?> </b> <br>
       					Виданий - <?= $certificate->issued?> <br>						
						Номер : <?= $certificate->number_certificate?> <br>
						Дата видачи : <?= $certificate->date_issue_certificate?> <br>
						Дійсний до : <b> <?= $certificate->valid_to_certificate; ?></b>
								<b>
								<?php	$dt = date('Y-m-d'); ?>
								<?php if($dt >= $certificate->valid_to_certificate): ?>
								<span style="color: #ff6600;">Прострочений</span></b>
								<?php else: ?>
								
								<?php endif; ?></b><br><br>
												
												
		
    </li>
<?php endforeach; ?>
</ul>

<?= LinkPager::widget(['pagination' => $pagination]) ?>

