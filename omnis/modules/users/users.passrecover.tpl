<!-- BEGIN: MAIN -->
<main id="users_passrecover" class="my-4">
	<div class="container">
		<div class="row">
			<div class="mx-auto col col-lg-7 col-xl-6 col-xxl-5">
{FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
				<div class="title mb-3">
					<h1 class="lh-1">{PHP.L.pasrec_title}</h1>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="{PHP.cfg.mainurl}">{PHP.cfg.maintitle}</a>
						</li>
						<li class="breadcrumb-item">{PHP.L.pasrec_title}</li>
					</ul>
				</div>
<!-- IF {PHP.msg} == 'request' -->
				<p>{PHP.L.pasrec_mailsent}</p>
<!-- ENDIF -->
<!-- IF {PHP.msg} == 'auth' -->
				<p>{PHP.L.pasrec_mailsent2}</p>
<!-- ENDIF -->
<!-- IF !{PHP.msg} -->
				<form role="form" name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post" class="">
					<ol>
						<li>{PHP.L.pasrec_explain1}</li>
						<li>{PHP.L.pasrec_explain2}</li>
						<li>{PHP.L.pasrec_explain3}</li>
					</ol>
					<div class="input-group mb-3">
						<input type="text" class="form-control" name="email" />
						<button type="submit" class="btn btn-primary">{PHP.L.pasrec_request}</button>
					</div>
					<div class="alert alert-info mb-0">
						{PHP.L.pasrec_explain4}
					</div>
				</form>
<!-- ENDIF -->
			</div>
		</div>
	</div>
</main>
<!-- END: MAIN -->
