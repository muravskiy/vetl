<?php

namespace app\controllers;

use yii\web\Controller;
use yii\data\Pagination;
use app\models\Brigada;

class BrigadaController extends Controller
{
	public function actionIndex()
	{
		$query = Brigada::find();

		$pagination = new Pagination([
				'defaultPageSize' => 5,
				'totalCount' => $query->count(),
		]);

		$countries = $query->orderBy('name')
		->offset($pagination->offset)
		->limit($pagination->limit)
		->all();

		return $this->render('index', [
				'countries' => $countries,
				'pagination' => $pagination,
		]);
	}
}