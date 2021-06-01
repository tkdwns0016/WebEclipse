<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="employee" type="ex001.Employee" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.jsp</title>
</head>
<body>
	이름 : <jsp:getProperty property="name" name="employee"/>
	연봉 : <jsp:getProperty property="salary" name="employee"/>
	직급 : <jsp:getProperty property="position" name="employee"/>
	생일 : <jsp:getProperty property="birthDate" name="employee"/>
</body>
</html>