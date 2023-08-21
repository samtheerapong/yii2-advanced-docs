<?php

namespace backend\modules\ex\models;

use Yii;

/**
 * This is the model class for table "product_items".
 *
 * @property int $products_id
 * @property int $items_id
 *
 * @property Items $items
 * @property Products $products
 */
class ProductItems extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'product_items';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['products_id', 'items_id'], 'required'],
            [['products_id', 'items_id'], 'integer'],
            [['products_id', 'items_id'], 'unique', 'targetAttribute' => ['products_id', 'items_id']],
            [['items_id'], 'exist', 'skipOnError' => true, 'targetClass' => Items::class, 'targetAttribute' => ['items_id' => 'id']],
            [['products_id'], 'exist', 'skipOnError' => true, 'targetClass' => Products::class, 'targetAttribute' => ['products_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'products_id' => Yii::t('app', 'Products ID'),
            'items_id' => Yii::t('app', 'Items ID'),
        ];
    }

    /**
     * Gets query for [[Items]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getItems()
    {
        return $this->hasOne(Items::class, ['id' => 'items_id']);
    }

    /**
     * Gets query for [[Products]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasOne(Products::class, ['id' => 'products_id']);
    }
}
