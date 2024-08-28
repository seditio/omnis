<div id="adminblock">
	<ul class="{PHP.R.adminblock_classes}">
		<li>
			<a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
		</li>
		<li>
			{PAGE_ADMIN_UNVALIDATE}
		</li>
		<li>
			<a href="{PAGE_CAT|cot_url('page', 'm=add&c=$this')}">{PHP.L.page_addtitle}</a>
		</li>
		<li>
			{PAGE_ADMIN_EDIT}
		</li>
		<li>
			{PAGE_ADMIN_CLONE}
		</li>
		<li>
			{PAGE_ADMIN_DELETE}
		</li>
		<!-- IF {PHP|cot_auth('plug', 'clearcache', 'W')} -->
		<li>
			<a href="{PHP.clearcache_url}" class="text-black bg-warning">{PHP.clearcache_title}</a>
		</li>
		<!-- ENDIF -->
		<!-- IF {PHP|cot_plugin_active('d2c')} AND {PHP|cot_auth('plug', 'd2c', 'W')} -->
		<li>
			<a href="{PHP.id|cot_url('d2c', 'a=actualize&d2c_field=page_updated&d2c_id=$this')}" class="text-black bg-warning">{PHP.L.d2c_actualize}</a>
		</li>
		<!-- ENDIF -->
		<!-- IF (PHP|cot_plugin_active('attach2')) AND {PHP|cot_auth('plug', 'attach2', 'W')} -->
		<li>
			{PAGE_ID|att_widget('page', $this, 'attach2.link')}
		</li>
		<!-- ENDIF -->
		<li>
			{PHP.out.loginout}
		</li>
	</ul>
</div>
