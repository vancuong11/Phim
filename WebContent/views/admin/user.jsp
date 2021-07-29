<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
							<li class="nav-item "><a class="nav-link"
								href="/WebPhim/home-admin">Home <span class="sr-only">(current)</span></a>
							</li>

							<li class="nav-item"><a class="nav-link"
								href="/WebPhim/home-videos">Videos</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/WebPhim/home-user">Users</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/WebPhim/home-report">Report</a></li>
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
	<!--Thông báo -->
	<mark>${message}</mark>
	<c:url var="url" value="/user" />
	<div class="video">
		<!-- Form -->
		<form action="${url}/index" method="post">
			
			<table border="1" style="width: 100%" class="table table-striped">
			<thead>
					<tr>
						<th>ID</th>
						<th>Mật Khẩu</th>
						<th>Tên</th>
						<th>Email</th>
						<th>Vai trò</th>
						
					</tr>
				</thead>
				<tbody>
				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.id}</td>
						<td>${item.password}</td>
						<td>${item.fullname}</td>
						<td>${item.email}</td>
						<td>${item.admin?'Admin':'User'}</td>
						<td><a class="btn btn-primary btn-sm" href="#myModal2"
								data-toggle="modal" onclick="result2('${item.id}')"
									formaction="">Cập nhật vai trò</a> | <a
								class="btn btn-danger btn-sm" href="#myModal"
								data-toggle="modal" onclick="result1('${item.id}')">Xóa</a></td>
					</tr>

				</c:forEach>
				</tbody>
			</table>
			
			<div id="myModal" class="modal fade">
				<div class="modal-dialog modal-confirm">
					<div class="modal-content">
						<div class="modal-header flex-column">
							<div class="icon-box">
								<i class="material-icons">&#xE5CD;</i>
							</div>
							<h4 class="modal-title w-100">Bạn có chắc?</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<p>Bạn có thực sự muốn xóa người dùng này không?</p>
						</div>
						<div class="modal-footer justify-content-center">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancel</button>
							<button formaction="${url}/delete" class="btn btn-danger">Delete</button>
							<input type="text" name="maXoa" id="result" style="display: none;">
						</div>
					</div>
				</div>
			</div>
			
			<div id="myModal2" class="modal fade">
				<div class="modal-dialog modal-confirm">
					<div class="modal-content">
						<div class="modal-header flex-column">
							<div class="icon-box">
								<i class="material-icons">&#xE5CD;</i>
							</div>
							<h4 class="modal-title w-100">Bạn có chắc?</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<p>Bạn có muốn thay đổi vai trò của người dùng này không?</p>
						</div>
						<div class="modal-footer justify-content-center">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancel</button>
							<button formaction="${url}/update" class="btn btn-danger">Update</button>
							<input type="text" name="maUpdate" id="result2" style="display: none;">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
	   function result1(u){
      	  var temp = document.getElementById("result");
       	  temp.value = u;
        //salert(temp);
   	   }
	   
	   function result2(u){
	      	  var temp = document.getElementById("result2");
	       	  temp.value = u;
	        //salert(temp);
	   }
	</script>
</body>

</html>