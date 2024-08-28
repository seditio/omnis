<!-- BEGIN: MAIN -->
<ul class="list-unstyled" id="blog">
<!-- BEGIN: PAGE_ROW -->
	<li class="{PAGE_ROW_ODDEVEN} d-flex flex-column flex-lg-row justify-content-lg-between {PAGE_ROW_SPECIAL_CLASS}">
		<div class="order-lg-last">
			<figure class="mb-lg-0">
				<!-- IF {PAGE_ROW_ID|att_count('page', $this, 'images')} > 0 -->
				<img src="{PAGE_ROW_ID|att_get('page', $this)|att_thumb($this, 696, 464, crop)}" alt="{PAGE_ROW_ID|att_get('page', $this, 'title')}" class="img-fluid" />
				<!-- ELSE -->
				<img src="http://via.placeholder.com/696x464" alt="" class="img-fluid" />
				<!-- ENDIF -->
			</figure>
		</div>
		<div class="order-lg-first d-lg-flex flex-row me-lg-5">
			<div class="order-lg-last">
				<a href={PAGE_ROW_URL} class="fs-3 fw-medium lh-1 mb-2 d-block title">{PAGE_ROW_TITLE}</a>
				<p class="small">
					{PAGE_ROW_DESCRIPTION}
				</p>
			</div>
			<div class="d-lg-flex flex-column">
				<p class="date small mb-0">{PAGE_ROW_CREATED}</p>
				<ul class="fw-medium text-uppercase list-unstyled mb-0 d-flex flex-wrap align-items-start meta">
					<li>
						<a href="{PAGE_ROW_CAT_URL}" class="fw-semibold">{PAGE_ROW_CAT_TITLE}</a>
					</li>
					<li>
						<span>{PAGE_ROW_HITS|cot_declension($this, 'theme-hits')}</span>
					</li>
				</ul>
			</div>
		</div>
	</li>
<!-- END: PAGE_ROW -->
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
<!-- END: MAIN -->
