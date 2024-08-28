<!-- BEGIN: FOOTER -->
<footer id="bot">
  <div class="container">
    <div class="row">
      <div class="col-12 col-lg-5">
        <div class="block">
          <span class="title">{PHP.L.theme-title}</span>
          <p>
            {PHP.L.theme-desc}
          </p>
        </div>
      </div>
      <div class="col-12 col-lg-4">
        <div class="block">
          <span class="title">{PHP.L.theme-rubricator}</span>
          {PHP|sedby_catlist('catlist.footer', '', 'structure_path ASC', 'structure_code != "system"', 0, '', '', 'catlist_footer', 864000)}
        </div>
      </div>
      <div class="col-12 col-lg-3">
        <div class="block">
          <span class="title">{PHP.L.theme-social}</span>
          <ul class="list-unstyled mb-0">
            <li class="mb-2 pb-2 border-bottom d-flex align-items-center">
              {PHP.R.icon-facebook}
              <a href="{PHP.R.theme-facebook-link}" rel="nofollow" class="mx-2">{PHP.L.theme-facebook}</a>
              <span class="badge rounded-pill text-bg-dark ms-auto">{PHP.R.theme-facebook-followers}</span>
            </li>
            <li class="mb-2 pb-2 border-bottom d-flex align-items-center">
              {PHP.R.icon-twitter}
              <a href="{PHP.R.theme-twitter-link}" rel="nofollow" class="mx-2">{PHP.L.theme-twitter}</a>
              <span class="badge rounded-pill text-bg-dark ms-auto">{PHP.R.theme-twitter-followers}</span>
            </li>
            <li class="mb-2 pb-2 border-bottom d-flex align-items-center">
              {PHP.R.icon-vk}
              <a href="{PHP.R.theme-vk-link}" rel="nofollow" class="mx-2">{PHP.L.theme-vk}</a>
              <span class="badge rounded-pill text-bg-dark ms-auto">{PHP.R.theme-vk-followers}</span>
            </li>
            <li class="mb-2 pb-2 border-bottom d-flex align-items-center">
              {PHP.R.icon-instagram}
              <a href="{PHP.R.theme-instagram-link}" rel="nofollow" class="mx-2">{PHP.L.theme-instagram}</a>
              <span class="badge rounded-pill text-bg-dark ms-auto">{PHP.R.theme-instagram-followers}</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>

<div id="search_panel">
  <div class="container">
    <form action="{PHP|cot_url('search')}" method="get" class="mx-3 d-flex justify-content-between gap-2">
      <input type="text" name="sq" class="fw-semibold flex-grow-1" placeholder="{PHP.L.theme-search-hint}">
      <button type="submit" class="fw-semibold text-uppercase">{PHP.L.Search}</button>
    </form>
    <div class="content_block mx-3">
      <div class="mb-3 d-flex justify-content-between">
        <span class="small fw-bold text-uppercase title">{PHP.L.theme-hashtags-popular}:</span>
      </div>
      {PHP|sedby_globaltags('pages', '16', 'Frequency', 'gt_open', 'globaltags', 86400)}
    </div>
    <div class="content_block brd_t mx-3 mb-lg-3 d-none d-lg-block">
      <div class="mb-3 d-flex justify-content-between">
        <span class="small fw-bold text-uppercase title">{PHP.L.theme-new-posts}:</span>
      </div>
      {PHP|sedby_pagelist('pagelist.search', 4, 'page_date DESC', 'page_cat != "system"', '', '', '', false, 0, '', '', 'pagelist_index_top', 86400)}
    </div>
  </div>
</div>

<div id="offcanvas" class="d-flex flex-column justify-content-between">
    <a href="#" class="except fs-5 mt-3 me-4 position-absolute top-0 end-0" id="close_offcanvas">{PHP.R.icon-xmark}</a>
    <div>
      <span class="title fs-5 fw-semibold mb-2">{PHP.L.theme-title}</span>
      <p class="mb-0">
        {PHP.L.theme-desc-mini}
      </p>
    </div>
    <div class="my-5">
      <ul id="nav_mini" class="lh-1 list-unstyled mb-0 d-flex flex-column gap-2">
        <li>
          <a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
        </li>
        <li>
          <a href="{PHP|cot_url('page', 'c=system&al=blog')}">{PHP.L.Blog}</a>
        </li>
        <!-- IF {PHP.cot_plugins_active.archive} -->
        <li>
          <a href="{PHP|cot_url('archive')}">{PHP.L.Archives}</a>
        </li>
        <!-- ENDIF -->
        <li>
          <!-- IF {PHP.cot_plugins_active.contact} -->
          <a href="{PHP|cot_url('contact')}">{PHP.L.theme-contacts}</a>
          <!-- ELSE -->
          <a href="{PHP|cot_url('page', 'c=system&al=contacts')}">{PHP.L.theme-contacts}</a>
          <!-- ENDIF -->
        </li>
      </ul>
    </div>
    <div class="mb-5">
      <span class="subtitle fw-semibold mb-2 text-uppercase">{PHP.L.Search}</span>
      <form action="{PHP|cot_url('search')}" method="get" class="pb-2 border-bottom border-dark d-flex justify-content-between gap-2">
        <input type="text" name="sq" class="fw-semibold flex-grow-1" placeholder="{PHP.L.theme-search-hint}">
        <button type="submit" class="fw-semibold text-uppercase">{PHP.R.icon-search}</button>
      </form>
    </div>
    <div>
      <span class="subtitle fw-semibold mb-2 text-uppercase">{PHP.L.theme-hashtags-popular}:</span>
      {PHP|sedby_globaltags('pages', '8', 'Frequency', 'gt_open_mini' '', 86400)}
    </div>
</div>

<a href="#" id="ontop" class="text-center">
  {PHP.R.icon-arrow-right}
</a>

{FOOTER_RC}
</body>
</html>
<!-- END: FOOTER -->
