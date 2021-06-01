<%@page import="java.util.List"%>
<%@page import="org.apache.catalina.Session"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show_info</title>
</head>
<body>
	pageData :
	<%=pageContext.getAttribute("name")%><br> request :
	<%=request.getAttribute("email")%><br> session :
	<%=session.getAttribute("birth")%><br> application :
	<%=application.getAttribute("hobby")%>

	<%
		String name1 = (String) pageContext.getAttribute("name");
		String email1 = (request.getAttribute("email") != null) ? (String) request.getAttribute("email") : null;
		LocalDate birthDate = (LocalDate) session.getAttribute("birthDate");
		//현재날짜와 비교해서 생일의 월,일이 지났다면 현재연도+1년, 남아있다면 현재연도로 수정.
		//생일에서 현재날을 뺌.

		//List<String> hobby1 = (List<String>) application.getAttribute("hobby");
	%>

</body>
</html>