<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <jsp:useBean id="marble" type="ex01.MarbleMovie" scope="session"/>
    
    <% 
    List<String> marbleList = marble.getmarbleList();
    session.setAttribute("list", marbleList);
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.jsp</title>
<style >
table{ border-collapse: collapse;}
th{border:4px solid skyblue;}
</style>
</head>
<body>
	<table>
	<c:forEach var="movie" items='${list }'>
	<tr><th>${movie }</th></tr>
	</c:forEach>
	</table>
<br>
	<form action="input.jsp">
	<input type="submit" value="처음으로 돌아가기">
	</form>


</body>
</html>