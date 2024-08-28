<!-- BEGIN: MAIN -->
<main id="list_{PHP.cat.id}" class="mt-4">
	<div class="container">

		<div class="row">
			<div class="col">
				<div class="content_block brd_t brd_b">
					<div class="mb-2 pb-4 d-flex justify-content-between">
						<h1 class="small fw-bold text-uppercase title">{LIST_CAT_TITLE}</h1>
					</div>
					{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

					<ul class="list-unstyled" id="blog">
						<!-- BEGIN: LIST_ROW -->
						<li class="{LIST_ROW_ODDEVEN} d-flex flex-column flex-lg-row justify-content-lg-between {LIST_ROW_SPECIAL_CLASS}">
							<div class="order-lg-last">
								<figure class="mb-lg-0">
									<!-- IF {LIST_ROW_ID|att_count('page', $this, 'images')} > 0 -->
									<img src="{LIST_ROW_ID|att_get('page', $this)|att_thumb($this, 696, 464, crop)}" alt="{LIST_ROW_ID|att_get('page', $this, 'title')}" class="img-fluid" />
									<!-- ELSE -->
									<img src="http://via.placeholder.com/696x464" alt="" class="img-fluid" />
									<!-- ENDIF -->
								</figure>
							</div>
							<div class="order-lg-first d-lg-flex flex-row me-lg-5">
								<div class="order-lg-last">
									<a href={LIST_ROW_URL} class="fs-3 fw-medium lh-1 mb-2 d-block title">{LIST_ROW_TITLE}</a>
									<p class="small">
										{LIST_ROW_DESCRIPTION}
									</p>
								</div>
								<div class="d-lg-flex flex-column">
									<p class="date small mb-0">{LIST_ROW_CREATED}</p>
									<ul class="fw-medium text-uppercase list-unstyled mb-0 d-flex flex-wrap align-items-start meta">
										<li>
											<a href="{LIST_ROW_CAT_URL}" class="fw-semibold">{LIST_ROW_CAT_TITLE}</a>
										</li>
										<li>
											<span>{LIST_ROW_HITS|cot_declension($this, 'theme-hits')}</span>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<!-- END: LIST_ROW -->
						<!-- BEGIN: NO_ROW -->
						<li>
							{PHP.L.None}
						</li>
						<!-- END: NO_ROW -->
					</ul>

					<!-- IF {PAGINATION} -->
					<nav aria-label="Pagelist Pagination">
						<ul class="pagination py-3 d-flex flex-wrap justify-content-center gap-1">
							{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
						</ul>
					</nav>
					<!-- ENDIF -->

					<!-- IF {PHP.cot_plugins_active.sape} AND {PHP|sape_check()} -->
					<p class="text-center">{PHP|sape_show()}</p>
					<!-- ENDIF -->
				</div>
			</div>
		</div>

		<!-- IF {PHP.usr.isadmin} -->
		{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/inc/admin-list.tpl"}
		<!-- ENDIF -->
	</div>
</main>
<!-- END: MAIN -->
