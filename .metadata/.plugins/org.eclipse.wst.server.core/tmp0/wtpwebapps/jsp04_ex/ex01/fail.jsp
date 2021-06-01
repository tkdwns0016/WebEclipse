<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fail.jsp</title>
</head>
<body>
	<h1>로그인 실패!!!!!!!!!!!!!!!!!!!!!!!</h1>
	<%
		String id = request.getParameter("id");
		String fail = (String)request.getAttribute("loginFail");
	%>
	<%= id %>
	<%= fail %>
</body>
</html>