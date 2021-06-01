<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_proc.jsp</title>
</head>
<body>
	<%
	String id = (String)request.getParameter("id");
	String pw = (String)request.getParameter("pw");
	if(!id.equals("test")){
		request.setAttribute("loginFail", "아이디오류");
		%>
		<jsp:forward page="fail.jsp"></jsp:forward>
		<%
	}else if(!pw.equals("test1")){
		request.setAttribute("loginFail", "비밀번호오류");
		%>
		<jsp:forward page="fail.jsp"></jsp:forward>
		<%
	}else{%>
	<jsp:forward page="ok.jsp"></jsp:forward>
	<%}%>
</body>
</html>