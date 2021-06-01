<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response.jsp</title>
</head>
<body>
	<h1>response</h1>
	<dl>
		<dt>응답하는 객체</dt>
		<dd>
			<ul>
				<li>응답할 내용의 인코딩 설정</li>
				<li>쿠키를 설정</li>
				<li>url로 재요청을 시킬 때 ( 페이지 전환 )</li>
			</ul>
			<ul>
			<li>응답의 인코딩 : <%= response.getCharacterEncoding() %></li>
			<li>쿠키 설정 </li>
			<%
			//클라이언트에게 myname쿠키를 저장하도록 함.
			Cookie c = new Cookie("myname","test");
			response.addCookie(c);
			%>
			<li>화면전환</li>
			<% //response.sendRedirect(""result01.jsp); %>
			</ul>
		</dd>
	</dl>
</body>
</html>