<?php

namespace backend\modules\product\models;

use Yii;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\db\BaseActiveRecord;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;

/**
 * This is the model class for table "product_spec".
 *
 * @property int $id
 * @property string|null $title
 * @property string|null $files
 */
class ProductSpec extends \yii\db\ActiveRecord
{

    public $FolderProcessFlow = 'products/process';
    public $FolderSpec = 'products/specs';
    public $FolderFda = 'products/fdas';
    public $FolderNutrition = 'products/nutritions';


    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::class,
                'attributes' => [
                    self::EVENT_BEFORE_INSERT => ['created_at'],
                    self::EVENT_BEFORE_UPDATE => ['updated_at'],
                ],
                'value' => function () {
                    return date('Y-m-d H:i:s');
                },
            ],
            [
                'class' => BlameableBehavior::class,
                'attributes' => [
                    BaseActiveRecord::EVENT_BEFORE_INSERT => ['created_by', 'updated_by'],
                    BaseActiveRecord::EVENT_BEFORE_UPDATE => ['updated_by'],
                ],
            ],
        ];
    }


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'product_spec';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['created_at', 'updated_at'], 'safe'],
            [['created_by', 'updated_by'], 'integer'],
            [['product_number', 'revision', 'title', 'description', 'iso_cert'], 'string'],
            [['title'], 'string', 'max' => 200],
            [['product_number', 'revision'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'product_number' => Yii::t('app', 'Product Number'),
            'revision' => Yii::t('app', 'Revision'),
            'title' => Yii::t('app', 'Title'),
            'description' => Yii::t('app', 'Description'),
            'spec' => Yii::t('app', 'Product Specification'),
            'process_flow' => Yii::t('app', 'Process Flow'),
            'fda' => Yii::t('app', 'FDA'),
            'nutrition' => Yii::t('app', 'Nutrition Label'),
            'iso_cert' => Yii::t('app', 'ISO Certificate'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }




    // Spec
    public function uploadFilesSpec()
    {
        $filesName = [];
        $this->spec = UploadedFile::getInstances($this, 'spec');

        if ($this->validate()) {
            if ($this->spec) {
                foreach ($this->spec as $value) {
                    $fileName =  substr(md5(rand(1, 1000) . time()), 0, 8) . '-' . $value->baseName . '.' . $value->extension; //เลือกมา 8 อักษร .นามสกุล
                    $value->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFilesFolderSpec . '/' . $fileName);
                    $filesName[] = $fileName;
                }

                if ($this->isNewRecord) {
                    return implode(',', $filesName);
                } else {
                    return implode(',', ArrayHelper::merge($fileName, $this->getOldAttribute('spec') ? explode(',', $this->getOldAttribute('spec')) : []));
                }
            }
        }
        return $this->isNewRecord ? false : $this->getOldAttribute('spec');
    }

    public function getFilesSpec()
    {
        return explode(',', $this->spec);
    }

    // process_flow
    public function uploadFilesProcessFlow()
    {
        $filesName = [];
        $this->process_flow = UploadedFile::getInstances($this, 'process_flow');

        if ($this->validate()) {
            if ($this->process_flow) {
                foreach ($this->process_flow as $Value) {
                    $fileName =  substr(md5(rand(1, 1000) . time()), 0, 8) . '-' . $Value->baseName . '.' . $Value->extension;
                    $Value->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFilesFolder . '/' . $fileName);
                    $filesName[] = $fileName;
                }

                if ($this->isNewRecord) {
                    return implode(',', $filesName);
                } else {
                    return implode(',', ArrayHelper::merge($fileName, $this->getOldAttribute('process_flow') ? explode(',', $this->getOldAttribute('process_flow')) : []));
                }
            }
        }
        return $this->isNewRecord ? false : $this->getOldAttribute('process_flow');
    }

    public function getFilesProcessFlow()
    {
        return explode(',', $this->process_flow);
    }

    // FDA
    public function uploadFilesFda()
    {
        $filesName = [];
        $this->fda = UploadedFile::getInstances($this, 'fda');

        if ($this->validate()) {
            if ($this->fda) {
                foreach ($this->fda as $value) {
                    $fileName =  substr(md5(rand(1, 1000) . time()), 0, 8) . '-' . $value->baseName . '.' . $value->extension;
                    $value->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFilesFolderFda . '/' . $fileName);
                    $filesName[] = $fileName;
                }

                if ($this->isNewRecord) {
                    return implode(',', $filesName);
                } else {
                    return implode(',', ArrayHelper::merge($fileName, $this->getOldAttribute('fda') ? explode(',', $this->getOldAttribute('fda')) : []));
                }
            }
        }
        return $this->isNewRecord ? false : $this->getOldAttribute('fda');
    }

    public function getFilesFda()
    {
        return explode(',', $this->fda);
    }

    // Nutrition
    public function uploadFilesNutrition()
    {
        $filesName = [];
        $this->nutrition = UploadedFile::getInstances($this, 'nutrition');

        if ($this->validate()) {
            if ($this->nutrition) {
                foreach ($this->nutrition as $value) {
                    $fileName =  substr(md5(rand(1, 1000) . time()), 0, 8) . '-' . $value->baseName . '.' . $value->extension;
                    $value->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFilesFolderNutrition . '/' . $fileName);
                    $filesName[] = $fileName;
                }

                if ($this->isNewRecord) {
                    return implode(',', $filesName);
                } else {
                    return implode(',', ArrayHelper::merge($fileName, $this->getOldAttribute('nutrition') ? explode(',', $this->getOldAttribute('nutrition')) : []));
                }
            }
        }
        return $this->isNewRecord ? false : $this->getOldAttribute('nutrition');
    }

    public function getFilesNutrition()
    {
        return explode(',', $this->nutrition);
    }

      // // generateFileLinks views file
    // public function generateFileLinks($attribute)
    // {
    //     $folder = $this->uploadFolders[$attribute];
    //     return implode('<br />', array_map(function ($value) use ($folder) {
    //         return Html::a($value, Url::to(Yii::getAlias('@web') . '/' . $folder . '/' . $value), ['target' => '_blank']);
    //     }, $this->{"getFiles" . ucfirst($attribute)}()));
    // }

}
