<!-- BEGIN: MAIN -->
<!doctype html>
<html lang="{PHP.cfg.defaultlang}">
<head>

	<meta charset="utf-8">
	<title>{PHP.L.404-title}</title>
	<meta name="description" content="{PHP.L.404-subtitle}">

	<meta name="generator" content="Cotonti https://www.cotonti.com" />
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<meta http-equiv="x-ua-compatible" content="ie=edge" />

	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="apple-touch-icon" href="apple-touch-icon.png" />

	<link rel="stylesheet" type="text/css" href="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/404/reset.css">
	<link rel="stylesheet" type="text/css" href="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/404/404.css">
	<link rel="stylesheet" type="text/css" href="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/404/404-font.css">

</head>

<body>

	<div id="main">
		<span id="title">{PHP.cfg.maintitle}</span>
		<h1>{PHP.L.404-title}</h1>
		<p>
			{PHP.L.404-subtitle}
		</p>
		<ul id="actions">
			<li>
				<a href="{PHP.cfg.mainurl}">{PHP.L.404-home}</a>
			</li>
			<li>
				<a href="{PHP|cot_url('page', 'c=system&al=contacts')}">{PHP.L.404-report}</a>
			</li>
		</ul>
		<form role="form" action="{PHP.cfg.mainurl}/{PHP|cot_url('search')}" method="get">
			<input type="text" class="" placeholder="{PHP.L.404-search}" name="sq" />
			<button class="" type="submit">{PHP.L.Search}</button>
		</form>
		<ul id="social">
			<li>
				<a href="{PHP.R.theme-facebook-link}" rel="nofollow">
					<span class="icon-facebook"></span><i>Facebook</i>
				</a>
			</li>
			<li>
				<a href="{PHP.R.theme-twitter-link}" rel="nofollow">
					<span class="icon-twitter"></span><i>Twitter</i>
				</a>
			</li>
			<li>
				<a href="{PHP.R.theme-vk-link}" rel="nofollow">
					<span class="icon-vk"></span><i>VKontakte</i>
				</a>
			</li>
			<li>
				<a href="{PHP.R.theme-instagram-link}" rel="nofollow">
					<span class="icon-instagram"></span><i>Instagram</i>
				</a>
			</li>
		</ul>
	</div>

</body>
</html>
<!-- END: MAIN -->
