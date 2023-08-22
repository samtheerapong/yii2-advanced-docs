<?php

namespace backend\modules\hrm\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\modules\hrm\models\Employees;

/**
 * EmployeesSearch represents the model behind the search form of `backend\modules\hrm\models\Employees`.
 */
class EmployeesSearch extends Employees
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['employee_id', 'user_id'], 'integer'],
            [['employee_code', 'th_fname', 'th_lname', 'en_fname', 'en_lname', 'nickname', 'phone', 'photo', 'files'], 'safe'],
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
        $query = Employees::find();

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
            'employee_id' => $this->employee_id,
            'user_id' => $this->user_id,
        ]);

        $query->andFilterWhere(['like', 'employee_code', $this->employee_code])
            ->andFilterWhere(['like', 'th_fname', $this->th_fname])
            ->andFilterWhere(['like', 'th_lname', $this->th_lname])
            ->andFilterWhere(['like', 'en_fname', $this->en_fname])
            ->andFilterWhere(['like', 'en_lname', $this->en_lname])
            ->andFilterWhere(['like', 'nickname', $this->nickname])
            ->andFilterWhere(['like', 'phone', $this->phone])
            ->andFilterWhere(['like', 'photo', $this->photo])
            ->andFilterWhere(['like', 'files', $this->files]);

        return $dataProvider;
    }
}
