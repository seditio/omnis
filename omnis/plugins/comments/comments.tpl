<!-- BEGIN: MAIN -->
<div class="container">
	<div class="row">
		<div class="col">

			<!-- IF !{COMMENTS_IS_AJAX} -->
			<!-- IF {COMMENTS_DISPLAY} === 'none' -->
			<div class="text-end mb-2">
				<a href="#" onclick="toggleblock('comments'); return false" style="">{PHP.R.icon_comments} {PHP.L.comments_comments}: {TOTAL_ENTRIES}</a>
			</div>
			<!-- ENDIF -->

			<div id="comments" class="comments-container" {COMMENTS_CONTAINER_PARAMS}<!-- IF {COMMENTS_DISPLAY} == 'none' -->style="display: none;"<!-- ENDIF -->>
			<!-- ENDIF -->

				<div id="comments-block" class="block comments-block" {COMMENTS_BLOCK_PARAMS}>

					<div id="comments_block">
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
													<div class="comments-text">
														{COMMENTS_ROW_TEXT}
													</div>
												</div>
											</div>
											<!-- END: COMMENTS_ROW -->

											<!-- IF {PAGINATION} -->
											<nav aria-label="Pagelist Pagination">
												<ul class="pagination py-3 d-flex flex-wrap justify-content-center gap-1">
													{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
												</ul>
											</nav>
											<!-- ENDIF -->

											<!-- IF {TOTAL_ENTRIES} === 0 -->
											<div class="warning">{PHP.L.comments_noYet}</div>
											<!-- ENDIF -->

											<!-- BEGIN: COMMENTS_CLOSED -->
											<div class="error">{COMMENTS_CLOSED}</div>
											<!-- END: COMMENTS_CLOSED -->



											<!-- BEGIN: NEW_COMMENT -->
											<div class="mb-2 pb-4 d-flex justify-content-between">
												<span class="small fw-bold text-uppercase title">
													{PHP.L.comments_newComment}
												</span>
											</div>

											<div class="comments-warnings">
												{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
											</div>

											<div class="alert alert-danger error comments-error" style="display: none">
												<h4>{PHP.L.Error}</h4>
												<div class="comments-message"></div>
											</div>

											<div class="done comments-success" style="display: none">
												<h4>{PHP.L.Done}</h4>
												<div class="comments-message"></div>
											</div>

											<form action="{COMMENT_FORM_ACTION}" method="post" name="comment-form">

												<!-- BEGIN: GUEST -->
												<div class="mb-3 d-flex align-items-center gap-3">
													<span>{PHP.L.Name}:</span>
													{COMMENT_FORM_AUTHOR}
												</div>
												<!-- END: GUEST -->

												<!-- BEGIN: EXTRA_FIELD -->
												<div class="mb-3">
													{COMMENT_FORM_EXTRA_FIELD_TITLE}: {COMMENT_FORM_EXTRA_FIELD}
												</div>
												<!-- END: EXTRA_FIELD -->

												<div class="mb-3">
													{COMMENT_FORM_TEXT}
												</div>

												<!-- IF {PHP.usr.id} == 0 AND {COMMENT_FORM_VERIFY_IMG} -->
												<div class="mb-3 d-flex align-items-center gap-3">
													<span>{COMMENT_FORM_VERIFY_IMG}</span>
													<!-- IF {COMMENT_FORM_VERIFY_INPUT} -->
													{COMMENT_FORM_VERIFY_INPUT}
													<!-- ENDIF -->
												</div>
												<!-- ENDIF -->

												<div class="mb-3">
													<button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
												</div>

												<!-- IF {COMMENT_FORM_HINT} -->
												<div class="alert alert-primary">
													{COMMENT_FORM_HINT}
												</div>
												<!-- ENDIF -->
											</form>
											<!-- END: NEW_COMMENT -->

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- IF !{COMMENTS_IS_AJAX} -->
				</div>
				<!-- ENDIF -->

			</div>
		</div>
	</div>
	<!-- END: MAIN -->
