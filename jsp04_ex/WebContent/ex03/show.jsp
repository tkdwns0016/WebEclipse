<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="data.jsp" %>
	<%
	/* int ttl = (Integer.parseInt(kor)+Integer.parseInt(eng)+Integer.parseInt(mat)+Integer.parseInt(soc)+Integer.parseInt(sie));
	int avg = ttl/5; */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.jsp</title>
<style>
.name {
	border-left: 1px black double;
}

table {
	border: 1px solid black;
	border-collapse: collapse;
}

td {
	border: 1px solid black;
	background: yellow;
}

th {
	border: 1px solid skyblue;
	background: blue;
	color: white;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th>국어점수</th>
			<th>영어점수</th>
			<th>수학점수</th>
			<th>사회점수</th>
			<th>과학점수</th>
			<th class="name">이름</th>
			<th>총점</th>
			<th>평균</th>
		</tr>
		<tr>
			<td><%=kor%></td>
			<td><%=eng%></td>
			<td><%=mat%></td>
			<td><%=soc%></td>
			<td><%=sie%></td>
			<td><%=name%></td>
			<td><%=ttl%></td>
			<td><%=avg%></td>
		</tr>

	</table>
</body>
</html>