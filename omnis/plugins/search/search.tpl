<!-- BEGIN: MAIN -->
<main id="plugin_search">
	<div class="container">

		<form role="form" action="{PHP|cot_url('search')}" method="get" name="search">

			<input type="hidden" name="e" value="search" />
			<input type="hidden" name="tab" value="{PHP.tab}" />

			<div class="row">
				<div class="col">
					<div class="content_block brd_t">
						<div class="mb-2 pb-4 d-flex justify-content-between">
							<h1 class="small fw-bold text-uppercase title">{PHP.L.Search}</h1>
						</div>

					<!-- BEGIN: RESULTS -->
					<!-- BEGIN: PAGES -->
					<ul class="list-unstyled" id="blog">
						<!-- BEGIN: ITEM -->
						<li class="{PLUGIN_PR_ODDEVEN} border-bottom d-flex flex-column flex-lg-row justify-content-lg-between">
							<div class="order-lg-last">
								<figure class="mb-lg-0">
									<!-- IF {PLUGIN_PR_ID|att_count('page', $this, 'images')} > 0 -->
									<img src="{PLUGIN_PR_ID|att_get('page', $this)|att_thumb($this, 696, 464, crop)}" alt="{PLUGIN_PR_ID|att_get('page', $this, 'title')}" class="img-fluid" />
									<!-- ELSE -->
									<img src="https://placehold.co/696x464" alt="" class="img-fluid" />
									<!-- ENDIF -->
								</figure>
							</div>
							<div class="order-lg-first d-lg-flex flex-row me-lg-5">
								<div class="order-lg-last">
									<a href="{PLUGIN_PR_URL}" class="fs-3 fw-medium lh-1 mb-2 d-block">{PLUGIN_PR_TITLE}</a>
									<p class="small">
										{PLUGIN_PR_DESCRIPTION}
									</p>
								</div>
								<div class="d-lg-flex flex-column">
									<p class="date small mb-0">{PLUGIN_PR_CREATED}</p>
									<ul class="fw-medium text-uppercase list-unstyled mb-0 d-flex flex-wrap align-items-start meta">
										<li>
											<a href="{PLUGIN_PR_CAT_URL}" class="fw-semibold">{PLUGIN_PR_CAT_TITLE}</a>
										</li>
										<li>
											<span>{PLUGIN_PR_HITS|cot_declension($this, 'theme-hits')}</span>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<!-- END: ITEM -->
					</ul>
					<!-- END: PAGES -->
					<!-- END: RESULTS -->

					<!-- IF !{PLUGIN_PR_NUM} -->
					<div class="alert alert-danger">
						{PHP.L.plu_noneresult}
					</div>
					<!-- ENDIF -->

					<!-- IF {PAGINATION} -->
					<nav id="pagination-container">
						<ul class="pagination py-3 d-flex justify-content-center gap-1">
							{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
						</ul>
					</nav>
					<!-- ENDIF -->

				</div>
				</div>
			</div>

		</form>

	</div>
</main>

<!-- END: MAIN -->
