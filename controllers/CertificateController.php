<?php

namespace app\controllers;

use yii\web\Controller;
use yii\data\Pagination;
use app\models\Certificate;

class CertificateController extends Controller
{
    public function actionIndex()
    {
        $query = Certificate::find();
        
        
        $customer = Certificate::findOne(2);
//var_dump($customer);
        $pagination = new Pagination([
            'defaultPageSize' => 5,
            'totalCount' => $query->count(),
        ]);

        $certificat = $query->orderBy('valid_to_certificate') //сортировка
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();
	
        return $this->render('index', [
            'certificat' => $certificat,
            'pagination' => $pagination,
        	'eeeee' => $customer,
        ]);
    }
}