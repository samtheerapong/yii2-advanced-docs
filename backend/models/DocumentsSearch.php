<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Documents;

/**
 * DocumentsSearch represents the model behind the search form of `backend\models\Documents`.
 */
class DocumentsSearch extends Documents
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'created_by', 'updated_by', 'categories_id', 'occupier_id', 'types_id', 'status_id', 'document_date', 'raw_material'], 'integer'],
            [['numbers', 'title', 'description', 'created_at', 'updated_at', 'ref', 'docs', 'expiration_date', 'document_date', 'notify_date', 'supplier_name'], 'safe'],
            // [['notify_date'], 'safe'],
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
        $query = Documents::find()
            ->orderBy(['status_id' => 1]);

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            // เรียงล่าสุดก่อน จาก id
            'sort' => ['defaultOrder' => [
                // 'id' => 'DESC'
                'categories_id' => SORT_DESC,
            ]]
        ]);


        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            // 'expiration_date' => $this->expiration_date,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
            'raw_material' => $this->raw_material,
            'categories_id' => $this->categories_id,
            'occupier_id' => $this->occupier_id,
            'types_id' => $this->types_id,
            'status_id' => $this->status_id,
            'document_date' => $this->document_date,
        ]);

        $query->andFilterWhere(['like', 'numbers', $this->numbers])
            ->andFilterWhere(['like', 'expiration_date', $this->expiration_date])
            ->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'supplier_name', $this->supplier_name])
            ->andFilterWhere(['like', 'ref', $this->ref])
            ->andFilterWhere(['like', 'docs', $this->docs]);

        return $dataProvider;
    }
}
