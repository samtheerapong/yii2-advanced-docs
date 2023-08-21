<?php

namespace backend\modules\product\models;

use Yii;

/**
 * This is the model class for table "iso".
 *
 * @property int $id
 * @property string $iso_name
 * @property string $iso_files
 * @property string $iso_exp
 * @property int $product_spec_id
 */
class Iso extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'iso';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['iso_name', 'iso_files', 'iso_exp', 'product_spec_id'], 'required'],
            [['iso_files'], 'string'],
            [['iso_exp'], 'safe'],
            [['product_spec_id'], 'integer'],
            [['iso_name'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'iso_name' => Yii::t('app', 'Iso Name'),
            'iso_files' => Yii::t('app', 'Iso Files'),
            'iso_exp' => Yii::t('app', 'Iso Exp'),
            'product_spec_id' => Yii::t('app', 'Product Spec ID'),
        ];
    }
}
