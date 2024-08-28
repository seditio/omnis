<!-- BEGIN: MAIN -->
<ul class="list-unstyled entries">
<!-- BEGIN: PAGE_ROW -->
	<li class="{PAGE_ROW_ODDEVEN} d-flex flex-row align-items-start">
		<figure class="mb-0 me-3 overflow-hidden">
			<!-- IF {PAGE_ROW_ID|att_count('page', $this, 'images')} > 0 -->
			<img src="{PAGE_ROW_ID|att_get('page', $this)|att_thumb($this, 128, 128, crop)}" alt="{PAGE_ROW_ID|att_get('page', $this, 'title')}" class="img-fluid" />
			<!-- ENDIF -->
		</figure>
		<div class="">
			<a href={PAGE_ROW_URL} class="fw-medium lh-1 d-block">{PAGE_ROW_TITLE}</a>
			<span class="small">{PAGE_ROW_HITS|cot_declension($this, 'theme-hits')}</span>
		</div>
	</li>
<!-- END: PAGE_ROW -->
</ul>
<!-- END: MAIN -->
