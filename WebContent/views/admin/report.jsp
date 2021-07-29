<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
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
					<li class="nav-item dropdown" id="Login"><a
						class="nav-link dropdown-toggle" href="#" id="navdrop"
						data-toggle="dropdown" style="width: 180px;"> <i
							class="fas fa-user-circle">${form.getId()}</i>
					</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Đăng xuất</a>
						</div></li>

				</ul>
			</div>
		</nav>
	</div>
	
	<!--  -->
		<table border="1" style="width: 100%" class="table table-striped">
		
			<tr>
			<td><a href="${url}/edit/" class="btn btn-primary">Favorite</a></td>
			<td><a href="${url}/edit/" class="btn btn-primary">Favorite User</a></td>
			<td><a href="${url}/edit/" class="btn btn-primary">Share Friend</a></td>
			</tr>
			<!--Có DB tải dữ liệu  -->
		<%-- <c:forEach var="item" items="${list}">
			<tr>
				<td scope="row">${item.}</td>
				<td scope="row">${item.}</td>
				<td scope="row">${item.}</td>
				<td scope="row">${item.}</td>
				<td scope="row">${item.}</td>
				<td><a href="${url}/edit/${item.}" class="btn btn-primary">Edit</a></td>
			</tr>

		</c:forEach> --%>
	</table>
</body>
</html>