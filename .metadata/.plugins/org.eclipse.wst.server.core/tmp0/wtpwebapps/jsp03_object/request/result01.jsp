<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
    //클라이언트가 요청한 parameter를 받아보자
    //파라미터를 받기 위해서 request객체를 이용한다.
    String name = request.getParameter("name");//파라미터 "name"의 '값'을 받음
    String address = request.getParameter("address");//name이 address인 아이의 값을 받음
    String sex = request.getParameter("sex");//name 이 sex인 아이의 값을 받음
    
    //체크박스는 여러개를 같은 name으로 보내기 때문에 배열로 받아야 한다.
    String[] hobby = request.getParameterValues("hobby");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result01.jsp</title>
</head>
<body>
	<h1>전달 받은 값</h1>
	<ul>
		<li>이름 : <%=name %></li>
		<li>주소 : <%=address %></li>
		<li>성별 : <%=sex %></li>
		<li>취미
			<ul>
				<% for(String h : hobby){%>
				<li><%=h %></li>


				<%}%>
			</ul>
		</li>
	</ul>
</body>
</html>