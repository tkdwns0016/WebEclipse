<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("utf-8");
	String[] hobby = request.getParameterValues("hobby");
	ArrayList<String> arrayHobby = new ArrayList<String>();
	for (String h : hobby) {
		arrayHobby.add(h);
	}
	pageContext.setAttribute("name", request.getParameter("name"));
	request.setAttribute("email", request.getParameter("email"));
	session.setAttribute("birth", LocalDate.parse(request.getParameter("birth")));
	application.setAttribute("hobby", arrayHobby.toString());
	Map<String,String[]> paramMap = request.getParameterMap();
	String[] nameArr = paramMap.get("name");
	
	response.sendRedirect("http://localhost:8080/jsp03_ex/ex02/show_info.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form_proc</title>
</head>
<body>
</body>
</html>