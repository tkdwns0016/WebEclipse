<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>head.jsp</title>

<style>
div.header{width:100%; height: 150px;float:left;background-color : skyblue;}
div.menu{width:20%; height:500px; float:left; background-color: orange;}
div.main{width:80%; height:500px; float:left; background-color: purple; color:yellow;}
div.footer{width:100%; height:250px;float:left; background-color: brown;color:white;}
img.logo{top: 25px; left:25px; position: relative;}
a.naverUrl{background-color: violet; left: 80%;display:block; position: relative;width:80px;top:-40px;}

</style>
</head>
<body>
	<div class="header"><img src="logo.png" class="logo"><a href="https://www.naver.com" class="naverUrl">Go 네이버!</a></div>
	<jsp:include page="menu.jsp"/>
	<jsp:include page="main.jsp"/>
	<jsp:include page="footer.jsp"/>
</body>
</html>