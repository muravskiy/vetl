<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "brigada".
 *
 * @property integer $id
 * @property string $room_brigade
 * @property string $last_name_SHNS
 *
 * @property Object[] $objects
 */
class Brigada extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'brigada';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['room_brigade', 'last_name_SHNS'], 'required'],
            [['room_brigade', 'last_name_SHNS'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'room_brigade' => 'Room Brigade',
            'last_name_SHNS' => 'Last Name  Shns',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getObjects()
    {
        return $this->hasMany(Object::className(), ['tbl_brigada_id' => 'id']);
    }
}
