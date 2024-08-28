<!-- BEGIN: MAIN -->
<main id="users_profile" class="my-4">
	<div class="container">
		<div class="row">
			<div class="col">
{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
				<div class="title mb-3">
					<h1 class="lh-1">{PHP.L.Profile}</h1>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="{PHP.cfg.mainurl}" title="{PHP.L.Home}">{PHP.L.Home}</a>
						</li>
						<li class="breadcrumb-item">
							{USERS_PROFILE_TITLE}
						</li>
					</ul>
				</div>
				<form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile">
					<input type="hidden" name="userid" value="{USERS_PROFILE_ID}" />
					<div class="table-responsive">
						<table class="table table-striped table-hover mb-0">
							<tr>
								<td class="w-25">{PHP.L.Username}:</td>
								<td class="w-75">{USERS_PROFILE_NAME}</td>
							</tr>
							<tr>
								<td>{PHP.L.Groupsmembership}:</td>
								<td>{USERS_PROFILE_GROUPS}</td>
							</tr>
							<tr>
								<td>{PHP.L.Registered}:</td>
								<td>{USERS_PROFILE_REGDATE}</td>
							</tr>
<!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
							<tr>
								<td>{PHP.L.Email}:</td>
								<td>
									{PHP.L.Email}:<br />{USERS_PROFILE_EMAIL}
<!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
									<script type="text/javascript">
										$(document).ready(function(){
											$("#emailnotes").hide();
											$("#emailtd").click(function(){$("#emailnotes").slideDown();});
										});
									</script>
									<div>
										{PHP.themelang.usersprofile.Emailpassword}:<br />{USERS_PROFILE_EMAILPASS}
									</div>
									<div>{PHP.themelang.usersprofile.Emailnotes}</div>
<!-- END: USERS_PROFILE_EMAILPROTECTION -->
								</td>
							</tr>
<!-- END: USERS_PROFILE_EMAILCHANGE -->
							<tr>
								<td>{PHP.L.users_hideemail}:</td>
								<td>{USERS_PROFILE_HIDEEMAIL}</td>
							</tr>
<!-- IF {PHP.cot_modules.pm} -->
							<tr>
								<td>{PHP.L.users_pmnotify}:</td>
								<td>
									{USERS_PROFILE_PMNOTIFY}
									<p class="small mb-0">{PHP.L.users_pmnotifyhint}</p>
								</td>
							</tr>
<!-- ENDIF -->
							<tr>
								<td>{PHP.L.Theme}:</td>
								<td>{USERS_PROFILE_THEME}</td>
							</tr>
							<tr>
								<td>{PHP.L.Language}:</td>
								<td>{USERS_PROFILE_LANG}</td>
							</tr>
							<tr>
								<td>{PHP.L.Country}:</td>
								<td>{USERS_PROFILE_COUNTRY}</td>
							</tr>
							<tr>
								<td>{PHP.L.Timezone}:</td>
								<td>{USERS_PROFILE_TIMEZONE}</td>
							</tr>
							<tr>
								<td>{PHP.L.Birthdate}:</td>
								<td>{USERS_PROFILE_BIRTHDATE}
								</td>
							</tr>
							<tr>
								<td>{PHP.L.Gender}:</td>
								<td>{USERS_PROFILE_GENDER}</td>
							</tr>
<!-- IF {USERS_PROFILE_AVATAR} -->
							<tr>
								<td>{PHP.L.Avatar}:</td>
								<td>{USERS_PROFILE_AVATAR}</td>
							</tr>
<!-- ENDIF -->
<!-- IF {USERS_PROFILE_PHOTO} -->
							<tr>
								<td>{PHP.L.Photo}:</td>
								<td>{USERS_PROFILE_PHOTO}</td>
							</tr>
<!-- ENDIF -->
							<tr>
								<td>{PHP.L.Signature}:</td>
								<td>{USERS_PROFILE_TEXT}</td>
							</tr>
							<tr>
								<td>
									{PHP.L.users_newpass}:
									<p class="small">{PHP.L.users_newpasshint1}</p>
								</td>
								<td>
									{USERS_PROFILE_OLDPASS}
									<p class="small mb-2">{PHP.L.users_oldpasshint}</p>
									{USERS_PROFILE_NEWPASS1} {USERS_PROFILE_NEWPASS2}
									<p class="small m-0">{PHP.L.users_newpasshint2}</p>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
