<!-- BEGIN: MAIN -->
<main id="archive">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="content_block brd_t">
					<div class="mb-2 pb-4 d-flex flex-wrap justify-content-between">
						<h1 class="small fw-bold text-uppercase title">{ARCHIVE_TITLE}</h1>
						<span class="small fw-bold text-uppercase title">{ARCHIVE_DESC} ({ARCHIVE_TOTALPOSTS|cot_declension($this, 'Pages')} {PHP.L.archive_since} {ARCHIVE_START} {PHP.L.archive_year})</span>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-9">
				{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
				<ul class="list-unstyled">
					<!-- BEGIN: MONTH_ROW -->
					<li class="py-3 px-4 {MONTH_ROW_ODDEVEN}">
						<h2 class="fs-3">
							<span class="text-capitalize">{MONTH_ROW_MONTH} {MONTH_ROW_YEAR}</span>
							{PHP.L.archive_year}
							<sup class="fw-normal">({MONTH_ROW_COUNT_PAGES})</sup>
						</h2>
						<ul class="list-unstyled">
							<!-- BEGIN: POST_ROW -->
							<li>
								{POST_ROW_NUM}. <a href="{POST_ROW_URL}">{POST_ROW_TITLE}</a> ({POST_ROW_DATE_STAMP|cot_date('j F', $this)} / {POST_ROW_HITS|cot_declension($this, 'archive_hits')})
							</li>
							<!-- END: POST_ROW -->
						</ul>
					</li>
					<!-- END: MONTH_ROW -->
				</ul>
			</div>
			<div class="col-lg-3">
				<ul class="list-unstyled mb-0 d-flex flex-lg-column flex-wrap gap-2" id="archive_nav">
					<!-- IF {PHP.cfg.plugin.archive.home_style} == 0 -->
					<li>
						<a class="text-center<!-- IF !{PHP.year} --> active<!-- ENDIF -->" aria-current="page" href="{PHP|cot_url('archive')}">{PHP.L.archive_all}</a>
					</li>
					<!-- ENDIF -->
					<!-- BEGIN: YEAR_ROW -->
					<li>
						<a class="text-center<!-- IF {PHP.year} == {YEAR_ROW_YEAR} --> active<!-- ENDIF -->" aria-current="page" href="{YEAR_ROW_YEAR_URL}">{YEAR_ROW_YEAR}</a>
					</li>
					<!-- END: YEAR_ROW -->
				</ul>
			</div>
		</div>

	</div>
</main>
<!-- END: MAIN -->
