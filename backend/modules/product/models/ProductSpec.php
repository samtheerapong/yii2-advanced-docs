<?php

namespace backend\modules\product\models;

use Yii;
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

    public $uploadFilesFolder = 'products/files'; //ที่เก็บไฟล์
    public $uploadFilesFolderSpec = 'products/specs'; //ที่เก็บไฟล์
    public $uploadFilesFolderFda = 'products/fdas'; //ที่เก็บไฟล์
    public $uploadFilesFolderNutrition = 'products/nutritions'; //ที่เก็บไฟล์


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
            // [['files'], 'string'],
            [['title'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'title' => Yii::t('app', 'Title'),
            'files' => Yii::t('app', 'ไฟล์อื่นๆ'),
            'spec' => Yii::t('app', 'สเปค'),
            'fda' => Yii::t('app', 'อย.'),
            'nutrition' => Yii::t('app', 'Nutrition Label'),
        ];
    }


    // File
    public function uploadFiles()
    {
        $filesName = []; //กำหนดชื่อไฟล์ที่จะ return
        $this->files = UploadedFile::getInstances($this, 'files');

        if ($this->validate()) {
            if ($this->files) {
                foreach ($this->files as $file) {
                    // $fileName = substr(md5(rand(1, 1000) . time()), 0, 15) . '.' . $file->extension; //เลือกมา 15 อักษร .นามสกุล
                    $fileName =  substr(md5(rand(1, 1000) . time()), 0, 8) . '-' . $file->baseName . '.' . $file->extension; //เลือกมา 15 อักษร .นามสกุล
                    //$fileName = iconv('UTF-8',    'WINDOWS-874',$file->baseName).'.'.$file->extension; //ใช้ไฟล์ภาษาไทย
                    $file->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFilesFolder . '/' . $fileName);
                    $filesName[] = $fileName;
                }

                if ($this->isNewRecord) { //ถ้าเป็นการเพิ่ม Record ใหม่ให้บันทึกไฟล์ aaa.aaa,bbb.bbb ....
                    return implode(',', $filesName);
                } else { //ถ้าเป็นการปรับปรุงให้เพิ่มจากของเดิม
                    return implode(',', ArrayHelper::merge($fileName, $this->getOldAttribute('files') ? explode(',', $this->getOldAttribute('files')) : []));
                }
            } //end files upload

        } //end validate
        return $this->isNewRecord ? false : $this->getOldAttribute('files'); //ถ้าไม่มีการ upload ให้ใช้ข้อมูลเดิม
    }

    public function getFiles()
    {
        return explode(',', $this->files);
    }

    // Spec
    public function uploadFilesSpec()
    {
        $filesName = []; //กำหนดชื่อไฟล์ที่จะ return
        $this->spec = UploadedFile::getInstances($this, 'spec');

        if ($this->validate()) {
            if ($this->spec) {
                foreach ($this->spec as $value) {
                    // $fileName = substr(md5(rand(1, 1000) . time()), 0, 15) . '.' . $file->extension; //เลือกมา 15 อักษร .นามสกุล
                    $fileName =  substr(md5(rand(1, 1000) . time()), 0, 8) . '-' . $value->baseName . '.' . $value->extension; //เลือกมา 15 อักษร .นามสกุล
                    //$fileName = iconv('UTF-8',    'WINDOWS-874',$file->baseName).'.'.$file->extension; //ใช้ไฟล์ภาษาไทย
                    $value->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFilesFolderSpec . '/' . $fileName);
                    $filesName[] = $fileName;
                }

                if ($this->isNewRecord) { //ถ้าเป็นการเพิ่ม Record ใหม่ให้บันทึกไฟล์ aaa.aaa,bbb.bbb ....
                    return implode(',', $filesName);
                } else { //ถ้าเป็นการปรับปรุงให้เพิ่มจากของเดิม
                    return implode(',', ArrayHelper::merge($fileName, $this->getOldAttribute('spec') ? explode(',', $this->getOldAttribute('spec')) : []));
                }
            } //end files upload

        } //end validate
        return $this->isNewRecord ? false : $this->getOldAttribute('spec'); //ถ้าไม่มีการ upload ให้ใช้ข้อมูลเดิม
    }

    public function getFilesSpec()
    {
        return explode(',', $this->spec);
    }

    // FDA
    public function uploadFilesFda()
    {
        $filesName = []; //กำหนดชื่อไฟล์ที่จะ return
        $this->fda = UploadedFile::getInstances($this, 'fda');

        if ($this->validate()) {
            if ($this->fda) {
                foreach ($this->fda as $value) {
                    // $fileName = substr(md5(rand(1, 1000) . time()), 0, 15) . '.' . $file->extension; //เลือกมา 15 อักษร .นามสกุล
                    $fileName =  substr(md5(rand(1, 1000) . time()), 0, 8) . '-' . $value->baseName . '.' . $value->extension; //เลือกมา 15 อักษร .นามสกุล
                    //$fileName = iconv('UTF-8',    'WINDOWS-874',$file->baseName).'.'.$file->extension; //ใช้ไฟล์ภาษาไทย
                    $value->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFilesFolderFda . '/' . $fileName);
                    $filesName[] = $fileName;
                }

                if ($this->isNewRecord) { //ถ้าเป็นการเพิ่ม Record ใหม่ให้บันทึกไฟล์ aaa.aaa,bbb.bbb ....
                    return implode(',', $filesName);
                } else { //ถ้าเป็นการปรับปรุงให้เพิ่มจากของเดิม
                    return implode(',', ArrayHelper::merge($fileName, $this->getOldAttribute('fda') ? explode(',', $this->getOldAttribute('fda')) : []));
                }
            } //end files upload

        } //end validate
        return $this->isNewRecord ? false : $this->getOldAttribute('fda'); //ถ้าไม่มีการ upload ให้ใช้ข้อมูลเดิม
    }

    public function getFilesFda()
    {
        return explode(',', $this->fda);
    }

    // Nutrition
    public function uploadFilesNutrition()
    {
        $filesName = []; //กำหนดชื่อไฟล์ที่จะ return
        $this->nutrition = UploadedFile::getInstances($this, 'nutrition');

        if ($this->validate()) {
            if ($this->nutrition) {
                foreach ($this->nutrition as $value) {
                    // $fileName = substr(md5(rand(1, 1000) . time()), 0, 15) . '.' . $file->extension; //เลือกมา 15 อักษร .นามสกุล
                    $fileName =  substr(md5(rand(1, 1000) . time()), 0, 8) . '-' . $value->baseName . '.' . $value->extension; //เลือกมา 15 อักษร .นามสกุล
                    //$fileName = iconv('UTF-8',    'WINDOWS-874',$file->baseName).'.'.$file->extension; //ใช้ไฟล์ภาษาไทย
                    $value->saveAs(Yii::getAlias('@webroot') . '/' . $this->uploadFilesFolderNutrition . '/' . $fileName);
                    $filesName[] = $fileName;
                }

                if ($this->isNewRecord) { //ถ้าเป็นการเพิ่ม Record ใหม่ให้บันทึกไฟล์ aaa.aaa,bbb.bbb ....
                    return implode(',', $filesName);
                } else { //ถ้าเป็นการปรับปรุงให้เพิ่มจากของเดิม
                    return implode(',', ArrayHelper::merge($fileName, $this->getOldAttribute('nutrition') ? explode(',', $this->getOldAttribute('nutrition')) : []));
                }
            } //end files upload

        } //end validate
        return $this->isNewRecord ? false : $this->getOldAttribute('nutrition'); //ถ้าไม่มีการ upload ให้ใช้ข้อมูลเดิม
    }

    public function getFilesNutrition()
    {
        return explode(',', $this->nutrition);
    }
}
