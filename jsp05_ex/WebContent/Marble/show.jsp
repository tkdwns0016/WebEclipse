<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.jsp</title>
</head>
<body>
	영화1 : ${movieList[0] }<br>
	영화2 : ${movieList[1] }<br>
	영화3 : ${movieList[2] }<br>
	월드 박스오피스의 총합 : ${movieList[0][2]+movieList[1][2]+movieList[2][2] }
</body>
</html>