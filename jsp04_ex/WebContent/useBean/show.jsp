<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.jsp</title>
</head>
<body>
	<jsp:useBean id="student" type="ex01.useBean.Student" scope="request"/>
	
	이름 : <%=student.getName() %>
	나이 : <%=student.getAge() %>
	국어성적 : <%=student.getKor() %>
	영어성적 : <%=student.getEng() %>
	수학성적 : <%=student.getMath() %>
	생년월일 : <%=student.getBirth() %>
	<hr>
	이름 : <jsp:getProperty property="name" name="student"/> 
	나이 : <jsp:getProperty property="age" name="student"/> 
	국어성적 : <jsp:getProperty property="kor" name="student"/> 
	영어성적 : <jsp:getProperty property="eng" name="student"/> 
	수학성적 : <jsp:getProperty property="math" name="student"/> 
	생년월일 : <jsp:getProperty property="birth" name="student"/> 
</body>
</html>