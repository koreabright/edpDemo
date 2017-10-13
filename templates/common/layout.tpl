<!DOCTYPE html>
<html>
<head>
	<title>{%block name="title"%}{%/block%}</title>
	<script type="text/javascript" data-main="/src/js/common/main" src="/src/js/dep/require.js"></script>
	<link type="text/css" rel="stylesheet" href="/src/style/common/base.less" />
	{%block name="css"%}{%/block%}
</head>
<body>
	{%block name="sidebar"%}
		{%include file="./sidebar.tpl"%}
	{%/block%}
	{%block name="header"%}
		{%include file="./header.tpl"%}
	{%/block%}
	<div class="content">
		{%block name="content"%}{%/block%}
	</div>
	{%block name="js"%}{%/block%}
</body>
</html>