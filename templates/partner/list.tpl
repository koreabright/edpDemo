{%extends file="../common/layout.tpl"%}
{%block name="title"%}第一个页面{%/block%}
{%block name="content"%}
	<div id="partner">
		<div class="search-area">
			<p>
				<input type="text" class="datepick-input" />
			</p>
			<p>
				<input type="text" id="d241" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" value="" class="Wdate" style="width:300px"/>
			</p>
		</div>
	</div>
{%/block%}
{%block name="js"%}
<script type="text/javascript">
	var info = {%json_encode($info)%};
	require(['partner/index']);
</script>
{%/block%}