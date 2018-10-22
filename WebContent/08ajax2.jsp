<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	// application/json;charset=UTF=8
	// String controller 였다면, produces= "application/json;charset=UTF=8" 이렇게 설정해서
	// 응답컨텐츠가 어떤거다라고 설정후 @ResponseBody 처리 하자고 했었음
	
	out.println("{\"rst\":true,\"size\":5  } ");
	%>