<?php

namespace app\controllers;

use yii\web\Controller;
use yii\data\Pagination;
use app\models\Certificate;
use app\models\CertificateForm;

class CertificateController extends Controller
{
    public function actionIndex()
    {
        $query = Certificate::find();

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
        ]);
    }
    
    public function actionUpdatelist(){
    	
    	$request = \Yii::$app->request;
    	$model = new Certificate();

    	return $this->render('update', [
    			'failcertificat' => $model->getFailCertificats(),
    			'pagination' => $pagination,
    	]);
    }
    
    public function actionEdit(){
    	 
    	$request = \Yii::$app->request;
    	//echo '<br><br><br><br><br>';
    	$arr = $request->get();
    	$idCert = $arr['1']['id'];
    	//$request->post()
    	
    	$model = new Certificate();
    	// выбрать сертификат по id
    	$getFailCert = $model->getFailCertificate( $idCert );
    	
    	return $this->render('edit', [
    			'getFailCert' => $getFailCert,
    	]);
    }
    
    public function actionNew()
    {
    	$model = new CertificateForm();
    	//$setNewCert = $model->setNewCertificate();
    	/*
    	if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            // данные в $model удачно проверены
			echo 'this work POST';
            // делаем что-то полезное с $model ...

            return $this->render('entry-confirm', ['model' => $model]);
        } else {
        	echo 'this NOT work POST';
            // либо страница отображается первый раз, либо есть ошибка в данных
            return $this->render('entry', ['model' => $model]);
        }*/
    	return $this->render('new');
    }
}