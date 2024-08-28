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
								<th class="w-25">{USERS_TOP_GRPTITLE}</th>
								<th class="w-20">{USERS_TOP_GRPLEVEL}</th>
								<th class="w-25">{USERS_TOP_REGDATE}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: USERS_ROW -->
							<tr class="text-center">
								<td>{USERS_ROW_PM}</td>
								<td>{USERS_ROW_NAME}&nbsp;{USERS_ROW_TAG}</td>
								<td>{USERS_ROW_MAINGRP}</td>
								<td>{USERS_ROW_MAINGRPSTARS}</td>
								<td>{USERS_ROW_REGDATE}</td>
							</tr>
<!-- END: USERS_ROW -->
						</tbody>
					</table>
					<p class="text-center mb-0">
						{PHP.L.users_usersperpage}: {USERS_TOP_MAXPERPAGE} | {PHP.L.users_usersinthissection}: {USERS_TOP_TOTALUSERS}
					</p>
	<!-- IF {USERS_TOP_PAGNAV} -->
					<nav id="pagination-container">
						<ul class="pagination">
							{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}
						</ul>
					</nav>
	<!-- ENDIF -->
				</div>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
