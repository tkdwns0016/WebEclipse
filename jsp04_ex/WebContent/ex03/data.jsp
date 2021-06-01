<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	int kor = Integer.parseInt(request.getParameter("kor"));
    int eng = Integer.parseInt(request.getParameter("eng"));
    int mat = Integer.parseInt(request.getParameter("mat"));
    int soc = Integer.parseInt(request.getParameter("soc"));
	int sie = Integer.parseInt(request.getParameter("sie"));
	int ttl = kor+eng+mat+soc+sie;
	int avg = ttl/5;
	String name = request.getParameter("name");
	/* response.sendRedirect("show.jsp"); */
%>