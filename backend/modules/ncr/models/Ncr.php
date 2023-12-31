<?php

namespace backend\modules\ncr\models;

use Yii;
use yii\helpers\Url;

use yii\behaviors\TimestampBehavior;
use backend\modules\ncr\models\NcrStatus;
// use yii\behaviors\BlameableBehavior;

//
use yii\helpers\ArrayHelper;
use backend\modules\ncr\models\Department;
use backend\modules\ncr\models\Problem;
use common\models\User;
use dosamigos\gallery\Gallery;
//
use yii\behaviors\AttributeBehavior;
use yii\db\ActiveRecord;

class Ncr extends \yii\db\ActiveRecord
{
    const UPLOAD_FOLDER = 'ncrs';

    public function behaviors()
    {
        return [
            TimestampBehavior::class,
            [
                'class' => 'mdm\autonumber\Behavior',
                'attribute' => 'ncr_number',
                'group' => $this->id,
                'value' => 'NCR-' . date('ym') . '/?',
                'digit' => 2,
            ],
            $this->getAttributeBehavior('to_department'),
            $this->getAttributeBehavior('problem'),
        ];
    }

    protected function getAttributeBehavior($attributeName)
    {
        return [
            'class' => AttributeBehavior::class,
            'attributes' => [
                ActiveRecord::EVENT_BEFORE_INSERT => $attributeName,
                ActiveRecord::EVENT_BEFORE_UPDATE => $attributeName,
            ],
            'value' => function ($event) use ($attributeName) {
                return implode(',', $this->{$attributeName});
            },
        ];
    }

    public static function tableName()
    {
        return 'ncr';
    }

    public function rules()
    {
        return [
            // [['ncr_number','detail'],'required'],
            [['ncr_number'], 'autonumber', 'format' => 'NCR-' . date('ym') . '/?'],
            [['detail', 'recheck'], 'string'],
            [['ref', 'production_date'], 'string', 'max' => 50],
            [['ncr_number', 'location', 'product_name', 'lot'], 'string', 'max' => 255],
            [['customer_name'], 'string', 'max' => 150],
            [['customer_mobile_phone'], 'string', 'max' => 20],
            [['ref'], 'unique'],
            // [['status'], 'integer'],
            [['product_name', 'from_department', 'notify_by'], 'required'],
            [['status'], 'exist', 'skipOnError' => true, 'targetClass' => NcrStatus::class, 'targetAttribute' => ['status' => 'id']],
            [['start_date', 'end_date', 'proplem_date', 'created_at', 'updated_at', 'to_department', 'problem'], 'safe'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ref' => 'ใช้กับ upload ajax',
            'ncr_number' => 'เลขที่ NCR',
            'problem' => 'กระบวนการที่พบปัญหา',
            'to_department' => 'ถึงหน่วยงาน',
            'product_name' => 'ชื่อสินค้า',
            'production_date' => 'วันที่ผลิต',
            'lot' => 'ล็อต',
            'customer_name' => 'ชื่อลูกค้า',
            'customer_mobile_phone' => 'เบอร์โทร',
            'detail' => 'รายละเอียด',
            'from_department' => 'จากหน่วยงาน',
            'notify_by' => 'ผู้รายงาน',
            'proplem_date' => 'วันที่พบปัญหา',
            'recheck' => 'การดำเนินการเบื้องต้น',
            'created_at' => 'วันที่',
            'updated_at' => 'ปรับปรุงเมื่อ',
            'status' => 'สถานะ',
            'start_date' => 'วันที่เริ่ม',
            'end_date' => 'วันที่เสร็จ',
            'location' => 'สถานที่',
            'toDepartment' => 'ถึง',
            'images' => 'รูปภาพ',
        ];
    }



    // Relation
    public function getNcrStatus()
    {
        return $this->hasOne(NcrStatus::class, ['id' => 'status']);
    }

    public function getFromDepartment()
    {
        return $this->hasOne(Department::class, ['department_id' => 'from_department']);
    }

    public function getToDepartment()
    {
        return $this->hasOne(Department::class, ['department_id' => 'to_department']);
    }

    public function getProblem()
    {
        return $this->hasOne(Problem::class, ['problem_id' => 'problem']);
    }

    public function getNotifyby()
    {
        return $this->hasOne(User::class, ['id' => 'notify_by']);
    }


    // Set Upload
    public static function getUploadPath()
    {
        return Yii::getAlias('@webroot') . '/' . self::UPLOAD_FOLDER . '/';
    }

    public static function getUploadUrl()
    {
        return Url::base(true) . '/' . self::UPLOAD_FOLDER . '/';
    }




    public function todepartmentToArray()
    {
        return $this->to_department = explode(',', $this->to_department);
    }

    public function problemToArray()
    {
        return $this->problem = explode(',', $this->problem);
    }

    public function getTodepartmentName()
    {
        return implode(', ', $this->getDepartmentNames('to_department'));
    }

    public function getProblemName()
    {
        return implode(', ', $this->getProblemNames());
    }

    protected function getDepartmentNames($attributeName)
    {
        $departments = ArrayHelper::map(Department::find()->all(), 'department_id', 'details');
        $selectedDepartments = explode(',', $this->{$attributeName});
        $selectedDepartmentNames = [];

        foreach ($departments as $key => $departmentName) {
            if (in_array((int) $key, $selectedDepartments)) {
                $selectedDepartmentNames[] = $departmentName;
            }
        }

        return $selectedDepartmentNames;
    }

    protected function getProblemNames()
    {
        $problems = ArrayHelper::map(Problem::find()->all(), 'problem_id', 'name');
        $selectedProblems = explode(',', $this->problem);
        $selectedProblemNames = [];

        foreach ($problems as $key => $problemName) {
            if (in_array((int) $key, $selectedProblems)) {
                $selectedProblemNames[] = $problemName;
            }
        }

        return $selectedProblemNames;
    }


    public function getThumbnails($ref, $ncr_number)
    {
        $uploadFiles   = Uploads::find()->where(['ref' => $ref])->all();
        $preview = [];
        foreach ($uploadFiles as $file) {
            $preview[] = [
                'url' => self::getUploadUrl(true) . $ref . '/' . $file->real_filename,
                'src' => self::getUploadUrl(true) . $ref . '/thumbnail/' . $file->real_filename,
                'options' => [
                    'title' => $ncr_number,
                    // 'style' => '<ul style="list-style-type: none; padding: 0;">'
                ]
            ];
        }
        return $preview;
    }


    function renderGallery($model)
    {
        $thumbnails = $model->getThumbnails($model->ref, $model->ncr_number);
        $galleryItems = [];

        foreach ($thumbnails as $thumbnail) {
            $galleryItems[] = [
                'url' => $thumbnail['url'],
                'src' => $thumbnail['src'],
                'options' => [
                    'class' => 'list-group-item mt-1',
                ],
            ];
        }

        return Gallery::widget([
            'items' => $galleryItems,
            'options' => [
                'id' => 'gallery_' . $model->id,
                
            ],
        ]);
    }
}
