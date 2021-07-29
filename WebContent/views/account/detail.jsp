<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
<style>
    .border {
        display: inline-block;
        width: 70px;
        height: 70px;
        margin: 6px;
    }
    
    #footer {
        padding: 64px 16px;
        text-align: center;
        background-color: rgb(56, 55, 55);
    }
    
    #footer .social-list {
        font-size: 24px;
    }
    
    #footer .social-list a {
        color: rgba(255, 255, 255, 0.6);
        text-decoration: none;
    }
    
    #footer .copyright a:hover,
    #footer .social-list a:hover {
        color: rgba(255, 255, 255, 0.4);
    }
    
    #footer .copyright {
        margin-top: 15px;
        color: rgba(0, 0, 0, 0.6);
    }
    
    #footer .copyright a {
        color: rgba(0, 0, 0, 0.6);
    }
</style>

<body>
    <jsp:include page="header.jsp"></jsp:include>
    <!--  -->
  
  
  
  
    <div class="container-fluid ">
        <div class="row">
            <div class="col-sm-12 pt-3">
                <div class="container" style="height: 600px; width: auto;background: #ccc;margin-top: 20px;">
                    <div class="info">
                        <div class="row">
                            <div class="col-6">
                                <!-- hinh -->
                                <div class="slide-img" style="margin-top: 30px;">
                                    <img alt="1" src="/WebPhim/imagee/${item.img}" style="width: 430px; height: 400px ">
                                    <!--overlayer---------->
                                </div>

                                <div style="margin-top: 120px ">
                                    <span class="border border-primary">
                                        <img src="/WebPhim/imagee/${item.img}" style="width: 80px;" alt="">
                                    </span>
                                    <span class="border border-secondary">
                                        <img src="/WebPhim/imagee/${item.img}" style="width: 80px;" alt="">
                                    </span>
                                    <span class="border border-success">
                                        <img src="/WebPhim/imagee/${item.img}" style="width: 80px;" alt="">
                                    </span>
                                    <span class="border border-danger">
                                        <img src="/WebPhim/imagee/${item.img}" style="width: 80px;" alt="">
                                    </span>
                                    <span class="border border-success">
                                        <img src="/WebPhim/imagee/${item.img}" style="width: 80px;" alt="">
                                    </span>
                                </div>





                            </div>

                            <div class="col-6">
                                <!-- <div id="loginbox" style="margin-top:50px; margin-left: 10px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2"> -->
                                <h2 style="margin-top: 10px;">${item.title}</h2>
                                <p> ${item.content}</p>
                                <p><b>Đạo diễn:</b> ${item.director}</p>
                                <p><b>Thời lượng:</b> ${item.timee}phút</p>
                                <p><b>Phụ đề:</b> ${item.languagee }</p>
                                <p><b>Thể loại:</b> Hành động</p>
                                
                                <%-- <a href=""class="btn btn-warning"> <i class="fas fa-share"></i> Share</a> --%>
                                <%-- <c:if test="${!check}">
                                	<button disabled="disabled" class="btn btn-warning"> <i class="fas fa-heart"></i></button>
                                </c:if> --%>
                               <%--  <a href="/WebPhim/favorite/like/${item.id}" class="btn btn-warning"> <i class="fas fa-heart"></i></a> --%>
                                
                                <form method="post">
                                <button formaction="/WebPhim/favorite/like/${item.id}" class="btn btn-warning"> <i class="fas fa-heart"></i></button>
                                <button formaction="/WebPhim/views/account/share.jsp" class="btn btn-warning"> <i class="fas fa-share"></i></button>
                                </form>
                                
                                <%--  <button formaction="/WebPhim/favorite/share/${item.id}" class="btn btn-warning"> <i class="fas fa-share"></i></button> --%>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  -->
    <div class="container-fluid pt-5">
        <div class="row welcome text-center">
            <div class="col-12">
                <h1>REVIEW PHIM</h1>
            </div>
            <hr class="line">
        </div>
    </div>
    <hr style="border-top: 5px double #cccccc;  width: 50%; ">
    <div class="container" style="height: 300px; width: auto;background: #ccc;margin-top: 50px;">
        <p>${item.review}</p>
    </div>

    <div class="container-fluid pt-5">
        <div class="row welcome text-center">
            <div class="col-12">
                <h1>TRAILER PHIM</h1>
            </div>
            <hr class="line">
        </div>
    </div>
    <hr style="border-top: 5px double #cccccc;  width: 50%; ">
    <div class="container" style="height: 360px;margin-left: 28%;margin-right: 50%; width: auto;margin-top: 50px;">
        <iframe width="560" height="360" src="${item.trailer}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    
    
    
    <!-- <iframe width="560" height="315" src="${phim.url}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
    <div id="footer" style="margin-top: 20px;">
        <div class="social-list">
            <a href=""><i class="ti-facebook"></i></a>
            <a href=""><i class="ti-instagram"></i></a>
            <a href=""><i class="ti-pinterest"></i></a>
            <a href=""><i class="ti-twitter"></i></a>
            <a href=""><i class="ti-linkedin"></i></a>
            <a href=""><i class="ti-youtube"></i></a>
        </div>
        <p class="copyright">Powered by <a href="">Valne</a></p>
    </div>

</body>

</html>