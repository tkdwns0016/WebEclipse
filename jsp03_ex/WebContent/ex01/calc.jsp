<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 만들기</title>
</head>
<body>
	<h1>계산기!!!!!!!!!</h1>
	<form action="result.jsp">
		첫번째 수 : <input type="text" name="first"> 
		두번째 수 : <input type="text" name="second">
		<br><br>
   	<fieldset>
   	<legend>연산 선택</legend>
   	<label><input type="radio" value="+" name="method" id="+">+</label>
   	<label><input type="radio" value="-" name="method" id="-">-</label>
   	<label><input type="radio" value="*" name="method" id="*">*</label>
   	<label><input type="radio" value="/" name="method" id="/">/</label>
   	<label><input type="radio" value="%" name="method" id="%">%</label>
   	</fieldset>
   	<br>
		<button type="submit">계산하기</button>
	</form>
</body>
</html>