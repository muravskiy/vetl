<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Object;

/**
 * ObjectSearch represents the model behind the search form about `app\models\Object`.
 */
class ObjectSearch extends Object
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'type_object_id', 'tbl_name_object_id', 'tbl_brigada_id', 'tbl_locality_id', 'facility_id'], 'integer'],
            [['inventory_number', 'inspection_date', 'inspection_interval', 'next_inspection', 'protocol_number'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
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
        $query = Object::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'type_object_id' => $this->type_object_id,
            'tbl_name_object_id' => $this->tbl_name_object_id,
            'tbl_brigada_id' => $this->tbl_brigada_id,
            'tbl_locality_id' => $this->tbl_locality_id,
            'facility_id' => $this->facility_id,
            'inspection_date' => $this->inspection_date,
            'next_inspection' => $this->next_inspection,
        ]);

        $query->andFilterWhere(['like', 'inventory_number', $this->inventory_number])
            ->andFilterWhere(['like', 'inspection_interval', $this->inspection_interval])
            ->andFilterWhere(['like', 'protocol_number', $this->protocol_number]);

        return $dataProvider;
    }
}
