<!-- BEGIN: MAIN -->
<main id="page_{PAGE_ID}" class="mt-5">
	<div class="container">

		<div class="row">
			<div class="col-lg-6">
				{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<h1 class="fs-1 my-4">{PAGE_TITLE}</h1>
				{PAGE_TEXT}
			</div>
			<div class="offset-lg-2 col-lg-4">
				<aside id="primary">
					<div class="row">
						<div class="col-12 col-md-6 col-lg-12">
							<div class="block mb-4 pt-2">
								<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-best-posts}:</span>
								{PHP|sedby_pagelist('pagelist.popular', 8, 'page_count DESC', '', '', '', '', false, 0, '', '', 'pagelist_page_best', 864000)}
							</div>
							<!-- IF {PHP|sape_check()} -->
							<div class="block mb-4 pt-2">
								<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-partners}:</span>
								{PHP|sape_show()}
							</div>
							<!-- ENDIF -->
						</div>
						<div class="col-12 col-md-6 col-lg-12">
							<div class="block pt-2">
								<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-rubricator}:</span>
								{PHP|sedby_catlist('catlist.page', 6, 'structure_path ASC', 'structure_code != "system"', 0, '', '', 'catlist_page', 864000)}
							</div>
						</div>
					</div>
				</aside>
			</div>
		</div>

<!-- IF {PHP.usr.isadmin} -->
{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/inc/admin-page.tpl"}
<!-- ENDIF -->

	</div>
</main>
<!-- END: MAIN -->
