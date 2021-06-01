<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//proc.jsp	
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="employee" class="ex001.Employee" scope="request">
	<jsp:setProperty property="*" name="employee" />
</jsp:useBean>
<jsp:setProperty property="birthDate" name="employee" value='<%=LocalDate.parse(request.getParameter("birth")) %>'/>
<%-- 이렇게 하면 Employee에 있는 필드와 동일한 이름을 가진 파라미터들의 값이 자동으로 속성으로 들어가게 된다.
	이름이 다르면 안들어가게 됨. --%>
<jsp:forward page="show.jsp"/>