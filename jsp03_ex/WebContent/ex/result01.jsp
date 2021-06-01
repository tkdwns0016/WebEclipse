<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    //text input
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String birthDay = request.getParameter("birthDay");
    
    //sex radio
    String sex = request.getParameter("sex");
    
    //select
    String menu = request.getParameter("menu");
    
    //취미 input
    String[] hobby = request.getParameterValues("hobby");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result01.jsp</title>
<style>
body{background-color: blue;}
table{border: 1px solid black;border-collapse: collapse; margin: 100px auto;}
td{border: 3px solid skyblue; width:125px; background: yellow; font-size: 20px}
tr{border: 3px solid graytext; background: buttonshadow;}
</style>
</head>
<body>
	<table>
	<tr><th colspan="2">그는 누구인가?</th></tr>
	<tr>
	<td>이름</td><td><%=name %></td>
	</tr>
	<tr>
	<td>나이</td><td><%=age %></td>
	</tr>
	<tr>
	<td>주소</td><td><%=address %></td>
	</tr>
	<tr>
	<td>이메일</td><td><%=email %></td>
	</tr>
	<tr>
	<td>생년월일</td><td><%=birthDay %></td>
	</tr>
	<tr>
	<td>성별</td><td><%=sex %></td>
	</tr>
	<tr>
	<td>점심</td><td><%=menu %></td>
	</tr>
	<tr><td rowspan=<%= hobby.length+1%>>취미</td></tr>
	<%for(String h : hobby){%>
	<tr><td><%= h %></td></tr>
	<%} %>
	
	</table>
</body>
</html>