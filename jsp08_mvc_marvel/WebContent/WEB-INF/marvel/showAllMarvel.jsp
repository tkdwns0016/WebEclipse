<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="list" items="${marvel }">
		<div style="border:1px solid black; width:500px;">
		영화 한글 제목 : ${list.title }<br>
		영화 영어 제목 : ${list.titleEng }<br>
		개봉일 : ${list.releaseDate }<br>
		월드 박스 오피스 : ${list.worldBoxOffice }<br>
		작성일 : ${list.writeDate }<br>
		수정일 : ${list.updateDate }<br>
		<a href="${pageContext.request.contextPath}/update?marvelId=${list.marvelId}">수정하기</a>
		<a href="${pageContext.request.contextPath}/delete?marvelId=${list.marvelId}">삭제하기</a>
		</div>
	</c:forEach>
	<c:forEach var="pageNum" begin="1" end="${pageNumber }">
	<a href="showMovie?pageNumber=${pageNum }">[${pageNum }]</a>
	</c:forEach>
	<br>
	<a href="http://localhost:8080/jsp08_mvc_marvel/marvel">돌아가기</a>
</body>
</html>