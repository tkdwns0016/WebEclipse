<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 성공 or 실패</title>
</head>
<body>
<c:choose>
<c:when test="${result}"><h2>삭제 성공</h2></c:when>
<c:otherwise><h2>삭제 실패</h2></c:otherwise>
</c:choose>
<a href="${pageContext.request.contextPath }/marvel">돌아가기</a>
</body>
</html>