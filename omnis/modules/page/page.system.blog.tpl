<!-- BEGIN: MAIN -->
<main id="page_{PAGE_ID}" class="mt-5">
	<div class="container">

		<div class="row">
			<div class="col">
				{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<div class="content_block brd_t brd_b">
					<div class="mb-2 pb-4 d-flex justify-content-between">
            <h1 class="small fw-bold text-uppercase title">{PAGE_TITLE}</h1>
          </div>
					{PHP|sedby_pagelist('pagelist.blog', 10, 'page_date DESC', '', 'black', 'system', false, false, 0, 'd')}
				</div>
			</div>
		</div>

<!-- IF {PHP.usr.isadmin} -->
{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/inc/admin-page.tpl"}
<!-- ENDIF -->

	</div>
</main>
<!-- END: MAIN -->
