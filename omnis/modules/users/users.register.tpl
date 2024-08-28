<!-- BEGIN: MAIN -->
<main id="users_register" class="my-4">
	<div class="container">
		<div class="row">
			<div class="mx-auto col col-lg-7 col-xl-6 col-xxl-5">
{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
				<div class="title mb-3">
					<h1 class="lh-1">{USERS_REGISTER_TITLE}</h1>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="{PHP.cfg.mainurl}">{PHP.cfg.maintitle}</a>
						</li>
						<li class="breadcrumb-item">
							{PHP.L.Register}
						</li>
					</ul>
				</div>
				<form name="login" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data">
					<div class="mb-3">
						<label class="control-label" for="">{PHP.L.Username}</label>
						{USERS_REGISTER_USER}
					</div>
					<div class="mb-3">
						<label class="control-label" for="">{PHP.L.users_validemail} {PHP.L.users_validemailhint}</label>
						{USERS_REGISTER_EMAIL}
					</div>
					<div class="mb-3">
						<label class="control-label" for="">{PHP.L.Password}</label>
						{USERS_REGISTER_PASSWORD}
					</div>
					<div class="mb-3">
						<label class="control-label" for="">{PHP.L.users_confirmpass}</label>
						{USERS_REGISTER_PASSWORDREPEAT}
					</div>
					<div class="mb-3">
						<label class="control-label" for="">{USERS_REGISTER_VERIFYIMG}</label>
						{USERS_REGISTER_VERIFYINPUT}
					</div>
					<div class="btn-group w-100">
						<button type="submit" class="btn btn-success btn flex-fill">{PHP.L.Registration}</button>
						<a href="{PHP|cot_url('login')}" class="btn btn-primary btn flex-fill">{PHP.L.Login}</a>
						<a href="{PHP|cot_url('users','m=passrecover')}" class="btn btn-primary btn flex-fill">{PHP.L.users_lostpass}</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
