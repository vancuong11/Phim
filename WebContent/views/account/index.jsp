<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!--  -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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
	<jsp:include page="phimmoi.jsp"></jsp:include>


	<!-- phim chieu rap -->
	<jsp:include page="chieurap.jsp"></jsp:include>

	

	<!-- phim Bộ -->
	<jsp:include page="bo.jsp"></jsp:include>

	
	</div>

	<!-- footer -->
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




	<!--to top web  -->
	<button id="btnScrollToTop" onclick="topFunction()">
		<i class="ti-arrow-up"></i>
	</button>


	<!--  -->

	<!--script-link----------->
	<script type="text/javascript"
		src="/WebPhim/views/account/Scripts/js.js">
		
	</script>

</body>
<script>
	function find() {
		var show = document.getElementById("find");
		//alert(show.style.display);
		if (show.style.display == "none") {
			show.style.display = "block";
		} else {
			show.style.display = "none";
		}
	}
	//EXIT
	function dangxuat(){
		location.replace("WebPhim/views/account/sign_in.jsp")
	}
	

	// to top web
	var mybutton = document.getElementById("btnScrollToTop");

	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
			mybutton.style.display = "block";
		} else {
			mybutton.style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>

</html>