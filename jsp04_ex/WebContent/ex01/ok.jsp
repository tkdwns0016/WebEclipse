<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok.jsp</title>
</head>
<body>
	<h1>로그인 성공~~!~!~!~!~!~!~!~!~!~!~!~!</h1>
	아이디 : <%=request.getParameter("id")%><br>
	비밀번호 : <%=request.getParameter("pw")%>
</body>
</html>