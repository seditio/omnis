<!-- BEGIN: MAIN -->
<main id="plugins_whosonline" class="mt-5">
	<div class="container">

		<div class="row">
			<div class="col">
				{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<div class="content_block brd_t">
					<div class="mb-2 pb-4 d-flex justify-content-between">
            <h1 class="small fw-bold text-uppercase title">{PHP.L.WhosOnline}</h1>
          </div>

					{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
					<div class="table-responsive">
						<table class="table table-striped table-hover">
							<thead class="text-uppercase">
								<tr>
									<th>{PHP.L.User}</th>
									<th>{PHP.L.Group}</th>
									<th>{PHP.L.Location}</th>
									<th>{PHP.L.LastSeen}</th>
	<!-- IF {PHP.usr.isadmin} -->
									<th>{PHP.L.Ip}</th>
	<!-- ENDIF -->
								</tr>
							</thead>
							<tbody>
	<!-- BEGIN: USERS -->
								<tr>
									<td>{USER_LINK}</td>
									<td>{USER_MAINGRP}</td>
									<td>{USER_LOCATION} {USER_SUBLOCATION}</td>
									<td>{USER_LASTSEEN}</td>
	<!-- IF {PHP.usr.isadmin} -->
									<td>{USER_IP}</td>
	<!-- ENDIF -->
								</tr>
	<!-- END: USERS -->
	<!-- BEGIN: GUESTS -->
								<tr>
									<td colspan="2">{PHP.L.Guest} #{GUEST_NUMBER}</td>
									<td>{GUEST_LOCATION} {GUEST_SUBLOCATION}</td>
									<td>{GUEST_LASTSEEN}</td>
	<!-- IF {PHP.usr.isadmin} -->
									<td>{GUEST_IP}</td>
	<!-- ENDIF -->
								</tr>
	<!-- END: GUESTS -->
							</tbody>
						</table>
	<!-- IF {WHO_TOTALPAGES} > 1 -->
						<p class="text-center mb-0 mt-3">
							{PHP.L.Page} {WHO_CURRENTPAGE} {PHP.L.Of} {WHO_TOTALPAGES}
						</p>
						<nav class="pt-2" aria-label="Pagination">
							<ul class="pagination pagination-sm justify-content-center m-0">
								{WHO_PAGEPREV}{WHO_PAGINATION}{WHO_PAGENEXT}
							</ul>
						</nav>
	<!-- ENDIF -->
						<div class="alert alert-info">
							<h4>{PHP.L.Activity}:</h4>
							<p class="mb-0">
								{PHP.L.NowOnline}: {STAT_COUNT_USERS} {USERS}<!-- IF !{PHP.cfg.plugin.whosonline.disable_guests} -->, {STAT_COUNT_GUESTS} {GUESTS}<!-- ENDIF -->
							</p>
	<!-- IF {STAT_MAXUSERS} -->
							<p class="mb-0">
								{PHP.L.MostOnline}: {STAT_MAXUSERS}
							</p>
	<!-- ENDIF -->
						</div>
					</div>

				</div>
			</div>
		</div>

<!-- IF {PHP.usr.isadmin} -->
{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/inc/admin-page.tpl"}
<!-- ENDIF -->

	</div>
</main>
<!-- END: MAIN -->
