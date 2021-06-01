<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int first = Integer.parseInt(request.getParameter("first"));
	int second = Integer.parseInt(request.getParameter("second"));
	String method = request.getParameter("method");
%>

<html>
<head>
<meta charset="UTF-8">
<title>계산 완료</title>
<style>
table {
	border: 1px solid black;
	border-collapse: collapse;
}

td {
	border: 1px solid black;
}

tr>th {
	border: 1px solid black;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th>계산 식</th>
			<th>답</th>
		</tr>
		<tr>
			<td><%=first%> <%=method%> <%=second%></td>
			<%if(method.equals("+")){
			out.write("<td>"+(first+second)+"</td>");
			}else if(method.equals("-")){
				out.write("<td>"+(first-second)+"</td>");
			}else if(method.equals("*")){
				out.write("<td>"+(first*second)+"</td>");
			}else if(method.equals("/")){
				out.write("<td>"+(first/second)+"</td>");
			}else if(method.equals("%")){
				out.write("<td>"+(first%second)+"</td>");
			}
			 %>
		</tr>



	</table>
</body>
</html>