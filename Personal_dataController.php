<?php
namespace app\controllers;

use yii\rest\ActiveController;
use yii\data\ActiveDataProvider;

class Personal_dataController extends ActiveController
{
    public $modelClass = 'app\models\PersonalData';
    public function checkAccess($action, $model = null, $params = [])
    {
        \Yii::$app->authcomponent->checkPermissions($action,\Yii::$app->authcomponent->write);
        \Yii::$app->authcomponent->checkPermissionsPrivateData($action,\Yii::$app->authcomponent->read);
      /*  exit('es');
        exit($action);
        if ($action == 'create' || $action == 'update' || $action || 'delete'){
            if(!(\Yii::$app->session->get('role') == 'register')) {
                exit('1');
            }
        }*/
    }

}