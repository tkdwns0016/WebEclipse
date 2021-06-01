<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="marble" class="ex01.MarbleMovie" scope="session">
	<jsp:setProperty property="*" name="marble"/>
</jsp:useBean>
<%
	String title = request.getParameter("title");
	marble.setTitle(title);
	String engTitle = request.getParameter("engTitle");
	String world = request.getParameter("world");
	String launch = request.getParameter("launch");
	marble.setting(title, engTitle, world, launch);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process.jsp</title>
</head>
<body>
	<h1>담기 완료!</h1>
<%=title %>
	<hr>
	<form action="input.jsp">
		<input type="submit" value="돌아가기">
	</form>
	<form action="show.jsp">
		<input type="submit" value="결과보기">
	</form>
</body>
</html>