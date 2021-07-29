<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
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
    <!--  -->
    <c:if test="${!empty check}">
		<div class="container pt-4" style="display: block">
			<div
				class="alert alert-${backround} alert-dismissible fade show text-center">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong style="color: red;">Thông báo!</strong> ${message}
			</div>
		</div>
	</c:if>
	
    <form action="/WebPhim/page/profile" method="post">
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5"
                        src="/WebMovie/img/user.png" width="90"><span class="font-weight-bold">${profile.id}</span><span
                        class="text-black-50">${profile.email}</span></div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h6 class="text-right">Cập nhật thông tin</h6>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Tên</label><input type="text"
                                class="form-control" name="ten" value="${profile.fullname}" required="required"></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Email</label><input type="email"
                                class="form-control" name="Email" value="${profile.email}" required="required"></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-6"><label class="labels">Mật khẩu</label><input type="password" name="matKhau"
                                class="form-control" value="${profile.password}" required="required"></div>
                        <div class="col-md-6"><label class="labels">Xác nhận mật khẩu</label><input type="password" name="xnMatKhau"
                                class="form-control" value="${profile.password}" required="required"></div>
                    </div>
                    <div class="mt-5 text-center"><button class="btn btn-primary profile-button" formaction="/WebPhim/page/profile/update">Cập
                            nhật</button></div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center experience"><span>Hoạt động</span>
                    </div>
                    <div class="d-flex flex-row mt-3 exp-container"><img src="/WebPhim/imagee/heart.png" width="45" height="45"
                            height="45">
                        <div class="work-experience ml-1"><span class="font-weight-bold d-block">Yêu thích:</span><span
                                class="d-block text-black-70 labels" style="font-size: medium;">${favorite}</span></div>
                    </div>
                    <hr>
                    
                </div>
            </div>
        </div>
    </div>
    </form>
    
    <!--  -->
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
</body>

</html>