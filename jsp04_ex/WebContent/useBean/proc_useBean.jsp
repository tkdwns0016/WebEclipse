<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="ex01.useBean.Student" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>proc_useBean.jsp</title>
</head>
<body>
	<%
		student.setName(request.getParameter("name"));
		student.setAge(Integer.parseInt(request.getParameter("age")));
		student.setKor(Integer.parseInt(request.getParameter("kor")));
		student.setEng(Integer.parseInt(request.getParameter("eng")));
		student.setMath(Integer.parseInt(request.getParameter("math")));
		student.setBirth(LocalDate.parse(request.getParameter("birth")));
	%>
	<%
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		LocalDate birth = LocalDate.parse(request.getParameter("birth"));
	%>
	<jsp:setProperty property="name" name="student" value="<%=name %>"/>
	<jsp:setProperty property="age" name="student" param="age"/>
	<jsp:setProperty property="kor" name="student" param="kor"/>
	<jsp:setProperty property="eng" name="student" param="eng"/>
	<jsp:setProperty property="math" name="student" param="math"/>
	<jsp:setProperty property="birth" name="student" value="<%=birth %>"/>
	<jsp:forward page="show.jsp" />
</body>
</html>