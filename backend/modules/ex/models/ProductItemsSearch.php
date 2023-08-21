<?php

namespace backend\modules\ex\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\modules\ex\models\ProductItems;

/**
 * ProductItemsSearch represents the model behind the search form of `backend\modules\ex\models\ProductItems`.
 */
class ProductItemsSearch extends ProductItems
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['products_id', 'items_id'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = ProductItems::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'products_id' => $this->products_id,
            'items_id' => $this->items_id,
        ]);

        return $dataProvider;
    }
}
