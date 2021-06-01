<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 수정</title>
<style>
div{width: 180px; border: 1px solid black; padding: 20px }
</style>
</head>
<body>
	<form action="update" method="post">
	<div>
	<input type="text" name="marvelId" value="${marvelDto.marvelId }" readonly="readonly">
	<input type="text" name="title" value="${marvelDto.title }"><br>
	<input type="text" name="titleEng" value="${marvelDto.titleEng }"><br>
	<input type="date" name="releaseDate" value="${marvelDto.releaseDate }"><br>
	<input type="number" name="worldBoxOffice" value="${marvelDto.worldBoxOffice }"><br>
	<input type="text" name="writeDate" value="${marvelDto.writeDate }" readonly="readonly">
	<input type="submit">
	</div>
	</form>
</body>
</html>
