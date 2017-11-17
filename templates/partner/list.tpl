{%extends file="../common/layout.tpl"%}
{%block name="title"%}第一个页面{%/block%}
{%block name="content"%}
	<div>
		<p>{%$info.text%}</p>
	</div>
{%/block%}
{%block name="js"%}
<script type="text/javascript">
	var info = {%json_encode($info)%};
	require(['partner/index']);
</script>
{%/block%}