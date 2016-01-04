<?php

/* @var $this yii\web\View */

$this->title = 'VETL';
?>
<!-- таблица с циклами накорые выводять просрочку и не только -->
<table border=2>
	<tr>
		<th style="padding: 20px;">Колонка просроченых состояний</th>
		<th style="padding: 20px;">Колонка скоро просроченых инструментов</th>
	</tr>
	<tr>
		<td style="padding: 8px;">
			<pre>
			<?php
				if($instrumentStatus['bad']){
					foreach ($instrumentStatus['bad'] as $value ){
						print_r($value);
					}	
				} else {
					echo "Присрочки нет";
				}
				
			?>
			</pre>
		</td>
		<td style="padding: 8px;">
			<pre>
			<?php
				if($instrumentStatus['good']){
					foreach ($instrumentStatus['good'] as $value ){
						print_r($value);
					} 
				} else {
					echo "<h5 style=''>Странно но валидных инструментов нет!</h5>Скорее всего что-то пошло не так.";
				}
			?>
			</pre>
		</td>
	</tr>
</table>
<!-- 
<div class="site-index">

    <div class="jumbotron">
        <h1>Congratulations!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>

        <p><a class="btn btn-lg btn-success" href="http://www.yiiframework.com">Get started with Yii</a></p>
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/doc/">Yii Documentation &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/forum/">Yii Forum &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/extensions/">Yii Extensions &raquo;</a></p>
            </div>
        </div>

    </div>
</div>
 -->