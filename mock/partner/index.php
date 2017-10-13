<?php
require('../main.php');
// $info['user'] = 

$info = array(
	'text' => '666'
);

$smarty->assign('info', $info);
$smarty->display('partner/list.tpl');
?>