<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<body>
	<form action="process.jsp">
	<input type="text" name="title" placeholder="한글 영화제목">
	<input type="text" name="engTitle" placeholder="영어 영화제목">
	<input type="text" name="world" placeholder="박스오피스">
	<input type="text" name="launch" placeholder="개봉일">
	<hr>
	<input type="submit" value="추가">
	
	
	</form>
</body>
</html>