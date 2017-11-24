<?php
require('../main.php');
$user = json_decode(file_get_contents('../common/user.json'), true);
$sidebar = json_decode(file_get_contents('../common/sidebar.json'), true);

$info = array(

);

$info["user"] = $user;
$info["sidebar"] = $sidebar;

$smarty->assign('info', $info);
$smarty->display('study/chapter5.tpl');
?>