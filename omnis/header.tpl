<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="{PHP.cfg.defaultlang}">
<head>
{HEADER_GTM}

	<title>{HEADER_TITLE}</title>
	<meta name="description" content="{HEADER_META_DESCRIPTION}" />

	<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
	<meta name="generator" content="Cotonti https://www.cotonti.com" />
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="apple-touch-icon" href="apple-touch-icon.png" />
	<link rel="canonical" href="{HEADER_CANONICAL_URL}" />

	{HEADER_BASEHREF}
	{HEADER_HEAD}

	<!-- IF {PHP.cfg.plugin.omnis.microdata} -->
	<!-- Open Graph -->
	<meta property="og:type" content="website">
	<meta property="og:title" content="{HEADER_TITLE}">
	<meta property="og:description" content="{HEADER_META_DESCRIPTION}">
	<meta property="og:url" content="{HEADER_CANONICAL_URL}">
	<meta property="og:image" content="{HEADER_OG_IMAGE}">
	<meta property="og:image:width" content="{HEADER_OG_IMAGE_WIDTH}">
	<meta property="og:image:height" content="{HEADER_OG_IMAGE_HEIGHT}">
	<meta property="og:locale" content="{HEADER_OG_LOCALE}">
	<meta property="fb:app_id" content="{HEADER_OG_APPID}">

	<!-- Twitter -->
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:title" content="{HEADER_TITLE}">
	<meta name="twitter:description" content="{HEADER_META_DESCRIPTION}">
	<meta name="twitter:domain" content="{HEADER_OG_DOMAIN}">
	<meta name="twitter:url" content="{HEADER_CANONICAL_URL}">
	<meta name="twitter:image" content="{HEADER_OG_IMAGE}">
	<meta name="twitter:image:width" content="{HEADER_OG_IMAGE_WIDTH}">
	<meta name="twitter:image:height" content="{HEADER_OG_IMAGE_HEIGHT}">
	<meta name="twitter:site" content="@{PHP.R.theme-twitter-user}">

	<script type="application/ld+json">
	{
		"@context" : "https://schema.org",
		"@type" : "Organization",
		"name" : "{PHP.L.theme-title}",
		"url" : "{PHP.cfg.mainurl}",
		"logo": "{PHP.cfg.mainurl}/opengraph/logo.svg",
		"sameAs" : [
			"{PHP.R.theme-telegram-link}",
			"{PHP.R.theme-vk-link}",
			"{PHP.R.theme-facebook-link}",
			"{PHP.R.theme-twitter-link}",
			"{PHP.R.theme-instagram-link}"
		]
	}
	</script>
	<!-- ENDIF -->
</head>

<body>
{HEADER_GTM_NOSCRIPT}

	<div id="preloader">{PHP.L.theme-welcome} {PHP.L.theme-title}</div>

	<header id="top" class="py-3 py-lg-4 mb-lg-4">
		<div class="container">
			<div class="row">
				<div class="col d-flex justify-content-between align-items-center">
					<a href="#" class="px-3 d-block menu" id="toggle_offcanvas">{PHP.R.icon-ellipsis-vertical}</a>
					<div class="text-center">
						<a href="{PHP.cfg.mainurl}" class="logo fw-medium d-block">{PHP.L.theme-title}</a>
						<p class="small lh-1 mt-1 mb-0">{PHP.L.theme-subtitle}</p>
					</div>
					<div class="actions d-flex">
						<a href="#" class="me-2 me-lg-3 px-2 d-flex" id="toggle_scheme">
							<span>{PHP.R.icon-sun}</span>
							<span>{PHP.R.icon-moon}</span>
						</a>
						<a href="#" class="px-2 d-flex" id="toggle_search">
							<span>{PHP.R.icon-search}</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</header>
<!-- END: HEADER -->
