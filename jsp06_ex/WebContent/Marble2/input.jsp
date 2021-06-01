<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<body>
<h1>마블 영화 추가하기</h1>
<%-- 영화 한글제목, 영화 영문제목, 박스오피스, 개봉일을 입력받는다 --%>
	<form action="process.jsp" method="post">
	
	<input type="text" name="title" placeholder="영화제목">${myError.title}<br>
	<input type="text" name="titleEng" placeholder="영화 영문제목">${myError.titleEng}<br>
	<input type="number" name="boxOffice" placeholder="박스오피스 금액">${myError.boxOffice}<br>
	<input type="date" name="releaseDate" title="개봉일">${myError.releaseDate}<br>
	<input type="submit" value="영화 추가"><br>
	
	
	</form>
</body>
</html>