<?php
/**
 * JavaScript and CSS loader for Kudos Theme
 *
 * @package Kudos
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

$R['theme-version'] = 200;

$R['theme-facebook-link'] = '#';
$R['theme-facebook-followers'] = 99;

$R['theme-twitter-link'] = '#';
$R['theme-twitter-followers'] = 99;
$R['theme-twitter-user'] = 'cotonti';

$R['theme-vk-link'] = '#';
$R['theme-vk-followers'] = 99;

$R['theme-instagram-link'] = '#';
$R['theme-instagram-followers'] = 99;

$R['theme-telegram-link'] = '#';
$R['theme-telegram-followers'] = 99;

require_once cot_incfile('omnis', 'theme', 'rc.pagination');

// Preloader
Resources::linkFile($cfg['themes_dir'] . '/' . $usr['theme'] . '/css/preloader.css', 'css', 1);
Resources::linkFileFooter($cfg['themes_dir'] . '/' . $usr['theme'] . '/js/preloader.js', 'js', 100);

Resources::linkFileFooter($cfg['themes_dir'] . '/' . $usr['theme'].'/css/default.css?v=' . $R['theme-version'], 'css', 60);
Resources::linkFileFooter($cfg['themes_dir'] . '/' . $usr['theme'].'/css/responsive.css?v=' . $R['theme-version'], 'css', 61);
Resources::linkFileFooter($cfg['themes_dir'] . '/' . $usr['theme'].'/css/modalbox.css', 'css', 62);

Resources::linkFileFooter($cfg['themes_dir'] . '/' . $usr['theme'].'/css/schemes.css?v=' . $R['theme-version'], 'css', 70);
Resources::linkFileFooter($cfg['themes_dir'] . '/' . $usr['theme'].'/js/schemes.js', 'js', 91);

Resources::linkFileFooter($cfg['themes_dir'] . '/' . $usr['theme'].'/js/fixforms.min.js', 'js', 90);
Resources::linkFileFooter($cfg['themes_dir'] . '/' . $usr['theme'].'/js/js.js', 'js', 99);
