<?php
/* @var $this yii\web\View */
?>
<h1>Наверное тут будет меню для выбора всяких штук</h1>

<p>

<table border=1>
<tr>
	<th>&nbsp;ИН бригады &nbsp;</th>
	<th>&nbsp;ФИО нач бригады &nbsp;</th>
</tr>

<?php
foreach ($model as $brigada) {
	print_r( "<tr><td>&nbsp;{$brigada['room_brigade']}&nbsp;</td>" );
	print_r( "<td>&nbsp;{$brigada['last_name_SHNS']}&nbsp;</td></tr>" );
}
?>

</table>

    <code>file: <?= __FILE__; ?></code>.
</p>
