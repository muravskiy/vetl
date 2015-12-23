<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "object".
 *
 * @property integer $id
 * @property integer $type_object_id
 * @property integer $tbl_name_object_id
 * @property integer $tbl_brigada_id
 * @property string $inventory_number
 * @property integer $tbl_locality_id
 * @property integer $facility_id
 * @property string $inspection_date
 * @property string $inspection_interval
 * @property string $next_inspection
 * @property string $protocol_number
 *
 * @property Brigada $tblBrigada
 * @property Facility $facility
 * @property Locality $tblLocality
 * @property Nameobject $tblNameObject
 * @property Typeobject $typeObject
 */
class Object extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'object';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type_object_id', 'tbl_name_object_id', 'tbl_brigada_id', 'tbl_locality_id', 'facility_id', 'inspection_date', 'inspection_interval', 'next_inspection'], 'required'],
            [['type_object_id', 'tbl_name_object_id', 'tbl_brigada_id', 'tbl_locality_id', 'facility_id'], 'integer'],
            [['inspection_date', 'next_inspection'], 'safe'],
            [['inventory_number', 'inspection_interval', 'protocol_number'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'type_object_id' => 'Type Object ID',
            'tbl_name_object_id' => 'Tbl Name Object ID',
            'tbl_brigada_id' => 'Tbl Brigada ID',
            'inventory_number' => 'Inventory Number',
            'tbl_locality_id' => 'Tbl Locality ID',
            'facility_id' => 'Facility ID',
            'inspection_date' => 'Inspection Date',
            'inspection_interval' => 'Inspection Interval',
            'next_inspection' => 'Next Inspection',
            'protocol_number' => 'Protocol Number',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTblBrigada()
    {
        return $this->hasOne(Brigada::className(), ['id' => 'tbl_brigada_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getFacility()
    {
        return $this->hasOne(Facility::className(), ['id' => 'facility_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTblLocality()
    {
        return $this->hasOne(Locality::className(), ['id' => 'tbl_locality_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTblNameObject()
    {
        return $this->hasOne(Nameobject::className(), ['id' => 'tbl_name_object_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTypeObject()
    {
        return $this->hasOne(Typeobject::className(), ['id' => 'type_object_id']);
    }
}
