<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/WebPhim/film/film-detail">
	<input value="${form.getIdFilm()}" name="id" placeholder="Username?"><br>
		<input value="${form.getTitle()}" name="title" placeholder="Password?"><br>
		<input value="${form.getContent()}" name="content" placeholder="Fullname?"><br>
		<input value="${form.getDirector()}" name="director" placeholder="Email Address?"><br>
		<input value="${form.getTimee()}" name="time" placeholder="Username?"><br>
		<input value="${form.getLanguagee()}" name="language" placeholder="Password?"><br>
		<input value="${form.getGenre()}" name="genre" placeholder="Fullname?"><br>
		<input value="${form.getReview()}" name="review" placeholder="Email Address?"><br>
		<input value="${form.getTrailer()}" name="trailer" placeholder="Email Address?"><br>
	</form>
	
		<table border="1" style="width: 100%" class="table table-striped">
		<c:forEach var="item" items="${list}">
		<tr>
				<td scope="row">${item.idFilm}</td>
				<td scope="row">${item.getTitle()}</td>
				<td scope="row">${item.content}</td>
				<td scope="row">${item.getDirector()}</td>
				<td scope="row">${item.getTimee()}</td>
				<td scope="row">${item.getLanguagee()}</td>
				<td scope="row">${item.getGenre()}</td>
				<td scope="row">${item.getReview()}</td>
				<td scope="row">${item.getTrailer()}</td>
				<td ><a href="/edit/${item.getTitle()}">Edit</a></td>
				</tr>
		</c:forEach>
	</table>
	
</body>
</html>