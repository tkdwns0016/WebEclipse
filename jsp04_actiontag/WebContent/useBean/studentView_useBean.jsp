<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="student" class="ex01.Student" scope="request" />--%>
<%-- request에 이미 student가 있다면 객체를 새로 만들지 않고 가져온다. --%>

<jsp:useBean id="student" type="ex001.Student" scope="request" />
<%-- type은 기존에 있는걸 가져오는데 만약 없다면 exception을 발생 시킨다. 
	이렇게하여 있는지 없는지 확인할 수 있어서 안정적이다 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>studentView_useBean.jsp</title>
</head>
<body>
	이름 :
	<jsp:getProperty property="name" name="student" />
	나이 :
	<jsp:getProperty property="age" name="student" />
</body>
</html>