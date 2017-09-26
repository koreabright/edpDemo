<?php
$root_path = dirname(dirname(__FILE__));
require $root_path . '/libs/Smarty.class.php';

$smarty = new Smarty();

$smarty->setTemplateDir($root_path . '/templates');
$smarty->setCompileDir($root_path . '/templates_c');

$smarty->config_dir = $root_path . "/configs";
$smarty->cache_dir = $root_path . "/cache";

$smarty->left_delimiter = '{%';
$smarty->right_delimiter = '%}';
?>