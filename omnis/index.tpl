<!-- BEGIN: MAIN -->
<main id="main">
  <div class="container">

    <div class="row">
      <div class="col">
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <div class="content_block brd_t">
          <div class="mb-2 pb-4 d-flex justify-content-between">
            <h1 class="small fw-bold text-uppercase title">{PHP.L.theme-new-posts-short}</h1>
            <a href="{PHP|cot_url('page', 'c=system&al=blog')}" class="small fw-bold text-uppercase title">{PHP.L.theme-view-blog} {PHP.R.icon-arrow-right}</a>
          </div>
          {PHP|sedby_pagelist('pagelist.blog', 8, 'page_date DESC', 'page_cat != "system"', '', '', '', false, 0, '', '', 'pagelist_index_new', 86400)}
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col">
        <div class="content_block brd_t">
          <div class="mb-2 pb-4 d-flex justify-content-between">
            <h2 class="small fw-bold text-uppercase title">{PHP.L.theme-new-comments}</h2>
          </div>
          {PHP|sedby_comlist('comlist.home', 8, 'com_date DESC', '', true, 0, '', '', 'comlist_index', 86400)}
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <div class="content_block brd_t brd_b">
          <div class="mb-2 pb-4 d-flex justify-content-between">
            <h2 class="small fw-bold text-uppercase title">{PHP.L.theme-best-posts}</h2>
          </div>
          {PHP|sedby_pagelist('pagelist.best', 8, 'page_count DESC', 'page_cat != "system"', '', '', '', false, 0, '', '', 'pagelist_index_best', 864000)}
        </div>
      </div>
    </div>

    <!-- IF {PHP|cot_plugin_active(oneline)} -->
    <div class="row">
      <div class="col">
        <div class="content_block brd_t">
          <div class="mb-3 d-flex justify-content-between">
            <h3 class="small fw-bold text-uppercase title">{PHP.L.theme-headline-news}</h3>
          </div>
          {PHP|sedby_oneline('oneline.list', 3, 'oneline_date DESC')}
        </div>
      </div>
    </div>
    <!-- ENDIF -->

    <!-- IF {INDEX_TAG_CLOUD} -->
    <div class="row">
      <div class="col">
        <div class="content_block brd_t">
          <div class="mb-3 d-flex justify-content-between">
            <h3 class="small fw-bold text-uppercase title">{PHP.L.theme-hashtags}</h3>
          </div>
          {INDEX_TAG_CLOUD}
          <!-- IF {INDEX_TAG_CLOUD_ALL_LINK} -->
          <p class="small mb-0">
            {INDEX_TAG_CLOUD_ALL_LINK}
          </p>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
    <!-- ENDIF -->

    <!-- IF {PHP.usr.maingrp} == 5 -->
    {FILE "themes/{PHP.theme}/inc/admin-index.tpl"}
    <!-- ENDIF -->

  </div>
</main>
<!-- END: MAIN -->
