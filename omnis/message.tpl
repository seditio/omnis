<!-- BEGIN: MAIN -->
<!-- IF !{AJAX_MODE} -->
<main id="message" class="my-4">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="title p-0">
					<h1 class="lh-1 text-center mb-3">{MESSAGE_TITLE}</h1>
				</div>
<!-- ENDIF -->
				<div class="alert alert-warning mb-0" role="alert">
					<p class="text-center mb-0">
						{MESSAGE_BODY}
					</p>
					<div class="d-flex justify-content-center">
<!-- BEGIN: MESSAGE_CONFIRM -->
						<a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton btn btn-success btn-sm fw-bold mx-2 text-uppercase w-25">
							{PHP.L.Yes}
						</a>
						<a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton btn btn-danger btn-sm bold fw-bold text-uppercase mx-2 w-25">
							{PHP.L.No}
						</a>
<!-- END: MESSAGE_CONFIRM -->
					</div>
				</div>
<!-- IF !{AJAX_MODE} -->
			</div>
		</div>
	</div>
</main>
<!-- ENDIF -->

<!-- END: MAIN -->
