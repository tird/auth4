<?php
namespace app\controllers;

use yii\rest\ActiveController;
use yii\data\ActiveDataProvider;


class ResourceController extends ActiveController
{
	public $modelClass = 'app\models\Resource';

    public function checkAccess($action, $model = null, $params = [])
    {
        \Yii::$app->authcomponent->checkPermissions($action,\Yii::$app->authcomponent->write);

    }
}