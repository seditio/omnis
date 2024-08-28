<!-- BEGIN: MAIN -->
<main id="page_add" class="mt-4">
	<div class="container">
		<div class="row">
			<div class="col">
				<div id="add_edit" class="px-4 py-3 rounded">
					{FILE "themes/{PHP.theme}/warnings.tpl"}
					<h1 class="text-black lh-1 mb-3">{PAGEADD_PAGETITLE}</h1>
					<form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="mb-3">
						<div class="table-responsive">
							<table class="table table-striped m-0">
								<tr>
									<td class="w-25">{PHP.L.Category}:</td>
									<td class="w-75">{PAGEADD_FORM_CAT}</td>
								</tr>
								<tr>
									<td>{PHP.L.Title}:</td>
									<td>{PAGEADD_FORM_TITLE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Description}:</td>
									<td>{PAGEADD_FORM_DESCRIPTION}</td>
								</tr>
								<tr>
									<td>{PHP.L.Author}:</td>
									<td>{PAGEADD_FORM_AUTHOR}</td>
								</tr>
								<tr>
									<td>{PHP.L.Begin}:</td>
									<td>{PAGEADD_FORM_BEGIN}</td>
								</tr>
								<tr>
									<td>{PHP.L.Expire}:</td>
									<td>{PAGEADD_FORM_EXPIRE}</td>
								</tr>
								<tr>
									<td>{PHP.L.Alias}:</td>
									<td>{PAGEADD_FORM_ALIAS}</td>
								</tr>
								<tr>
									<td>{PHP.L.page_metatitle}:</td>
									<td>{PAGEADD_FORM_METATITLE}</td>
								</tr>
								<tr>
									<td>{PHP.L.page_metadesc}:</td>
									<td>{PAGEADD_FORM_METADESC}</td>
								</tr>
								<!-- BEGIN: TAGS -->
								<tr>
									<td>{PAGEADD_TOP_TAGS}:</td>
									<td>{PAGEADD_FORM_TAGS} ({PAGEADD_TOP_TAGS_HINT})</td>
								</tr>
								<!-- END: TAGS -->
								<tr>
									<td>{PHP.L.Owner}:</td>
									<td>{PAGEADD_FORM_OWNER}</td>
								</tr>
								<tr>
									<td>{PHP.L.Parser}:</td>
									<td>{PAGEADD_FORM_PARSER}</td>
								</tr>
								<tr>
									<td colspan="2">
										{PAGEADD_FORM_TEXT}
									</td>
								</tr>
								<tr>
									<td>{PAGEADD_FORM_SPECIAL_CLASS_TITLE}:</td>
									<td>{PAGEADD_FORM_SPECIAL_CLASS}</td>
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
				</div>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
