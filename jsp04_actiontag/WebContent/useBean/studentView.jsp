<%@page import="ex01.useBean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Student student = (Student)request.getAttribute("student");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	학생이름 : <%=student.getName() %>
	학생나이 : <%=student.getAge() %>
</body>
</html>