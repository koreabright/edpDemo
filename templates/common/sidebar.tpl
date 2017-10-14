<div class="sidebar">
	<div class="big_logo" class="logo"></div>
	<ul>
		{%foreach $info.sidebar as $index => $item%}
		<li>
			<a href="{%if $item.nav_name%}{%$item.url%}{%else%}javascript:void(0);{%/if%}">{%$item.nav_name%}</a>
			
			<ul>
				{%foreach $item.sub_nav as $index => $sub%}
				<li><a href="{%$sub.url%}">{%$sub.nav_name%}</a></li>
				{%/foreach%}
			</ul>
			
		</li>
		{%/foreach%}

	</ul>
</div>