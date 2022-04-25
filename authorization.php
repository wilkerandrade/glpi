<?php

include_once dirname(__FILE__) . '/' . 'components/application.php';
include_once dirname(__FILE__) . '/' . 'components/page/page.php';
include_once dirname(__FILE__) . '/' . 'components/security/permission_set.php';
include_once dirname(__FILE__) . '/' . 'components/security/user_authentication/hard_coded_user_authentication.php';
include_once dirname(__FILE__) . '/' . 'components/security/grant_manager/hard_coded_user_grant_manager.php';
include_once dirname(__FILE__) . '/' . 'components/security/recaptcha.php';
include_once dirname(__FILE__) . '/' . 'components/security/user_identity_storage/user_identity_session_storage.php';

$users = array('admin' => '81dc9bdb52d04dc20036dbd8313ed055',
    'suporte' => '81dc9bdb52d04dc20036dbd8313ed055',
    'wilkersilva' => '81dc9bdb52d04dc20036dbd8313ed055');

$grants = array('guest' => 
        array()
    ,
    'defaultUser' => 
        array('atendimento' => new PermissionSet(false, false, false, false))
    ,
    'guest' => 
        array('atendimento' => new PermissionSet(false, false, false, false))
    ,
    'admin' => 
        array('atendimento' => new PermissionSet(false, false, false, false))
    ,
    'suporte' => 
        array('atendimento' => new PermissionSet(false, false, false, false))
    ,
    'wilkersilva' => 
        array('atendimento' => new PermissionSet(false, false, false, false))
    );

$appGrants = array('guest' => new PermissionSet(false, false, false, false),
    'defaultUser' => new PermissionSet(true, false, false, false),
    'guest' => new PermissionSet(false, false, false, false),
    'admin' => new AdminPermissionSet(),
    'suporte' => new AdminPermissionSet(),
    'wilkersilva' => new AdminPermissionSet());

$dataSourceRecordPermissions = array();

$tableCaptions = array('atendimento' => 'Atendimento');

function GetReCaptcha($formId) {
    return null;
}

function SetUpUserAuthorization()
{
    global $users;
    global $grants;
    global $appGrants;
    global $dataSourceRecordPermissions;

    $hasher = GetHasher('md5');
    $userAuthentication = new HardCodedUserAuthentication(new UserIdentitySessionStorage(), false, $hasher, $users);
    $grantManager = new HardCodedUserGrantManager($grants, $appGrants);

    GetApplication()->SetUserAuthentication($userAuthentication);
    GetApplication()->SetUserGrantManager($grantManager);
    GetApplication()->SetDataSourceRecordPermissionRetrieveStrategy(new HardCodedDataSourceRecordPermissionRetrieveStrategy($dataSourceRecordPermissions));
}
