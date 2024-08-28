<!-- BEGIN: MAIN -->
<main id="page_{PAGE_ID}" class="mt-5">
	<div class="container">

		<div class="row">
			<div class="col col-xl-10">
				{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<div class="title mb-4">
					<h1 class="lh-1 fw-semibold reduced_width">{PAGE_TITLE}</h1>
				</div>
				<figure class="mb-4">
					<!-- IF {PAGE_ID|att_count('page', $this, 'images')} > 0 -->
					<img src="{PAGE_ID|att_get('page', $this)|att_thumb($this, 1200, 630, width)}" alt="{PAGE_ID|att_get('page', $this, 'title')}" class="img-fluid w-100" />
					<!-- ENDIF -->
				</figure>
				<div class="d-lg-grid" id="page_grid">
					<div class="d-flex flex-column justify-content-between mb-4 mb-lg-0">
						<div class="textbox">
							{PAGE_TEXT}
						</div>
						<p id="legal" class="my-4 ps-3 border-start border-danger opacity-75" aria-hidden="true">
							{PHP.L.theme-footnote}
						</p>
					</div>
					<aside id="primary" class="sidebar">
						<div class="row">
							<div class="col-12 col-md-6 col-lg-12">
								<!-- IF {PHP.cot_plugins_active.reading_time} AND {PHP.usr.maingrp} == 5 -->
								<div class="block mb-4 pt-2">
									<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-page-stats}:</span>
									<ul class="list-unstyled" id="blog_post_meta">
										<li class="py-2 border-bottom d-flex">
											<span class="title">Meta title:</span>
											<span class="subtitle ms-auto">{PAGE_LENGTH_META_TITLE}</span>
										</li>
										<li class="py-2 border-bottom d-flex">
											<span class="title">Meta description:</span>
											<span class="subtitle ms-auto">{PAGE_LENGTH_META_DESC}</span>
										</li>
										<li class="py-2 border-bottom d-flex">
											<span class="title">{PHP.L.theme-page-stats-title}:</span>
											<span class="subtitle ms-auto">{PAGE_LENGTH_TITLE}</span>
										</li>
										<li class="py-2 border-bottom d-flex">
											<span class="title">{PHP.L.theme-page-stats-desc}:</span>
											<span class="subtitle ms-auto">{PAGE_LENGTH_DESC}</span>
										</li>
										<li class="py-2 border-bottom d-flex">
											<span class="title">{PHP.L.theme-page-stats-text}:</span>
											<span class="subtitle ms-auto">{PAGE_LENGTH_TEXT}</span>
										</li>
									</ul>
								</div>
								<!-- ENDIF -->
								<div class="block mb-4 pt-2">
									<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-hashtags}:</span>
									<!-- IF {PHP.tag_i} -->
									<ul class="list-unstyled m-0 d-flex flex-wrap gap-2" id="hashtags_page">
										<!-- BEGIN: PAGE_TAGS_ROW -->
										<li>
											<a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
										</li>
										<!-- END: PAGE_TAGS_ROW -->
									</ul>
									<!-- ENDIF -->
									<!-- BEGIN: PAGE_NO_TAGS -->
									<p>{PAGE_NO_TAGS}</p>
									<!-- END: PAGE_NO_TAGS -->
								</div>
								<div class="block mb-4 pt-2">
									<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-best-posts}:</span>
									{PHP|sedby_pagelist('pagelist.popular', 8, 'page_count DESC', 'page_cat != "system"', '', '', '', false, 0, '', '', 'pagelist_page_best', 864000)}
								</div>
								<!-- IF {PHP.cot_plugins_active.sape} AND {PHP|sape_check()} -->
								<div class="block mb-4 pt-2">
									<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-partners}:</span>
									{PHP|sape_show()}
								</div>
								<!-- ENDIF -->
							</div>
							<div class="col-12 col-md-6 col-lg-12">
								<div class="block mb-4 pt-2">
									<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-rubricator}:</span>
									{PHP|sedby_catlist('catlist.page', 6, 'structure_path ASC', 'structure_code != "system"', 0, '', '', 'catlist_page', 864000)}
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>
			<div class="col-xl-2 order-first">
				<ul class="list-unstyled mb-2 mt-xl-1 d-flex flex-wrap flex-xl-column meta_side">
					<li class="mb-xl-3 d-flex align-items-center">
						{PHP.R.icon-folder-open}
						<a href="{PAGE_CAT_URL}">{PAGE_CAT_TITLE}</a>
					</li>
					<li class="mb-xl-3 d-flex align-items-center">
						{PHP.R.icon-chart-simple}
						<span>{PAGE_HITS|cot_declension($this, 'theme-hits-markup')}</span>
					</li>
					<!-- IF {PHP.cot_plugins_active.reading_time} -->
					<li class="d-flex align-items-center">
						{PHP.R.icon-clock}
						<span>{PAGE_READING_TIME|cot_declension($this, 'theme-mins-markup')}</span>
					</li>
					<!-- ENDIF -->
				</ul>
			</div>
		</div>

<!-- IF {PHP.usr.isadmin} -->
{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/inc/admin-page.tpl"}
<!-- ENDIF -->

	</div>
	{PAGE_COMMENTS_DISPLAY}
</main>
<!-- END: MAIN -->
