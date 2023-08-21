<?php

namespace backend\modules\ex\models;

use Yii;

/**
 * This is the model class for table "products".
 *
 * @property int $id
 * @property string|null $product_code
 * @property int|null $status
 *
 * @property Items[] $items
 * @property ProductItems[] $productItems
 */
class Products extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'products';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['status'], 'integer'],
            [['product_code'], 'string', 'max' => 45],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'product_code' => Yii::t('app', 'Product Code'),
            'status' => Yii::t('app', 'Status'),
        ];
    }

    /**
     * Gets query for [[Items]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getItems()
    {
        return $this->hasMany(Items::class, ['id' => 'items_id'])->viaTable('product_items', ['products_id' => 'id']);
    }

    /**
     * Gets query for [[ProductItems]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProductItems()
    {
        return $this->hasMany(ProductItems::class, ['products_id' => 'id']);
    }
}
