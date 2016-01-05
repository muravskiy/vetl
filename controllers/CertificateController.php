<?php

namespace app\controllers;

use yii\helpers\Html;
use yii\web\Controller;
use yii\web\UploadedFile;
use yii\data\Pagination;
use yii\data\ActiveDataProvider;
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
	
         $dataProvider = new ActiveDataProvider([
     		'query' => $query,
     		'sort'=> ['defaultOrder' => ['topic_order'=>SORT_ASC]]
 		]);
            
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
    	$arr = $request->get();
    	$idCert = $arr['1']['id'];
    	
    	$model = new Certificate();

    	// выбрать сертификат по id
    	$getFailCert = $model->getFailCertificats();

    	return $this->render('edit', [
    			'getFailCert' => $getFailCert,
    	]);
    }
    
    public function actionNew()
    {
    	//подключаем наш модуль
    	$form = new CertificateForm();
    	
    	// проверяем пришли ли нам данные из формы в $_POST переменной средствами yii
    	//  Проверяем валидность данных
    	if ( $form->load( \Yii::$app->request->post() ) && $form->validate() ) {
            // данные в $model удачно проверены
            // делаем что-то полезное с $model ...
            
			// обьявил масив для передачи в нем всех переменных, из формы, в одном месте
    		$valForm = array();
    		// присвоить даные из полей формы переменным
    		$issued = Html::encode($form->issued);
            $name_certificate = Html::encode($form->name_certificate);
			$number_certificate = Html::encode($form->number_certificate);
			$date_issue_certificate = Html::encode($form->date_issue_certificate);
			$valid_to_certificate = Html::encode($form->valid_to_certificate);

			// Получить инстенс(фаил) в переменную $form->file из поля формы file
			$form->file = UploadedFile::getInstance($form, 'file');
			$form->file->saveAs('img'.DIRECTORY_SEPARATOR.$form->file->baseName.'.'.$form->file->extension);
			
			// собираю переменные в масив
			$valForm = [
						'issued' => $issued,
						'name_certificate' => $name_certificate,
						'number_certificate' => $number_certificate,
						'date_issue_certificate' => $date_issue_certificate,
						'date_issue_certificate' => $date_issue_certificate,
						//'name' => Html::encode($form->tt),
					];
			
			//var_dump($valForm);exit;
			
			//$setNewCert = $model->setNewCertificate();
			
			// визываем вид и мередаем данные
			return $this->render('new',
						[
							'form' => $form,
							'valForm' 	=> $valForm,	
						]
					);
        } 
        else // если данные не пришли или не прошли проверку валидности 
        {
        	$issued = '';
			$name_certificate = '';
			$number_certificate = '';
			$date_issue_certificate = '';
			$valid_to_certificate = '';
            // либо страница отображается первый раз, либо есть ошибка в данных
            // вызываем вид и передаем данные из модели
            return $this->render('new',
    				['form' => $form]
    			);
        }

    }
}