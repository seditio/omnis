<!-- BEGIN: MAIN -->
<main id="contact" class="mt-5">
	<div class="container">

		<div class="row">
			<div class="col-lg-6">
				{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<h1 class="fs-1 my-4">{PHP.L.contact_title}</h1>
				<div class="row">
					<div class="col">
						<!-- BEGIN: FORM -->
						<form action="{CONTACT_FORM_SEND}" method="post" name="contact_form" enctype="multipart/form-data">
							<div class="mb-3">
								<label class="form-label mb-1" for="ruser">{PHP.L.Username}:</label>
								{CONTACT_FORM_AUTHOR}
							</div>
							<div class="mb-3">
								<label class="form-label mb-1" for="ruser">{PHP.L.Email}:</label>
								{CONTACT_FORM_EMAIL}
							</div>
							<div class="mb-3">
								<label class="form-label mb-1" for="ruser">{PHP.L.Subject}:</label>
								{CONTACT_FORM_SUBJECT}
							</div>
							<div class="mb-3">
								<label class="form-label mb-1" for="ruser">{PHP.L.Message}:</label>
								{CONTACT_FORM_TEXT}
							</div>

							<!-- BEGIN: EXTRAFLD -->
							<div class="mb-3">
								<label class="form-label mb-1">{CONTACT_FORM_EXTRAFLD_TITLE}:</label>
								{CONTACT_FORM_EXTRAFLD}
							</div>
							<!-- END: EXTRAFLD -->
							<!-- BEGIN: CAPTCHA -->
							<div class="mb-3">
								<label class="form-label mb-1">{CONTACT_FORM_VERIFY_IMG}:</label>
								{CONTACT_FORM_VERIFY_INPUT}
							</div>
							<!-- END: CAPTCHA -->
							<button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
						</form>
						<!-- END: FORM -->
					</div>
				</div>
			</div>
			<div class="offset-lg-2 col-lg-4">
				<aside id="primary">
					<div class="row">
						<div class="col-12 col-md-6 col-lg-12">
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
							<div class="block pt-2">
								<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-rubricator}:</span>
								{PHP|sedby_catlist('catlist.page', 6, 'structure_path ASC', 'structure_code != "system"', 0, '', '', 'catlist_page', 864000)}
							</div>
						</div>
					</div>
				</aside>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
