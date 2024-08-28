<!-- BEGIN: MAIN -->
<div class="container">
	<div class="row">
		<div class="col">
			<!-- BEGIN: COMMENTS_TITLE -->
			<h2>
				<a href="{COMMENTS_TITLE_URL}">{COMMENTS_TITLE}</a>
			</h2>
			<!-- END: COMMENTS_TITLE -->
			{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
			<!-- BEGIN: COMMENTS_FORM_EDIT -->
			<form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post">
				<table class="table table-borderless">
					<tr>
						<td class="w-25"><b>{COMMENTS_POSTER_TITLE}:</b></td>
						<td class="w-75">{COMMENTS_POSTER}</td>
					</tr>
					<tr>
						<td><b>{COMMENTS_IP_TITLE}:</b></td>
						<td>{COMMENTS_IP}</td>
					</tr>
					<tr>
						<td><b>{COMMENTS_DATE_TITLE}:</b></td>
						<td>{COMMENTS_DATE}</td>
					</tr>
					<tr>
						<td colspan="2">
							{COMMENTS_FORM_TEXT}
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit" class="btn btn-primary" value="{COMMENTS_FORM_UPDATE_BUTTON}">{PHP.L.Refresh}</button>
						</td>
					</tr>
				</table>
			</form>
			<!-- END: COMMENTS_FORM_EDIT -->
		</div>
	</div>
</div>
<!-- END: MAIN -->

<!-- BEGIN: COMMENTS -->
<div id="comments_block">
	<div class="container">
		<div class="row">
			<div class="col offset-xl-2 col-xl-6">
				<div class="content_block brd_t">
					<div class="mb-2 pb-4 d-flex justify-content-between">
						<span class="small fw-bold text-uppercase title">{PHP.L.comments_comments}</span>
					</div>

					<a id="comments" class="d-block collapsing"></a>

					<div class="row comments <!-- IF {COMMENTS_DISPLAY} == 'none' --> d-none<!-- ENDIF -->">
						<div class="col">
							<!-- BEGIN: COMMENTS_ROW -->
							<div class="{COMMENTS_ROW_ODDEVEN} d-flex align-items-start comment">
								<figure class="me-3 mb-0">
									{COMMENTS_ROW_AUTHOR_AVATAR}
								</figure>
								<div>
									<ul class="small list-unstyled mb-2 d-flex flex-wrap row-gap-1 column-gap-3 opacity-50">
										<li>
											<a href="{COMMENTS_ROW_URL}" id="com{COMMENTS_ROW_ID}">{COMMENTS_ROW_ORDER}. {COMMENTS_ROW_AUTHOR}</a>
										</li>
										<li>
											{PHP.R.icon-calendar}<span class="ms-2">{COMMENTS_ROW_DATE}</span>
										</li>
										{COMMENTS_ROW_ADMIN}{COMMENTS_ROW_EDIT}
									</ul>
									<div class="comments-text">{COMMENTS_ROW_TEXT}</div>
								</div>
							</div>
							<!-- END: COMMENTS_ROW -->
						</div>
						<!-- IF {COMMENTS_PAGINATION} -->
						<nav id="pagination-container">
							<ul class="pagination py-3 d-flex flex-wrap justify-content-center gap-1">
								{COMMENTS_PREVIOUS_PAGE}{COMMENTS_PAGINATION}{COMMENTS_NEXT_PAGE}
							</ul>
						</nav>
						<!-- ENDIF -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="comments_new_block">
	<div class="container">
		<div class="row">
			<div class="col offset-xl-2 col-xl-6">
				<div class="content_block brd_t inverse">
					<!-- BEGIN: COMMENTS_NEWCOMMENT -->
					<div class="mb-2 pb-4 d-flex justify-content-between">
						<span class="small fw-bold text-uppercase title">{PHP.L.Newcomment}</span>
					</div>
					{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
					<form action="{COMMENTS_FORM_SEND}" method="post" name="newcomment">

						<!-- IF {PHP.isr.id} == 0 -->
						<div class="row">
							<!-- BEGIN: GUEST -->
							<div class="col-lg-6 mb-3">
								{PHP.L.Name}: {COMMENTS_FORM_AUTHOR}
							</div>
							<!-- END: GUEST -->
							<!-- IF {COMMENTS_FORM_VERIFY_IMG} -->
							<div class="col-lg-6 mb-3">
								{COMMENTS_FORM_VERIFY_IMG} {COMMENTS_FORM_VERIFY_INPUT}
							</div>
							<!-- ENDIF -->
						</div>
						<!-- ENDIF -->

						<div>
							{COMMENTS_FORM_TEXT}
						</div>

						<div class="my-3">
							<button type="submit" class="btn btn-custom">{PHP.L.Submit}</button>
						</div>
					</form>
					<div class="alert alert-info">{COMMENTS_FORM_HINT}</div>
					<!-- BEGIN: COMMENTS_EMPTY -->
					<div class="alert alert-warning">{COMMENTS_EMPTYTEXT}</div>
					<!-- END: COMMENTS_EMPTY -->
					<!-- BEGIN: COMMENTS_CLOSED -->
					<div class="alert alert-danger">{COMMENTS_CLOSED}</div>
					<!-- END: COMMENTS_CLOSED -->
					<!-- END: COMMENTS_NEWCOMMENT -->

				</div>
			</div>
		</div>
	</div>
</div>

<!-- END: COMMENTS -->
