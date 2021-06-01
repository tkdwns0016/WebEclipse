<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope_form</title>
</head>
<body>
	<form action="form_proc.jsp">
	<input type="text" name="name" placeholder="이름을 입력해주세요"><br>
	<input type="email" name="email"><br>
	<input type="date" name="birth"><br>
	<fieldset>
	<legend>취미</legend>	
	<input type="checkbox" value="축구" name="hobby" id="soccer" ><label for="soccer">축구</label>
	<input type="checkbox" value="야구" name="hobby" id="baseball" ><label for="baseball">야구</label>
	<input type="checkbox" value="농구" name="hobby" id="basketball" ><label for="basketball">농구</label>
	</fieldset>
	
	<button type="submit">보내기</button>
	</form>
</body>
</html>