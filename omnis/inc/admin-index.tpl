<div id="adminblock">
	<ul class="{PHP.R.adminblock_classes}">
		<li>
			<a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
		</li>
		<!-- IF (PHP|cot_plugin_active('clearcache')) AND {PHP|cot_auth('plug', 'clearcache', 'W')} -->
		<li>
			<a href="{PHP.clearcache_url}" class="text-black bg-warning">{PHP.clearcache_title}</a>
		</li>
		<!-- ENDIF -->
		<li>
			{PHP.out.loginout}
		</li>
	</ul>
</div>
