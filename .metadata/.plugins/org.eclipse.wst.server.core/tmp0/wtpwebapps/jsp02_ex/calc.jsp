<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>calc_jsp</title>
<style>
table {
	border: 1px solid black;
	border-collapse: collapse;
}

td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<%!public int sum(int a, int b) {
		int sum = a + b;
		return sum;
	}%>
	<%!public int sub(int a, int b) {
		int sub = a - b;
		return sub;
	}%>
	<%!public void mul(int a, int b) {
		System.out.println(a + "*" + b + "=" + (a * b));
	}%>
	<%!public void div(int a, int b) {
		System.out.println(a + "/" + b + "=" + (a / b));
	}%>
	<table>
		<tr>
			<td>2+1</td>
			<td><%=sum(2, 1)%></td>
		</tr>
		<tr>
			<td>2-1</td>
			<td><%=sub(2, 1)%></td>
		</tr>
	</table>
	<%mul(3, 4); %>
	<%div(6, 3); %>
	
</body>
</html>