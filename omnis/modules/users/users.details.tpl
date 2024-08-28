<!-- BEGIN: MAIN -->
<main id="users_details" class="my-4">
	<div class="container">
		<div class="row">
			<div class="col">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<div class="title mb-3">
					<h1 class="lh-1">
						{PHP.L.User} {USERS_DETAILS_NICKNAME}
<!-- BEGIN: USERS_DETAILS_ADMIN -->
						[ {USERS_DETAILS_ADMIN_EDIT} ]
<!-- END: USERS_DETAILS_ADMIN -->
					</h1>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="{PHP.cfg.mainurl}" title="{PHP.L.Home}">{PHP.L.Home}</a>
						</li>
						<li class="breadcrumb-item">
							<a href="{PHP|cot_url('users')}">{PHP.L.Users}</a>
						</li>
						<li class="breadcrumb-item">
							{USERS_DETAILS_NICKNAME}
						</li>
					</ul>
				</div>
				<div class="table-responsive">
					<table class="table table-striped table-hover mb-0">
<!-- IF {PHP.cot_modules.pm} -->
						<tr>
							<td>{PHP.L.users_sendpm}:</td>
							<td>{USERS_DETAILS_PM}</td>
						</tr>
<!-- ENDIF -->
						<tr>
							<td class="w-25">{PHP.L.Maingroup}:</td>
							<td class="w-75">{USERS_DETAILS_MAINGRP}</td>
						</tr>
						<tr>
							<td>{PHP.L.Groupsmembership}:</td>
							<td>{USERS_DETAILS_GROUPS}</td>
						</tr>
						<tr>
							<td>{PHP.L.Country}:</td>
							<td>{USERS_DETAILS_COUNTRYFLAG} {USERS_DETAILS_COUNTRY}</td>
						</tr>
						<tr>
							<td>{PHP.L.Timezone}:</td>
							<td>{USERS_DETAILS_TIMEZONE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Birthdate}:</td>
							<td>{USERS_DETAILS_BIRTHDATE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Age}:</td>
							<td>{USERS_DETAILS_AGE}</td>
						</tr>
						<tr>
							<td>{PHP.L.Gender}:</td>
							<td>{USERS_DETAILS_GENDER}</td>
						</tr>
						<tr>
							<td>{PHP.L.Signature}:</td>
							<td>{USERS_DETAILS_TEXT}</td>
						</tr>
						<tr>
							<td>{PHP.L.Registered}:</td>
							<td>{USERS_DETAILS_REGDATE}</td>
						</tr>
<!-- IF {PHP.usr.isadmin} -->
						<tr>
							<td>
								Last seen:
							</td>
							<td>
								{USERS_DETAILS_LASTLOG_STAMP|cot_date('H:i j F Y', $this)}
							</td>
						</tr>
<!-- ENDIF -->
<!-- IF {USERS_DETAILS_AVATAR} -->
						<tr>
							<td>{PHP.L.Avatar}:</td>
							<td>{USERS_DETAILS_AVATAR}</td>
						</tr>
<!-- ENDIF -->
<!-- IF {USERS_DETAILS_PHOTO} -->
						<tr>
							<td>{PHP.L.Photo}:</td>
							<td>{USERS_DETAILS_PHOTO}</td>
						</tr>
<!-- ENDIF -->
					</table>
				</div>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
