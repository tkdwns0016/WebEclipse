<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 리스트 보기</title>
</head>
<body>
	<h1>영화 리스트</h1>
	<table>
		<c:forEach var="movie" items="${movieList }">
			<tr>
				<td>${movie.title }</td>
				<td>${movie.titleEng }</td>
				<td>${movie.boxOffice }</td>
				<td>${movie.releaseDate }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>