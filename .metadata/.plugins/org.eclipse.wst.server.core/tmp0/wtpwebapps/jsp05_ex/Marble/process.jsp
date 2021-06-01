<%@page import="java.util.ArrayList"%>
<%@page import="ex01.MarbleMovie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:useBean id="marble1" class="ex01.MarbleMovie" scope="request"/>    
	<jsp:useBean id="marble2" class="ex01.MarbleMovie" scope="request"/>    
	<jsp:useBean id="marble3" class="ex01.MarbleMovie" scope="request"/>    
    <%
    String title = request.getParameter("title");
    String engTitle = request.getParameter("engTitle");
    String world = request.getParameter("world");
	
	marble1 = new MarbleMovie(title,engTitle,world);
	
	
	String title1 = request.getParameter("title1");
    String engTitle1 = request.getParameter("engTitle1");
    String world1 = request.getParameter("world1");
    
    marble2 = new MarbleMovie(title1,engTitle1,world1);
    
    String title2 = request.getParameter("title2");
    String engTitle2 = request.getParameter("engTitle2");
    String world2 = request.getParameter("world2");
    
    marble3 = new MarbleMovie(title2,engTitle2,world2);
    
    List[] list = {marble1.getmarbleList(),marble2.getmarbleList(),marble3.getmarbleList()};
    
	request.setAttribute("movieList", list);
    
    %>
    
    <jsp:forward page="show.jsp"/>
