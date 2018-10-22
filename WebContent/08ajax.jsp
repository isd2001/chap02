<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String s= request.getParameter("score");
	String m= request.getParameter("ment");
	
	System.out.println(s +" / "+m);
	out.println("{\"rst\":true}");

	%>