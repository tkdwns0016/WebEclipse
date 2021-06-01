<%@page import="jsp07_db.model.MessageDto"%>
<%@page import="jsp07_db.model.MessageDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	 int messageId = Integer.parseInt(request.getParameter("messageId"));
	
	MessageDao messageDao = MessageDao.getInstance();
	MessageDto messageDto = messageDao.selectWithId(messageId);
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%=messageId %>
	<form action="updateproc.jsp" method="post">
		<fieldset>
			<legend>수정</legend>
			<input type="text" name="upName" value="<%=messageDto.getGuestName()%>"><br>
			<textarea rows="5" cols="30" name="upText" ><%=messageDto.getMessage() %></textarea>
			<input type="submit">
		</fieldset>
	</form>
</body>
</html>