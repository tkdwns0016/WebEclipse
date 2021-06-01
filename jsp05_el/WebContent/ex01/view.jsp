<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
</head>
<body>
	이름 : ${requestScope.student.name}<br>
	<%-- ((Student)request.getAttribute("student")).getName()와 똑같다. --%>
	생년월일 : ${student.birth }<br>
	<%-- requestScope가 없이 해도 pageContext,request,session,application 을 순회하며 찾는다 
	맨 처음 찾아지는 속성을 가져옴--%>
	수학 : ${student.score.math }<br>
	<%-- get 메소드의 이름을 getMath가 아닌 getMAth였을때 못가져오기 때문에 다르다면 아래의 방법을 사용할 수 있다. --%>
	국어 : ${student.getScore().getKor() }<br>
	<%-- 직접 메소드를 불러오는것도 가능  --%>
	영어 : ${student.score.eng }<br>
	총점 : ${student.score.tot }<br>
	평균 : ${student.score.avg }<br>
</body>
</html>