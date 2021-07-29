<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web/views/account/src/main.css">
<link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- TAg phim -->
<!--page-icon------------>
<link rel="shortcut icon"
	href="/WebPhim/views/account/document/E-slider-images/logo.png">
<!--stylesheet------------->
<link rel="stylesheet" type="text/css"
	href="/WebPhim/views/account/src/stylee.css">
<!--light-slider.css------------->
<link rel="stylesheet" type="text/css"
	href="/WebPhim/views/account/document/Lightslider files/lightslider.css">
<!--Jquery-------------------->
<script type="text/javascript"
	src="/WebPhim/views/account/document/query.js"></script>
<!--lightslider.js--------------->
<script type="text/javascript"
	src="/WebPhim/views/account/document/Lightslider files/lightslider.js"></script>
<link rel="stylesheet"
	href="/WebPhim/views/account/src/themify-icons/themify-icons.css">

</head>
<body>
	<div id="header">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top ">
			<a class="navbar-brand" href="/WebPhim/account/index"> <img
				src="/WebPhim/views/account/image/logo (2).png" height="60"
				width="60">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>


			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item "><a class="nav-link" href="/WebPhim/account/index">Trang
							chủ <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item ">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Thể Loại </a>
						<div class="dropdown-menu bg-dark"
							aria-labelledby="navbarDropdown">
							<a class="dropdown-item text-light" href="#">Phim hành động</a> <a
								class="dropdown-item text-light" href="#">Phim hoạt hình</a> <a
								class="dropdown-item text-light" href="#">Phim khoa học viễn
								tưởng</a>
						</div></li>
					<a class="nav-link" href="/WebPhim/account/bo">Phim bộ <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/WebPhim/account/phimrap">Phim chiếu rạp</a>
					</li>
					<!-- Search -->
					<li class="nav-item"><a class="nav-link" href="#"
						onclick="find()">Tìm kiếm</a></li>
			</div>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item dropdown" id="NotLogin"><a
						style="display: block;" class="nav-link dropdown-toggle" href="#"
						id="login" data-toggle="dropdown"> <i
							class="fas fa-sign-in-alt">${form.getId()!=null?'Xin chào':'Login'}</i>
					</a>
						<div class="dropdown-menu"
							style="display: ${form.getId()!=null?'none':''}">
							<a class="dropdown-item" href="/WebPhim/account/sign_in">Đăng
								nhập</a>
							<hr>
							<a class="dropdown-item" href="/WebPhim/account/sign_up">Đăng
								ký</a>
						</div></li>

					<li class="nav-item dropdown" id="Login"><a
						class="nav-link dropdown-toggle" href="#" id="navdrop"
						data-toggle="dropdown" style="width: 180px;"> <i
							class="fas fa-user-circle">${form.getId()}</i>
					</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="/WebPhim/page/profile/index">Thông tin</a> <a
								class="dropdown-item" href="/WebPhim/page/favorite/index">Yêu thích</a>
							<hr>
							<a class="dropdown-item" href="/WebPhim/account/sign_in"
								onclick="dangxuat()" id="">Đăng xuất</a>
						</div></li>

				</ul>
			</div>

		</nav>


	</div>
	<!-- Tab Search -->
	<div class="container-fluid bg-primary   " id="find"
		style="display: none;">
		<div class="row">
			<div class="col-sm-12 pt-3">
				<div class="container">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="Tìm kiếm...">
						<div class="input-group-append">
							<span class="input-group-text"><i class="fas fa-search"></i></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Tag Search -->

	<!-- Slide show -->
	<div id="demo" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://lh3.googleusercontent.com/CB-BxprKhlCALyX1ydy6g1D51zjSd_8xxa-jIev50c9grh2Eie2G4YTwxgRiDJoBK1SN3M8_9icVfpdswqqrhHIY0aKwHdjPdT-7g_4KHSmLSOqnhKqBzsFqwOwj_RWq652QtXO2Vrce9ev8kOBQkvHp5hjf_2Gcu4pWD87NFi6Iu6rs8aghQCvVrS7XjMpm6GrXLXFSPiQ9oT6VtfCyg6S0p-3uBf0WrzB-1tv7vjV8zTKZiS4W5WsI96eSP90wJF7TuFi6wkX8WhvNJugA13q1VvEXgsRUxb_uYIsDeWx24kXPHaIZSlWVcAJgr2pAWeL56zAGiFbuBLNtlAqzvi-R8JS4aM3tFSRz2v4-GyYcsQbs6OIPjuByBzPKXN2VKaG1RLKSsH7DxTWU6TuKVaPbJQJNq1D0eSERSvFIPS8VM4vPOSg2nmnaJh8PFSn1BOgEimisfjw1h421lCnTacA6CpDqQTk317kzvBqIRVb17-o--vATGCbENeGWsk3cY8CpdWiasrmjmWRl8S2FqPM-dL3_ikkZhzW0WHPjr5hQsJxGIaPxWMS0fIuuO9-ePZ9VKNzPYx5yQcrzlCMU3NLQmCtA16FqslpvyUeI67PVuuuABgoh3Nh2pdY_VEG2jhHgi9EQZD8ftcCMqRkVy1ZitTUP8T4IFzHzw-Q76QMPppeKhFRVBMw2Xyvn=w1236-h695-no?authuser=0"
					alt="Los Angeles" width="100%" height="700">
				<div class="carousel-caption d-none d-md-block">

					<button type="button" class="btn btn-outline-danger"
						style="margin-right: 20px;">Xem Phim</button>
					<button type="button" class="btn btn-outline-primary">Xem
						Chi Tiết</button>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://lh3.googleusercontent.com/9ojvhkH-Z4RJVw3e6BUhsUctjOoz4ILdKGmigd2vpBeUXBLRFS2yEicUgPKvRfMRoX_80o6NdJiTEveV_FwzYB5xfKDT9Ose5f1G8HfWVYG-SGUe_2F025l7Xv3zoGY-Gf4cy7Ni83CrlwA-uIT0BuUmGdNIgaR-TLaGJja-BwTZE2fv9A8pHj3OWHyrkrrIAHMKXc_hzZhITh2SXDo74I3H-oTWfBO6yvmJ8Qand1pHQVNaSRmzJNvFVmBBnqwarJiWeakI42m3ywBqHzRQxTEltD5hTFMmS2JMIdXB7APgN170zVVrCRPpOV22KZv2vPxNKmcO7L_2xvy2HS6YBsF-nyKuyMTHwnFeUayablafBPa1Kj9mBKm-xC_JZhjR43_RqVGPLnX7XE5-nQaVsIaFUYtM2pJmi2rSXrW6rrwsPo7Y1JFPflN_4hvv4AXbPdhd5aj37HB3kxc1H7sHTLS0S407pDaVlhafRk05k4yVW1FVVRuczPpIP26QH6x_MoY2ITJH1AIuS2n1-bFtE96hiw1nHJWR-1wdIarkq0moZfu6gw6UEvcEGj-zcA5ybtWplyvYtPlF9RpRDfpcupRcnXklH9gpLSeuXiv9jt623Qke7Sty9FnzwVVKbQ9twrlVT1bOwpvculv5o6KPYt57qPHispA_DgNsC28Ayyv-NS5ZujBnPhXQbPvn=w1112-h696-no?authuser=0"
					alt="Chicago" width="100%" height="700">
				<div class="carousel-caption d-none d-md-block">

					<button type="button" class="btn btn-outline-warning"
						style="margin-right: 20px;">Xem Phim</button>
					<button type="button" class="btn btn-outline-primary">Xem
						Chi Tiết</button>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://lh3.googleusercontent.com/xpAfV1WrudJXWmcZJpBt_NjQki_Bos0bUKumTh9i_Mq7wVaW5twLFa2_7wioNPf9zgVA6Kta-ymJ3jX2uoxs2cbm3qBibfqE3MPSBppahO17MpqzPWidAfzYI0Q425nhHdn1tIxZdwi3C-weSGtMThJ-Gg5RXHnO-Gpcv0vNHpKgM2JRjyspEw0i6cBRJDqY8W8EQEMWwZfM3aWBMdWpYbcBOV9HaK_rg3Ah_bpPzMM-j7lO3kBY41dHyqZrO0wPSuk3woyQDb05_Ooxc2t06tl_hHRhgMbAYh2Hn8Qb1bx9D-r1cbA8X9W4JzYVjNb03pQFt6KItEuVwTnRORHDUkIp2QeZwjwhZbSnhRHksUAoWVU7_9CZJHYFCcIqFIfwlwt1zU5tvG29X0XMoboOTK1xGV0eCWvg0_pXW0WvfALs86LYpNRBwmnxi3gbF2vi2nuLLIYpnWxtmT6cvTKL8tdGX6zosK9is6l4TLyhCduTBdmZoajatohcHoLcEStFbjHVm-wQXR9pZbbq_jmgMd-nVYZNZZkjFs3EXzXT4XTUBIQTutM9Xe6ZkOGC3eHHUGxqVmnFpEtouFpLrZ7Y11f03_O12OzfP9dgNmI1XNc_xRuOayatHCEqi8rTZ4JiOyfWJ8Rm9bg9HQdPzaBe8LUC0WcvbhODkjStv3BWX0rpw48MpM7wciyQTeUL=w1021-h638-no?authuser=0"
					alt="New York" width="100%" height="700">
				<div class="carousel-caption d-none d-md-block">

					<button type="button" class="btn btn-outline-light"
						style="margin-right: 20px;">Xem Phim</button>
					<button type="button" class="btn btn-outline-danger">Xem
						Chi Tiết</button>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>

</body>
</html>