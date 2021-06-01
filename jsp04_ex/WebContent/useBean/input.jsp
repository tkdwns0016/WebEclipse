<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input</title>
</head>
<body>
	<form action="proc_useBean.jsp">
		<input type="text" name="name" placeholder="이름">
		<input type="text" name="age" placeholder="나이">
		<fieldset>
		<legend>성적</legend>
		<input type="text" name="kor" placeholder="국어성적">
		<input type="text" name="eng" placeholder="영어성적">
		<input type="text" name="math" placeholder="수학성적">
		</fieldset>
		<input type="date" name="birth">
		<hr>
		<input type="submit">
	</form>
</body>
</html>