<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
                            <a class="dropdown-item" href="/WebPhim/account/sign_in">Đăng xuất</a>
                        </div>
                    </li>

                </ul>
            </div>
        </nav>
    </div>

    <div class="carousel-item active">
        <img src="/WebPhim/views/admin/image/hime.jpg" alt="Los Angeles" width="100%" height="588.5">
        <div class="carousel-caption d-none d-md-block">
        </div>
    </div>
</body>

</html>