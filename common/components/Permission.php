<?php

/**
 * Created by HanumanIT Co., Ltd.
 * User: Manop Kongoon
 * Date: 21/1/2560
 * Time: 16:41
 */

namespace common\components;

use common\models\User;
use yii\filters\AccessRule;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;

class Permission extends AccessRule
{
    protected function matchRole($user)
    {
        if (empty($this->roles)) {
            return true;
        }
        foreach ($this->roles as $role) {
            if ($role === '?') {
                if ($user->getIsGuest()) {
                    return true;
                }
            } else if ($role === '@') {
                if (!$user->getIsGuest()) {
                    return true;
                }
            } else if (!$user->getIsGuest() && $role === $user->identity->role) {
                return true;
            }
        }
        return false;
    }

   
}
