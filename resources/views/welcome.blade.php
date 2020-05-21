<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Laravel</title>
	<base href="{{asset('')}}">
	<link rel="stylesheet" type="text/css" href="asset/css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<header id="header" class="digibook-header">
		<div class="container">
			<div class="container holder">
				<a href="#" class="logo">
					<img src="asset/img/logo-header.png" alt="">
				</a>
				<div class="web-name">
					<div class="content-name">
						サエダオリジナル年賀状サービス 管理                                      
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- page-web -->
	<div class="container">
		<!-- form-demo -->
		@yield('content')

	</div>

	<footer id="footer" class="digibook-footer">
		<div class="container">
			<p class="copyright">Copyright © SAEDA. All rights reserved</p>
			<div class="logo-footer">
				<a href="" class="logo-icon">
					<img src="asset/img/logo-footer.png">
				</a>
			</div>
		</div>
	</footer>
</body>
</html>
