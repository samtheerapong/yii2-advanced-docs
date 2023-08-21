<?php

namespace backend\modules\ex\models;

use Yii;

/**
 * This is the model class for table "items".
 *
 * @property int $id
 * @property string|null $code
 * @property string|null $name
 * @property string|null $files
 * @property string|null $exp_date
 *
 * @property ProductItems[] $productItems
 * @property Products[] $products
 */
class Items extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'items';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['files'], 'string'],
            [['exp_date'], 'safe'],
            [['code'], 'string', 'max' => 45],
            [['name'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'code' => Yii::t('app', 'Code'),
            'name' => Yii::t('app', 'Name'),
            'files' => Yii::t('app', 'Files'),
            'exp_date' => Yii::t('app', 'Exp Date'),
        ];
    }

    /**
     * Gets query for [[ProductItems]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProductItems()
    {
        return $this->hasMany(ProductItems::class, ['items_id' => 'id']);
    }

    /**
     * Gets query for [[Products]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasMany(Products::class, ['id' => 'products_id'])->viaTable('product_items', ['items_id' => 'id']);
    }
}
