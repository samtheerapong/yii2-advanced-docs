<?php

namespace backend\modules\product\models;

use backend\models\Status;
use common\models\User;
use Yii;
use yii\behaviors\AttributeBehavior;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\bootstrap5\Html;
use yii\db\ActiveRecord;
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
            $this->getAttributeBehavior('iso'),
        ];
    }

    protected function getAttributeBehavior($attributeName)
    {
        return [
            'class' => AttributeBehavior::class,
            'attributes' => [
                ActiveRecord::EVENT_BEFORE_INSERT => $attributeName,
                ActiveRecord::EVENT_BEFORE_UPDATE => $attributeName,
            ],
            'value' => function ($event) use ($attributeName) {
                return implode(',', $this->{$attributeName});
            },
        ];
    }

    public static function tableName()
    {
        return 'product_spec';
    }

    public function rules()
    {
        return [
            [['created_at', 'updated_at', 'revised_date', 'spec_expiration', 'process_expiration', 'fda_expiration', 'nutrition_expiration', 'iso'], 'safe'],
            [['created_by', 'updated_by'], 'integer'],
            [['product_number', 'revision', 'title', 'description'], 'string'],
            [['title'], 'string', 'max' => 200],
            [['product_number', 'revision'], 'string', 'max' => 50],
            [['product_status'], 'exist', 'skipOnError' => true, 'targetClass' => Status::class, 'targetAttribute' => ['product_status' => 'id']],
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
            'iso' => Yii::t('app', 'ISO Certificate'),
            'product_status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }

    //****** Relationship
    public function getUpdatedBy()
    {
        return $this->hasOne(User::class, ['id' => 'updated_by']);
    }

    public function getCreatedBy()
    {
        return $this->hasOne(User::class, ['id' => 'created_by']);
    }

    public function getProductStatus()
    {
        return $this->hasOne(Status::class, ['id' => 'product_status']);
    }

    //****** Create Upload
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

    //****** getFilesUrls
    public function getSpecUrls()
    {
        return $this->getFilesUrls('spec');
    }

    public function getProcessUrls()
    {
        return $this->getFilesUrls('process');
    }

    public function getFdaUrls()
    {
        return $this->getFilesUrls('fda');
    }

    public function getNutritionUrls()
    {
        return $this->getFilesUrls('nutrition');
    }

    //****** getFilesLinks
    public function generateFileLinks($attribute)
    {
        $folder = $this->uploadFolders[$attribute];
        return implode('<br />', array_map(function ($value) use ($folder) {
            return Html::a($value, Url::to(Yii::getAlias('@web') . '/' . $folder . '/' . $value), ['target' => '_blank']);
        }, $this->{"getFiles" . ucfirst($attribute)}()));
    }

    public function getInitialPreview($attribute)
    {
        $folder = $this->uploadFolders[$attribute];
        $files = $this->getFiles($attribute);

        $initialPreview = [];
        $initialPreviewConfig = [];

        foreach ($files as $fileName) {
            $initialPreview[] = Yii::getAlias('@web') . '/' . $folder . '/' . $fileName;
            $initialPreviewConfig[] = [
                'caption' => $fileName,
                'width' => '120px',
                'url' => Url::to(['/product/product-spec/delete-ajax', 'id' => $this->id, 'fileName' => $fileName]),
                'key' => $fileName,
            ];
        }

        return [$initialPreview, $initialPreviewConfig];
    }


    //****** uploadFiles
    private function uploadFiles($attribute)
    {
        $filesName = [];
        $files = UploadedFile::getInstances($this, $attribute);

        if ($this->validate() && $files) {
            foreach ($files as $file) {
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

    public function getFilesUrls($attribute)
    {

        $folder = $this->uploadFolders[$attribute];
        $files = $this->getFiles($attribute);

        return array_map(fn ($fileName) => Yii::getAlias('@web') . '/' . $folder . '/' . $fileName, $files);
    }

    //********** InitialPreviewConfig
    public function getInitialPreviewConfig($attribute)
    {
        $files = $this->getFiles($attribute);
        $initialPreviewConfig = array_map(fn ($fileName) => [
            'type' => 'pdf',
            'url' => Url::to(['delete-file', 'id' => $this->id, 'fileName' => $fileName]),
            'key' => $fileName,
        ], $files);

        return $initialPreviewConfig;
    }

    //********** ISO Array **********//
    // Relationship Iso Model อย่าลืม Use Model ด้วย
    public function getIso()
    {
        return $this->hasOne(Iso::class, ['id' => 'iso']);
    }

    public function isoToArray()
    {
        return $this->iso = explode(',', $this->iso);
        /*  อย่าลืมไปใส่ที่ actionUpdate
            $model->isoToArray();
        */
    }

    public function getIsoNameArray()
    {
        return implode(', ', $this->getIsoNames('iso'));
    }

    protected function getIsoNames()
    {
        $datas = ArrayHelper::map(Iso::find()->all(), 'id', 'name');
        $explodeDatas = explode(',', $this->iso);
        $selectDataNames = [];

        foreach ($datas as $key => $data) {
            if (in_array((int) $key, $explodeDatas)) {
                $selectDataNames[] = $data;
            }
        }
        return $selectDataNames;
    }
}
