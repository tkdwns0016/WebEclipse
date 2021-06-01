<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>food.jsp</title>
</head>
<body>
	<%!ArrayList<String> food;

	public ArrayList<String> setFood() {
		food.add("배추");
		food.add("라면");
		food.add("김치");
		return food;
	}%>
	<%
		setFood();
	%>
	<br>
	<%
		for (int i = food.size() - 1; i >= 0; i--) {
			out.write(food.get(i) + "<br>");
		}
	%>





</body>
</html>