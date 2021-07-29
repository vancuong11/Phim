<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    .text-warning {
        font-size: 150%;
    }
.video {
	height: 500px;
	width: 800px;
	border: 1px solid back;
	margin-left: 30%;
	margin-right: 30%;
}
</style>
<body>
	<div id="header">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top ">
            <p class="text-warning">ADMIN TOOL</p>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item ">
                                <a class="nav-link" href="/WebPhim/home-admin">Home <span class="sr-only">(current)</span></a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="/WebPhim/home-videos">Videos</a>
                            </li>
                           <li class="nav-item">
                                <a class="nav-link" href="/WebPhim/home-user">Users</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/WebPhim/home-report">Report</a>
                            </li>
                        </ul>
                    </div>
                    <li class="nav-item dropdown" id="Login">
                        <a class="nav-link dropdown-toggle" href="#" id="navdrop" data-toggle="dropdown" style="width: 180px;">
                            <i class="fas fa-user-circle">${form.getId()}</i>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Đăng xuất</a>
                        </div>
                    </li>

                </ul>
            </div>
        </nav>
    </div>
	<!--Thông báo -->
	<mark>${message}</mark>
	<c:url var="url" value="/home" />
	<div class="video">
		<!-- Form -->
		<form action="${url}-videos	" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="email">Video ID:</label> 
				<input name="id" type="text" class="form-control" value="${from.id}" >
			</div>
			<div class="form-group">
				<label for="pwd">Video Title:</label> 
				<input type="text" name="title" class="form-control" value="${from.title}">
			</div>
			<div class="form-group">
				<label for="pwd">Video Content:</label> 
				<input type="text" name="content" class="form-control" value="${from.content}">
			</div>
			<div class="form-group">
				<label for="pwd"> Director:</label> 
				<input type="text" name="director" class="form-control"value="${from.director}" >
			</div>
			<div class="form-group">
				<label for="pwd">Thời lượng:</label> 
				<input type="text" name="timee" class="form-control"value="${from.timee}" >
			</div>
			<div class="form-group">
				<label for="pwd">Ngôn ngữ:</label> 
				<input type="text" name="languagee" class="form-control" value="${from.languagee}">
			</div>
			<div class="form-group">
				<label for="pwd">Reviews:</label> 
				<textarea rows="4" name="review" cols="30" class="form-control" value="${from.review}"></textarea>
			</div>
			<div class="form-group">
				<label for="pwd">Trailer:</label> 
				<input type="text" name="trailer" class="form-control" value="${from.trailer}">
			</div>
			<div class="form-group">
				<label for="pwd">Hình ảnh:</label> 
				<input type="file" name="photo_file" class="form-control" value="${from.img}">
			</div>
			<div class="form-group">
				<label for="pwd">Tên loại:</label> 
				<input type="text" name="tenloai" class="form-control" value="${from.tenloai}">
			</div>
			<div class="form-group">
				<label for="pwd">Kieu:</label> 
				<input type="text" name="kieu" class="form-control" value="${from.tenloai}">
			</div>
			<button formaction="${url}/create" class="btn btn-primary">Create</button>
		<button formaction="${url}/update" class="btn btn-success">Update</button>
		<button formaction="${url}/delete" class="btn btn-danger">Delete</button>
		<a href="${url}-videos">Reset</a>
		</form>
	</div> 

	<!--Table-->
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!--SUA LAI NUA  -->
	<%-- <table border="1" style="width: 100%">
		<c:forEach var="item" items="${video}">
			<tr>
				<td >${item.id}</td>
				<td >${item.title}</td>
				<td >${item.content}</td>
				<td >${item.director}</td>
				<td >${item.timee}</td>
				<td >${item.languagee}</td>
				<td >${item.review}</td>
				<td >${item.trailer}</td>
				<td><img src="/WebPhim/imagee/${item.img}" style="height: 150px"></td> 
				<td>${item.tenloai}</td>
				<td>${item.kieu}</td>
				<td><a href="${url}/edit/${item.getId()}" class="btn btn-primary">edit</a></td>
			</tr>
</c:forEach>
		
	</table>  --%>

</body>

</html>