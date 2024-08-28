<!-- BEGIN: MAIN -->
<ul id="best" class="list-unstyled d-grid gap-4">
<!-- BEGIN: PAGE_ROW -->
	<li class="d-md-flex flex-md-column">
		<div class="overflow-hidden">
			<figure>
				<!-- IF {PAGE_ROW_ID|att_count('page', $this, 'images')} > 0 -->
				<img src="{PAGE_ROW_ID|att_get('page', $this)|att_thumb($this, 696, 464, crop)}" alt="{PAGE_ROW_ID|att_get('page', $this, 'title')}" class="img-fluid" />
				<!-- ELSE -->
				<img src="https://via.placeholder.com/696x464" alt="" class="img-fluid" />
				<!-- ENDIF -->
			</figure>
		</div>
		<div class="flex-md-fill d-md-flex flex-md-column justify-content-md-between">
			<a href={PAGE_ROW_URL} class="fw-medium mb-2 title">{PAGE_ROW_TITLE}</a>
			<div class="">
				<p class="small">
					{PAGE_ROW_DESCRIPTION}
				</p>
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
</ul>
<!-- END: MAIN -->
