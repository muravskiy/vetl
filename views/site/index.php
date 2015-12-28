<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>


<?php

/* @var $this yii\web\View */

$this->title = 'VETL';
?>
<!-- 
<div class="site-index">

    <div class="jumbotron">
        <h1>Congratulations!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>

        <p><a class="btn btn-lg btn-success" href="http://www.yiiframework.com">Get started with Yii</a></p>
    </div>
-->
    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">
                <h3>Закінчився термін дії</h3>
				
                <p>
                
    <?php foreach ($badlist as $badlistpr): ?>
      	
      	
      	
      	
      	<li>
            <?= Html::encode("") ?>
              
       		<?php var_dump($badlistpr);?>
       		<?php exit("остановка");?>
       		
       		<?= $badlistpr->id?><br>
       		<?= $badlistpr->issued?> <br>						
			<?= $badlistpr->number_certificate?> <br>
			<?= $badlistpr->date_issue_certificate?> <br>
			<?= $badlistpr->valid_to_certificate; ?>br>
        								
		
    	</li>
	<?php endforeach; ?>
                
                	
                
                
                </p>

                
            </div>
            <div class="col-lg-4">
                <h3>Виконання випробувань сьогодні</h3>
 
                <p>
                       
               <li><span style="color: #ff6600;"> Дата - nameobject.name_object Бригада № brigada.room_brigade ШНС brigada.last_name_SHNS <br></span></li>
               <li><span style="color: #ff6600;"> Дата - Бокорізи Бригада № 4 ШНС Покотило <br></span></li>
                  
                </p>
 
                
            </div>
            <div class="col-lg-4">
                <h3>Виконання випробувань протягом тижня</h3>

                <p>
                    
                 <li><span style="color: #CD853F;"> Дата - Викрутка Бригада № 5 ШНС Заяц <br></span></li>   
                    
                </p>

                
            </div>
        </div>

    </div>
</div>
<!--
<p><a class="btn btn-default" href="http://www.yiiframework.com/doc/">Yii Documentation &raquo;</a></p>
-->




<?php 

//echo $badlist;
//echo $eeeee->date_issue_certificate;

?>

