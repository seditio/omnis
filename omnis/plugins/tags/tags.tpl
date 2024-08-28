<!-- BEGIN: MAIN -->
<main id="plugin_tags">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="content_block brd_t">

					<!-- BEGIN: TAGS_RESULT -->
					<div class="mb-2 pb-4 d-flex justify-content-between">
						<h1 class="small fw-bold text-uppercase title">{TAGS_RESULT_TITLE}</h1>
					</div>
					<ul class="list-unstyled" id="blog">
						<!-- BEGIN: TAGS_RESULT_ROW -->
						<li class="{TAGS_RESULT_ROW_ODDEVEN} d-flex flex-column flex-lg-row justify-content-lg-between">
							<div class="order-lg-last">
								<figure class="mb-lg-0">
									<!-- IF {TAGS_RESULT_ROW_ID|att_count('page', $this, 'images')} > 0 -->
									<img src="{TAGS_RESULT_ROW_ID|att_get('page', $this)|att_thumb($this, 696, 464, crop)}" alt="{TAGS_RESULT_ROW_ID|att_get('page', $this, 'title')}" class="img-fluid" />
									<!-- ELSE -->
									<img src="https://via.placeholder.com/696x464" alt="" class="img-fluid" />
									<!-- ENDIF -->
								</figure>
							</div>
							<div class="order-lg-first d-lg-flex flex-row me-lg-5">
								<div class="order-lg-last">
									<a href={TAGS_RESULT_ROW_URL} class="fs-3 fw-medium lh-1 mb-2 d-block">{TAGS_RESULT_ROW_TITLE}</a>
									<p class="small">
										{TAGS_RESULT_ROW_DESCRIPTION}
									</p>
								</div>
								<div class="d-lg-flex flex-column">
									<p class="date small mb-0">{TAGS_RESULT_ROW_CREATED}</p>
									<ul class="fw-medium text-uppercase list-unstyled mb-0 d-flex flex-wrap align-items-start meta">
										<li>
											<a href="{TAGS_RESULT_ROW_CAT_URL}" class="fw-semibold">{TAGS_RESULT_ROW_CAT_TITLE}</a>
										</li>
										<li>
											<span>{TAGS_RESULT_ROW_HITS|cot_declension($this, 'theme-hits')}</span>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<!-- END: TAGS_RESULT_ROW -->
						<!-- BEGIN: TAGS_RESULT_NONE -->
						<li>
							{PHP.L.Noitemsfound}
						</li>
						<!-- END: TAGS_RESULT_NONE -->
					</ul>
					<!-- END: TAGS_RESULT -->

					<!-- IF {PAGINATION} -->
					<nav id="pagination-container">
						<ul class="pagination py-3 d-flex justify-content-center gap-1">
							{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
						</ul>
					</nav>
					<!-- ENDIF -->

					<!-- BEGIN: TAGS_CLOUD -->
					<div class="mb-2 pb-4 d-flex justify-content-between">
						<h1 class="small fw-bold text-uppercase title">{PHP.L.tags_All}</h1>
					</div>
					{TAGS_CLOUD_BODY}
					<!-- END: TAGS_CLOUD -->

				</div>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
