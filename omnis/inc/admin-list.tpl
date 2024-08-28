<div id="adminblock">
	<ul class="{PHP.R.adminblock_classes}">
		<li>
			<a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
		</li>
		<li>
			<a href="admin.php?m=structure&n=page&id={PHP.cat.id}&x={PHP.sys.xk}">Настройки раздела</a>
		</li>
		<li>
			{LIST_SUBMIT_NEW_PAGE}
		</li>
		<!-- IF (PHP|cot_plugin_active('clearcache')) AND {PHP|cot_auth('plug', 'clearcache', 'W')} -->
		<li>
			<a href="{PHP.clearcache_url}" class="text-black bg-warning">{PHP.clearcache_title}</a>
		</li>
		<!-- ENDIF -->
		<!-- IF (PHP|cot_plugin_active('attach2')) AND {PHP|cot_auth('plug', 'attach2', 'W')} -->
		<li>
			{PHP.cat.id|att_widget('list', $this, 'attach2.link')}
		</li>
		<!-- ENDIF -->
		<li>
			{PHP.out.loginout}
		</li>
	</ul>
</div>
