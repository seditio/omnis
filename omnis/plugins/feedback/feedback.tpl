<!-- BEGIN: MAIN -->
<main id="page_{PAGE_ID}" class="my-5">
	<div class="container">

		<div class="row">
			<div class="col-lg-8">
				<h1 class="fs-1 my-4">{PHP.L.theme-contacts}</h1>
				<div class="row">
					<div class="col">

						{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
						<form action="{FEEDBACK_FORM_SEND}" method="post" name="feedback_form">
							<table class="table">
								<tr>
									<td class="w-25"><label for="ruser">{PHP.L.Username}:</label></td>
									<td class="w-75">{FEEDBACK_FORM_AUTHOR}</td>
								</tr>
								<tr>
									<td><label for="remail">{PHP.L.Email}:</label></td>
									<td>{FEEDBACK_FORM_EMAIL} </td>
								</tr>
								<tr>
									<td><label for="rtext">{PHP.L.Message}:</label></td>
									<td>{FEEDBACK_FORM_TEXT}</td>
								</tr>
								<tr>
									<!-- BEGIN: CAPTCHA -->
									<tr>
										<td>{FEEDBACK_FORM_VERIFY_IMG}</td>
										<td>{FEEDBACK_FORM_VERIFY}</td>
									</tr>
									<!-- END: CAPTCHA -->
									<tr>
										<td>&nbsp;</td>
										<td><button class="btn btn-primary" type="submit">{PHP.L.Submit}</button></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<aside id="primary">
						<div class="row">
							<div class="col-12 col-md-6 col-lg-12">
								<div class="block mb-4 pt-2 border-top border-2 border-black">
									<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-best-posts}:</span>
									{PHP|sedby_pagelist('pagelist.popular', 8, 'page_count DESC', '', '', '', '', false, 0, '', '', 'pagelist_page_best', 864000)}
								</div>
							</div>
							<div class="col-12 col-md-6 col-lg-12">
								<div class="block pt-2 border-top border-2 border-black">
									<span class="fw-bold text-uppercase mb-3 title">{PHP.L.theme-rubricator}:</span>
									{PHP|sedby_catlist('catlist.page', 6, 'structure_path ASC', 'structure_code != "system" and structure_area = "page"', 0, '', '', 'catlist_page', 864000)}
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>

			<!-- IF {PHP.usr.isadmin} -->
			{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/inc/admin-page.tpl"}
			<!-- ENDIF -->
		</div>
	</main>
	<!-- END: MAIN -->
