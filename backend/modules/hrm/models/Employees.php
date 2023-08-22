<?php

namespace backend\modules\hrm\models;

use Yii;

/**
 * This is the model class for table "employees".
 *
 * @property int $employee_id
 * @property int|null $user_id
 * @property string|null $employee_code
 * @property string|null $th_fname
 * @property string|null $th_lname
 * @property string|null $en_fname
 * @property string|null $en_lname
 * @property string|null $nickname
 * @property string|null $phone
 * @property string|null $photo
 * @property string|null $files
 */
class Employees extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'employees';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id'], 'integer'],
            [['photo', 'files'], 'string'],
            [['employee_code', 'th_fname', 'th_lname', 'en_fname', 'en_lname', 'nickname', 'phone'], 'string', 'max' => 100],
            [['employee_code'], 'unique'],
            [['user_id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'employee_id' => Yii::t('app', 'Employee ID'),
            'user_id' => Yii::t('app', 'User ID'),
            'employee_code' => Yii::t('app', 'Employee Code'),
            'th_fname' => Yii::t('app', 'Th Fname'),
            'th_lname' => Yii::t('app', 'Th Lname'),
            'en_fname' => Yii::t('app', 'En Fname'),
            'en_lname' => Yii::t('app', 'En Lname'),
            'nickname' => Yii::t('app', 'Nickname'),
            'phone' => Yii::t('app', 'Phone'),
            'photo' => Yii::t('app', 'Photo'),
            'files' => Yii::t('app', 'Files'),
        ];
    }
}
