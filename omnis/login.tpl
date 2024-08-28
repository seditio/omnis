<!-- BEGIN: MAIN -->
<main id="login" class="my-4">
	<div class="container">
		<div class="row">
			<div class="mx-auto col col-lg-7 col-xl-6 col-xxl-5">
{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
				<div class="title mb-3">
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="{PHP.cfg.mainurl}" title="{PHP.L.Home}">{PHP.L.Home}</a>
						</li>
						<li class="breadcrumb-item">{PHP.L.Login}</li>
					</ul>
					<h1 class="display-6 lh-1">{USERS_AUTH_TITLE}</h1>
				</div>
<!-- IF {PHP.usr.id} -->
				<div class="alert alert-info">
					<p class="mb-0">
						{PHP.L.users_loggedinas} <strong>{PHP.usr.name}</strong>. {PHP.L.users_logoutfirst}
					</p>
				</div>
				<div class="btn-group w-100">
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.maingrp} == 6 -->
					<a class="btn btn-danger btn flex-fill" href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
<!-- ENDIF -->
					<a class="btn btn-success btn flex-fill" href="{PHP|cot_url('users', 'm=profile')}">{PHP.L.Profile}</a>
					<a class="btn btn-success btn flex-fill" href="{PHP.sys.xk|cot_url('login','out=1&x=$this', '', 0, 1)}">{PHP.L.Logout}</a>
				</div>
<!-- ELSE -->
				<form name="login" action="{USERS_AUTH_SEND}" method="post">
					<div class="input-group mb-3">
						<span class="input-group-text small w-25">{PHP.L.Name}:</span>
						{USERS_AUTH_USER}
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text small w-25">{PHP.L.Password}:</span>
						{USERS_AUTH_PASSWORD}
						<div class="input-group-text">
							{USERS_AUTH_REMEMBER}
						</div>
					</div>
					<div class="btn-group w-100">
						<button type="submit" name="rlogin" value="0" class="btn btn-success btn flex-fill">{PHP.L.Login}</button>
<!-- IF !{PHP.cfg.users.disablereg} -->
						<a href="{PHP|cot_url('users','m=register')}" class="btn btn-primary btn flex-fill">{PHP.L.Registration}</a>
<!-- ENDIF -->
						<a href="{PHP|cot_url('users','m=passrecover')}" class="btn btn-primary btn flex-fill">{PHP.L.users_lostpass}</a>
					</div>
				</form>
<!-- ENDIF -->

<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
				<div class="alert alert-warning mb-0" role="alert">
					<h4>
						{PHP.L.users_maintenance1}
<!-- IF {PHP.cfg.maintenancereason} -->
						({PHP.cfg.maintenancereason})
<!-- ENDIF -->
					</h4>
					<p class="mb-0">
						{PHP.L.users_maintenance2}
					</p>
				</div>
<!-- END: USERS_AUTH_MAINTENANCE -->

			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
