<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>listview.jsp</title>
</head>
<body>
<c:if test="${viewData.messageTotalCount == 0 }">
   등록된 메세지가 없습니다
</c:if>

<c:if test="${viewData.messageTotalCount > 0 }">
		<section>
			<c:forEach var="message" items="${viewData.messageList }">
				<article>
					메시지 ID : ${message.messageId }<br>
					 작성자 : ${message.guestName }<br>
					작성일 : ${message.writeDate }<br>
					 내용 :
					<div>${message.message }</div>
				</article>
			</c:forEach>
		</section>
		<%-- 페이징 --%>
		<section>
			<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount }">
				<a href="list?page=${pageNum }">[${pageNum }]</a>
			</c:forEach>
		</section>
		</c:if>
</body>
</html>