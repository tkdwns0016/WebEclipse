<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>marvelWeb.jsp</title>
</head>
<body style="background-image:url('/jsp08_mvc_marvel/aka.jpg'); background-repeat: no-repeat;">
	<form action="marvel" method="post">
	<input type="text" name="title" placeholder="한글 제목">
	<input type="text" name="titleEng" placeholder="영문 제목">
	<input type="text" name="releaseDate" placeholder="개봉일">
	<input type="number" name="worldBoxOffice" placeholder="월드박스오피스">
	<br>
	<input type="submit" value="추가">
	<br>
	</form>
	<form action="showMovie" method="post">
	<input type="submit" value="조회">
	</form>
	<hr>
	
</body>
</html>