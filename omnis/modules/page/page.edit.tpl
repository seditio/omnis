<!-- BEGIN: MAIN -->
<main id="page_edit" class="mt-4">
	<div class="container">
		<div class="row">
			<div class="col">
				<div id="add_edit" class="px-4 py-3 rounded">
					{FILE "themes/{PHP.theme}/warnings.tpl"}
					<h1 class="text-black lh-1 mb-3">{PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID} ({PAGEEDIT_FORM_LOCAL_STATUS})</h1>
					<form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
						<div class="table-responsive">
							<table class="table table-striped m-0">
								<tr>
									<td class="w-25">{PHP.L.Category}:</td>
									<td class="w-75">{PAGEEDIT_FORM_CAT}</td>
								</tr>
								<tr>
									<td>{PHP.L.Title}:</td>
									<td>{PAGEEDIT_FORM_TITLE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Description}:</td>
									<td>{PAGEEDIT_FORM_DESCRIPTION}</td>
								</tr>
								<tr>
									<td>{PHP.L.Author}:</td>
									<td>{PAGEEDIT_FORM_AUTHOR}</td>
								</tr>
								<tr>
									<td>{PHP.L.Date}:</td>
									<td>
										{PAGEEDIT_FORM_DATE}
										<div class="form-group m-0">
											<div class="checkbox mb-0">
												<label class="checkbox">
													<span class="title pt-1">
														<input type="checkbox" value="1" name="rpagedatenow" class="me-2">{PHP.L.page_date_now}
													</span>
												</label>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>{PHP.L.Begin}:</td>
									<td>{PAGEEDIT_FORM_BEGIN}</td>
								</tr>
								<tr>
									<td>{PHP.L.Expire}:</td>
									<td>{PAGEEDIT_FORM_EXPIRE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Alias}:</td>
									<td>{PAGEEDIT_FORM_ALIAS}</td>
								</tr>
								<tr>
									<td>{PHP.L.page_metatitle}:</td>
									<td>{PAGEEDIT_FORM_METATITLE}</td>
								</tr>
								<tr>
									<td>{PHP.L.page_metadesc}:</td>
									<td>{PAGEEDIT_FORM_METADESC}</td>
								</tr>
								<!-- IF {PAGEEDIT_FORM_TAGS} -->
		            <tr>
		                <td>{PHP.L.Tags}:</td>
		                <td>{PAGEEDIT_FORM_TAGS}</td>
		            </tr>
            		<!-- ENDIF -->
								<!-- BEGIN: ADMIN -->
								<tr>
									<td>{PHP.L.Hits}:</td>
									<td>{PAGEEDIT_FORM_HITS}</td>
								</tr>
								<tr>
									<td>{PHP.L.Owner}:</td>
									<td>{PAGEEDIT_FORM_OWNER_ID}</td>
								</tr>
								<!-- END: ADMIN -->
								<tr>
									<td>{PHP.L.Parser}:</td>
									<td>{PAGEEDIT_FORM_PARSER}</td>
								</tr>
								<tr>
									<td colspan="2">
										{PAGEEDIT_FORM_TEXT}
									</td>
								</tr>
								<tr>
									<td>{PAGEEDIT_FORM_SPECIAL_CLASS_TITLE}:</td>
									<td>{PAGEEDIT_FORM_SPECIAL_CLASS}</td>
								</tr>
								<tr>
									<td>{PHP.L.page_deletepage}:</td>
									<td>{PAGEEDIT_FORM_DELETE}</td>
								</tr>
								<tr>
									<td colspan="2">
										<!-- IF {PHP.usr_can_publish} -->
										<button type="submit" name="rpagestate" value="0" class="btn btn-success btn-sm">{PHP.L.Publish}</button>
										<!-- ENDIF -->
										<button type="submit" name="rpagestate" value="2" class="submit btn btn-warning btn-sm">{PHP.L.Saveasdraft}</button>
										<button type="submit" name="rpagestate" value="1" class="btn btn-danger btn-sm">{PHP.L.Submitforapproval}</button>
									</td>
								</tr>
							</table>
						</div>
					</form>
					{PAGEEDIT_FORM_ID|att_gallery('page', $this, 'attach2.edit')}
				</div>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
