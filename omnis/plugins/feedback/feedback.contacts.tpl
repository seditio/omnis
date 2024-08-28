<!-- BEGIN: MAIN -->
{FEEDBACK_JS}
<form id="{FEEDBACK_FORM_ID}" name="{FEEDBACK_FORM_ID}" class="feedback-form mb-4" action="{FEEDBACK_FORM_SEND}" method="post" data-lang="{PHP.lang}">
	{FEEDBACK_FORM_USER_ID}
	{FEEDBACK_FORM_TOKEN}
	{FEEDBACK_FORM_NAME}
	{FEEDBACK_FORM_LOCATION}

	<div class="mb-3">
		<label class="form-label mb-1" for="ruser">{PHP.L.Username}:</label>
		{FEEDBACK_FORM_AUTHOR}
	</div>

	<div class="mb-3">
		<label class="form-label mb-1" for="remail">E-mail:</label>
		{FEEDBACK_FORM_EMAIL}
	</div>

	<div class="mb-3">
		<label class="form-label mb-1" for="rtext">{PHP.L.Message}:</label>
		<textarea class="form-control" id="rtext" name="rtext" rows="6" cols="36" placeholder="Ваш вопрос или предложение"></textarea>
	</div>

	<!-- BEGIN: CAPTCHA -->
	<div class="mb-3">
		<label for="rverify" class="form-label">Проверочный код:</label>
		<div class="feedback-captcha position-relative">
			{FEEDBACK_FORM_VERIFY}
			{FEEDBACK_FORM_VERIFY_IMG}
		</div>
	</div>
	<!-- END: CAPTCHA -->

	<div class="alert alert-info feedback-messages done small hide"></div>
	<div class="alert alert-danger feedback-errors error small hide"></div>

	<button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
</form>
<!-- END: MAIN -->
