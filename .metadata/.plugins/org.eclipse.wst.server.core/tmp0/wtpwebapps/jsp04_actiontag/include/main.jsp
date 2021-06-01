<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
	<h1>main에서 작성한 h1</h1>
	
	<jsp:include page="sub.jsp"><jsp:param value="hangul" name="data"/></jsp:include>
	
	<h1>main에서 작성한 코드 끝부분</h1>
</body>
</html>