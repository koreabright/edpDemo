<?php
require('../main.php');

$info = array(
	'text' => '666'
);

$smarty->assign('info', $info);
$smarty->display('partner/list.tpl');
?>