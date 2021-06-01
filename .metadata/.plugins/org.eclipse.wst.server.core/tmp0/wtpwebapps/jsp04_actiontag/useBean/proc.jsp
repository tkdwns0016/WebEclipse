<%@page import="ex01.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Student student = new Student();

	String name = request.getParameter("name");
	int age = (request.getParameter("age")!="")?Integer.parseInt(request.getParameter("age")):0;
	student.setName(name);
	student.setAge(age);
	request.setAttribute("Student",student);
%>
<jsp:forward page="studentView.jsp"/>