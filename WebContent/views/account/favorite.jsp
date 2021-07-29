<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid pt-5">
		<div class="row welcome text-center">
			<div class="col-12">
				<h1>Yêu Thích</h1>
			</div>
			<hr class="line">
		</div>
	</div>
	<hr style="border-top: 5px double #cccccc; width: 50%;">
	<!-- phim bộ -->
	<div class="container">
		<div class="row">
			<c:forEach var="i" items="${favorite}">
				<div class="col-md-4">
					<div class="box">
						<!--img-box---------->
						<div class="slide-img">
							<img alt="8" src="/WebPhim/imagee/${i.img }">
							<!--overlayer---------->
							<div class="overlay">
								<!--buy-btn------>
								<a href="/WebPhim/account/detail/${i.id}" class="buy-btn">Xem Chi Tiết</a>
							</div>
						</div>
						<!--detail-box--------->
						<div class="detail-box">
							<!--type-------->
							<div class="type1">
								<h5>${i.title}</h5>
								<p>(${i.timee} phút)</p>
								<form method="post">
								<button formaction="/WebPhim/favorite/dislike/${i.id}" class="buy-btn1">Bỏ thích</button>
							</form>
							</div>


						</div>

					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div id="footer">
		<div class="social-list">
			<a href=""><i class="ti-facebook"></i></a> <a href=""><i
				class="ti-instagram"></i></a> <a href=""><i class="ti-pinterest"></i></a>
			<a href=""><i class="ti-twitter"></i></a> <a href=""><i
				class="ti-linkedin"></i></a> <a href=""><i class="ti-youtube"></i></a>
		</div>
		<p class="copyright">
			Powered by <a href="">Valne</a>
		</p>
	</div>


	<!-- Đánh giá  -->

</body>
</html>