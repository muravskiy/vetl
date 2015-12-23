<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "hazardcategory".
 *
 * @property string $id
 * @property string $hazard_category
 *
 * @property Facility[] $facilities
 */
class Hazardcategory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'hazardcategory';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['hazard_category'], 'required'],
            [['hazard_category'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'hazard_category' => 'Hazard Category',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFacilities()
    {
        return $this->hasMany(Facility::className(), ['hazard_category_id' => 'id']);
    }
}
