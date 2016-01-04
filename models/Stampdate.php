<?php
namespace app\models;

use yii\db\ActiveRecord;

class Stampdate extends ActiveRecord
{
	
	// метод dateControl выводит масив просроченых и не просрченых инструментов
	public function dateControl($tables=null, $dataout=(7*24*60*60)) {
		
		$goodInstrument = array();
		$badInstruments = array();
		$instruments 	= array();
		$st				= array();
		$st_tmp			= array();
		$i = '0';
		
		// $result = Select * from stampdate
		$sql="Select * from `stampdate`";
		$tblArrayStampdate=Stampdate::findBySql($sql)
			->asArray()
			->all();
		
		// $res actual date and time
		$sql="SELECT UNIX_TIMESTAMP()";
		$unixTimeActual = Stampdate::findBySql($sql)
			->asArray()
			->all();
		$unixTimeActual = (int)$unixTimeActual['0']['UNIX_TIMESTAMP()'];
			
		// перебираем масив значений выбраных из БД
		foreach ($tblArrayStampdate as $value ){
			
			// проверяем содержимое масива на число и присваивает переменной $c
			// $c дата проверки инструмента
			$dateReviziya = (int)$value[int_date];
			
			// $dataout интервал проверки инструмента
			$datePorog = ($dateReviziya+$dataout);
			
			// если сегодняшняя дата больше порога даты просрочки
			// записать инструмент в масив просрочки
			// иначе записать инструмент в масив не просроченых 
			if($unixTimeActual > $datePorog) {
				
				// конвертируем unix_time в человеко читаемый формат
				$value['int_date'] = $this->unixtime_convert($datePorog);
				
				//echo 'караул просроченый инструмент';
				$badInstruments[$i++] = $value;
			} else {
				
				// конвертируем unix_time в человеко читаемый формат
				$value['int_date'] = $this->unixtime_convert($datePorog);
				
				//echo '<br>все гуд';
				$goodInstruments[$i++] = $value;
			}
			
		}
		// Создаем масив для вывода из функции
		$instruments['bad'] = $badInstruments;
		$instruments['good'] = $goodInstruments;
		
		//$this->unixtime_convert( 
		//		$instrumentstatus['good']['int_date']);
		return $instruments;
	}
	
	public function unixtime_convert($unix_time=null,$tz='Europe/Kiev'){
		
		$dt = new \DateTime();
		$tz = new \DateTimeZone($tz);
		//var_dump($dt);
		//var_dump($tz);
		$dt->setTimestamp($unix_time);
		$dt->setTimezone($tz);
		return $dt->format('Y-m-d');
	}
}