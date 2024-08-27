<?php
/* ====================
[BEGIN_COT_THEME]
Name=Omnis
Version=1.00b
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Cotonti Model Theme
 *
 * @package Cotonti
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL');

include_once cot_incfile('tags', 'plug', 'resources');
include_once cot_incfile('globaltags', 'plug', 'resources');
include_once cot_incfile('icons', 'plug', 'rc');

$R['content_container_selector'] = 'main';

$R['tags_code_cloud_open'] = '<ul class="list-unstyled d-flex flex-wrap gap-2 hashtags">';

$R['gt_open'] = '<ul class="list-unstyled mb-0 d-flex flex-wrap gap-2 hashtags">';
$R['gt_open_mini'] = '<ul class="list-unstyled lh-sm mb-0 d-flex flex-wrap row-gap-1 column-gap-2" id="hashtags_mini">';

$R['userimg_img'] = '<img src="{$src}" alt="' . $L['Avatar'] . '" class="img-fluid {$class}" />';
$R['userimg_default_avatar'] = '<img src="images/blank-avatar.png" alt="' . $L['Avatar'] . '" class="img-fluid" />';

$R['comments_code_edit'] = '<li>' . $R['icon-pencil'] . '<a href="{$edit_url}" class="ms-2">' . Cot::$L['Edit'] . '</a> {$allowed_time}</li>';
$R['comments_code_admin'] =  '<li>' . $R['icon-location-crosshairs'] . '<span class="ms-2">{$ipsearch}</span></li>';
$R['comments_code_admin'] .= '<li>' . $R['icon-trash'] . '<a href="{$delete_url}" class="ms-2 confirmLink">' . Cot::$L['Delete'] . '</a></li>';

$R['users_code_grplist_begin'] = '<ul class="list-unstyled mb-0">';
$R['users_input_grplist_checkbox'] = '<input type="checkbox" class="checkbox ms-1 me-2" name="{$name}" value="1"{$checked}{$attrs} />';

$R['page_icon_file_default'] = 'plugins/attach2/img/types/48/zip.png';

$R['adminblock_classes'] =  'list-unstyled my-3 d-flex justify-content-center flex-wrap row-gap-2 column-gap-2';
