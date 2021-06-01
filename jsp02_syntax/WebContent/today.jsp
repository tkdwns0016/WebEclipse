<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>today.jsp</title>
<style>
table td {
	border: 1px solid black;
	background: red;
}

table {
	border-collapse: collapse;
}
</style>
</head>
<body>
	<h1>오늘 날짜를 출력해 주세요</h1>

	<%--오늘은 : 0000년, 00월, 00일, 00시:00분:00초 --%>

	<%
		int year = LocalDateTime.now().getYear();
		int month = LocalDateTime.now().getMonthValue();
		int day = LocalDateTime.now().getDayOfMonth();
		int hour = LocalDateTime.now().getHour();
		int minute = LocalDateTime.now().getMinute();
		int second = LocalDateTime.now().getSecond();
	%>



	오늘은 :
	<%=year%>년
	<%=month%>월
	<%=day%>일
	<%=hour%>시:
	<%=minute%>분:
	<%=second%>초
	<hr>
	<%-- 1~10까지 수를 출력해보자 --%>

	<ul>
		<%
			for (int i = 1; i <= 10; i++) {
		%>
		<li><%=i%></li>
		<%
			}
		%>
	</ul>
	<%-- 테이블을 이용한 구구단 --%>
	<table>
		<%
			for (int i = 1; i < 10; i++) {
		%>
		<tr>
			<%
				for (int j = 2; j < 10; j++) {
			%>
			<td><%=j%>*<%=i%>=<%=j * i%></td>
			<%
				}
			%>
		</tr>
		<%
			}
		%>
	</table>


	<%-- 
	Set을 이용한 메서드
	getLottoNums()를 만들고
	호출하여 로또 번호를 li태그 안쪽에 넣어 출력하세요
	 --%>

	<%-- <%!public Set<Integer> getLottoNums() {
		Set<Integer> set = new HashSet<Integer>();
		for (int i = 0; i < 6; i++) {
			int val = ((int) (Math.random() * 45) + 1);
			if (set.contains(val)) {
				i--;
			} else {
				set.add(val);
			}
		}
		return set;
	}%> --%>
	<%!
	public Set<Integer> getLottoNums(){
		Set<Integer> lotto = new HashSet<Integer>();
		while(lotto.size()<6){
			int num = (int)(Math.random()*45)+1;
			lotto.add(num);
		}
		return lotto;
	}
	%>
	
	<ul>
	<%
	Set<Integer> lottoNumbers = getLottoNums();
	for(int num : lottoNumbers){
		out.write("<li>"+num+"</li>");
	}
	%>
		<%-- <li><%=getLottoNums()%></li> --%>
	</ul>
</body>
</html>