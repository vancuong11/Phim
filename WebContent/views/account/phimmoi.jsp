<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	<!-- container -->
	<div class="container-fluid pt-5">
		<div class="row welcome text-center">
			<div class="col-12">
				<h1>PHIM MỚI</h1>
			</div>
			<hr class="line">
		</div>
	</div>
	<hr style="border-top: 5px double #cccccc; width: 50%;">
	<div class="slider1">
		<ul id="autoWidth" class="cs-hidden">
			<c:forEach var="i" items="${phimmoi}">

				<li class="item-a">
					<!--box-slider--------------->
					<div class="box">
						<!--img-box---------->
						<div class="slide-img"><!-- "/WebPhim/views/account/image/cay sung.jpg" -->
							<img alt="" src="/WebPhim/imagee/${i.img}">
							<!--overlayer---------->
							<div class="overlay">
								<!--buy-btn------>
								<a href="/WebPhim/account/detail/${i.id}" class="buy-btn">Xem
									Ngay </a>
							</div>
						</div>
						<!--detail-box--------->
						<div class="detail-box">
							<!--type-------->
							<div class="type">
								<a href="#">${i.title}</a>
								<p>${i.timee} m</p>

							</div>
							<!--price-------->
							<a href="#" class="price">HD</a>

						</div>

					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>