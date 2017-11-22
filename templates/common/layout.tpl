<!DOCTYPE html>
<html>
<head>
	<title>{%block name="title"%}{%/block%}</title>
	<script type="text/javascript" src="/src/js/dep/require.js"></script>
	<script type="text/javascript" src="/src/js/dep/jquery.js"></script>
	<link type="text/css" rel="stylesheet" href="/src/style/common/base.less" />
	{%block name="css"%}{%/block%}
</head>
<body>
<div class="wrap">
	{%block name="sidebar"%}
		{%include file="./sidebar.tpl"%}
	{%/block%}
	{%block name="header"%}
		{%include file="./header.tpl"%}
	{%/block%}
	<div class="content">
		{%block name="content"%}{%/block%}
	</div>
</div>

<script>
	requirejs.config({
		baseUrl:'/src/js'
	});
	require(['common/main']);
</script>
{%block name="js"%}{%/block%}
</body>

</html>