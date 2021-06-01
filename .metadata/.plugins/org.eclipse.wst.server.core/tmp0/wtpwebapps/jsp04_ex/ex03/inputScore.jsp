<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inputScore.jsp</title>
</head>
<body>
	<form action="show.jsp">
	<fieldset>
	<legend>점수</legend>
	<input type="text" name="kor" placeholder="국어점수">
	<input type="text" name="eng" placeholder="영어점수">
	<input type="text" name="mat" placeholder="수학점수">
	<input type="text" name="soc" placeholder="사회점수">
	<input type="text" name="sie" placeholder="과학점수">
	</fieldset>
	<input type="text" name="name" placeholder="이름을 입력해주세요"><br>
	<input type="submit">
	</form>
</body>
</html>