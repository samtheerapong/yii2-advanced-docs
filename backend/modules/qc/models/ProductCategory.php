<?php

namespace backend\modules\qc\models;

use Yii;

/**
 * This is the model class for table "product_category".
 *
 * @property int $id
 * @property string|null $code รหัส
 * @property string $name หมวดหมู่
 * @property string|null $details รายละเอียด
 * @property string|null $color สี
 */
class ProductCategory extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'product_category';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['details'], 'string'],
            [['code', 'color'], 'string', 'max' => 45],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'code' => Yii::t('app', 'รหัส'),
            'name' => Yii::t('app', 'หมวดหมู่'),
            'details' => Yii::t('app', 'รายละเอียด'),
            'color' => Yii::t('app', 'สี'),
        ];
    }

    public function getProducts()
    {
        return $this->hasMany(Products::class, ['category' => 'id']);
    }
}
