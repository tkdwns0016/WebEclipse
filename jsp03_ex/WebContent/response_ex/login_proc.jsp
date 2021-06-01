<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if(id.equals("groot") && pw.equals("imgroot")){
		response.sendRedirect("http://localhost:8080/jsp03_ex/response_ex/login.jsp");
	}else{
		response.sendRedirect("http://localhost:8080/jsp03_ex/response_ex/fail.jsp");
	}


%>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 창</title>
</head>
<body>

</body>
</html>