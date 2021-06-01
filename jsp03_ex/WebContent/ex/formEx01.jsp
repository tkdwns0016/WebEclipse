<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form실습</title>
</head>
<body>
	<form action="result01.jsp" method="get">
	<input type="text" name="name" placeholder="이름을 입력해주세요"><br>
	<input type="text" name="age" placeholder="나이를 입력해주세요"><br>
	<input type="text" name="address" placeholder="주소를 입력해주세요"><br>
	<input type="text" name="email" placeholder="이메일을 입력해주세요"><br>
	<input type="date" name="birthDay">
	<fieldset>
	<legend>성별</legend>
	<input type="radio" value="man" name="sex" id="man"><label for="man">남</label>
	<input type="radio" value="woman" name="sex" id="woman"><label for="woman">여</label>
	</fieldset>
	<fieldset>
	<legend>점심</legend>
	<select name="menu"><option>라면 <option>김치볶음밥 <option>짜장면<option>조개구이 <option>물만두 <option>초밥 <option>샐러드</select>
	</fieldset>
	<fieldset>
	<legend>취미</legend>
	<input type="checkbox" name="hobby" value="낚시" id="fishing"><label for="fishing">낚시</label>
	<input type="checkbox" name="hobby" value="축구" id="soccer"><label for="soccer">축구</label>
	<input type="checkbox" name="hobby" value="배구" id="volleyball"><label for="volleyball">배구</label>
	<input type="checkbox" name="hobby" value="야구" id="baseball"><label for="baseball">야구</label>
	<input type="checkbox" name="hobby" value="농구" id="basketball"><label for="basketball">낚시</label>
	<input type="checkbox" name="hobby" value="게임" id="game"><label for="game">게임</label>
	</fieldset>
	<button type="submit">보내기</button>
	</form>
</body>
</html>