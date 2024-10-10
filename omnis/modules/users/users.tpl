<!-- BEGIN: MAIN -->
<main id="users" class="my-4">
	<div class="container">
		<div class="row">
			<div class="col">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<div class="title mb-3">
					<h1 class="lh-1">{PHP.L.Users}</h1>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="{PHP.cfg.mainurl}" title="{PHP.L.Home}">{PHP.L.Home}</a>
						</li>
						<li class="breadcrumb-item">
							{PHP.L.Users}
						</li>
					</ul>
				</div>
				<div class="table-responsive">
					<table class="table table-striped table-hover">
						<thead>
							<tr class="text-center">
								<th class="w-5">{USERS_TOP_PM}</th>
								<th class="w-25">{USERS_TOP_NAME}</th>
								<th class="w-25">{USERS_TOP_MAIN_GROUP}</th>
								<th class="w-20">{USERS_TOP_GROUP_LEVEL}</th>
								<th class="w-25">{USERS_TOP_REGISTRATION_DATE}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: USERS_ROW -->
							<tr class="text-center">
								<td>{USERS_ROW_PM}</td>
								<td>{USERS_ROW_NAME}&nbsp;{USERS_ROW_TAG}</td>
								<td>{USERS_ROW_MAIN_GROUP}</td>
								<td>{USERS_ROW_MAIN_GROUP_STARS}</td>
								<td>{USERS_ROW_REGDATE}</td>
							</tr>
<!-- END: USERS_ROW -->
						</tbody>
					</table>
					<p class="text-center mb-0">
						{PHP.L.users_usersperpage}: {ENTRIES_PER_PAGE} | {PHP.L.users_usersinthissection}: {TOTAL_ENTRIES}
					</p>
	<!-- IF {PAGINATION} -->
					<nav aria-label="Users Pagination">
						<ul class="pagination py-3 d-flex flex-wrap justify-content-center gap-1">
							{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
						</ul>
					</nav>
	<!-- ENDIF -->
				</div>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
