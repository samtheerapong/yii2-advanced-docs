<?php

namespace backend\modules\product\models;

use common\models\User;
use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\bootstrap5\Html;
use yii\db\BaseActiveRecord;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\web\UploadedFile;

class ProductSpec extends \yii\db\ActiveRecord
{
    public $uploadFolders = [
        'spec'              => 'products/specs',
        'process'           => 'products/process',
        'fda'               => 'products/fdas',
        'nutrition'         => 'products/nutritions',
    ];

    public function behaviors()
    {
        return [
            TimestampBehavior::class,
            BlameableBehavior::class,
        ];
    }

    public static function tableName()
    {
        return 'product_spec';
    }

    public function rules()
    {
        return [
            [['created_at', 'updated_at', 'revised_date', 'spec_expiration', 'process_expiration', 'fda_expiration', 'nutrition_expiration'], 'safe'],
            [['created_by', 'updated_by'], 'integer'],
            [['product_number', 'revision', 'title', 'description', 'iso_cert'], 'string'],
            [['title'], 'string', 'max' => 200],
            [['product_number', 'revision'], 'string', 'max' => 50],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'product_number' => Yii::t('app', 'Product Number'),
            'revision' => Yii::t('app', 'Revision'),
            'revised_date' => Yii::t('app', 'Revised Date'),
            'title' => Yii::t('app', 'Title'),
            'description' => Yii::t('app', 'Description'),
            'spec' => Yii::t('app', 'Product Specification'),
            'spec_expiration' => Yii::t('app', 'Spec Expiration'),
            'process' => Yii::t('app', 'Process Flow'),
            'process_expiration' => Yii::t('app', 'Process Expiration'),
            'fda' => Yii::t('app', 'FDA'),
            'fda_expiration' => Yii::t('app', 'Fda Expiration'),
            'nutrition' => Yii::t('app', 'Nutrition Label'),
            'nutrition_expiration' => Yii::t('app', 'Nutrition Expiration'),
            'iso_cert' => Yii::t('app', 'ISO Certificate'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }

    private function uploadFiles($attribute)
    {
        $filesName = [];
        $files = UploadedFile::getInstances($this, $attribute);

        if ($this->validate() && $files) {
            foreach ($files as $file) {
                // $fileName = md5(rand(1, 1000) . time()) . '-' . $file->baseName . '.' . $file->extension;
                $fileName = $this->product_number . '-' . $file->baseName . '.' . $file->extension;
                $file->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFolders[$attribute] . '/' . $fileName);
                $filesName[] = $fileName;
            }

            if (!$this->isNewRecord) {
                $oldFiles = explode(',', $this->{$attribute});
                $filesName = ArrayHelper::merge($filesName, $oldFiles);
            }

            return implode(',', $filesName);
        }

        return $this->isNewRecord ? false : $this->{$attribute};
    }

    private function getFiles($attribute)
    {
        return explode(',', $this->{$attribute});
    }

    public function uploadFilesSpec()
    {
        return $this->uploadFiles('spec');
    }

    public function getFilesSpec()
    {
        return $this->getFiles('spec');
    }

    public function uploadFilesProcess()
    {
        return $this->uploadFiles('process');
    }

    public function getFilesProcess()
    {
        return $this->getFiles('process');
    }

    public function uploadFilesFda()
    {
        return $this->uploadFiles('fda');
    }

    public function getFilesFda()
    {
        return $this->getFiles('fda');
    }

    public function uploadFilesNutrition()
    {
        return $this->uploadFiles('nutrition');
    }

    public function getFilesNutrition()
    {
        return $this->getFiles('nutrition');
    }

    public function generateFileLinks($attribute)
    {
        $folder = $this->uploadFolders[$attribute];
        return implode('<br />', array_map(function ($value) use ($folder) {
            return Html::a($value, Url::to(Yii::getAlias('@web') . '/' . $folder . '/' . $value), ['target' => '_blank']);
        }, $this->{"getFiles" . ucfirst($attribute)}()));
    }

    public function getUpdatedBy()
    {
        return $this->hasOne(User::class, ['id' => 'updated_by']);
    }

    public function getCreatedBy()
    {
        return $this->hasOne(User::class, ['id' => 'created_by']);
    }
}
