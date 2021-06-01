<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b.jsp</title>
</head>
<body>
	<%
	/* String pageData = (String)pageContext.getAttribute("일번");
	int requestData = (Integer)request.getAttribute("일번");
	double sessionData = (double)session.getAttribute("일번");
	boolean applicationData = (boolean)application.getAttribute("일번"); */
	%>
	pageData : <%=pageContext.getAttribute("일번") %><br>
	requestData : <%=request.getAttribute("일번") %><br>
	sessionData : <%= session.getAttribute("일번") %><br>
	applicationData : <%= application.getAttribute("일번") %>
</body>
</html>