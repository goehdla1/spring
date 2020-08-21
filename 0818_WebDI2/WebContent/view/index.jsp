<%@page import="com.ict.edu.Welcome"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%	
		/* 서블릿 3.0이상의 리스너 */
			WebApplicationContext context =
			WebApplicationContextUtils.getWebApplicationContext(application);
		
		Welcome welcome = (Welcome)context.getBean("welcome");
		String msg = welcome.sayWelCome();
		
		out.print("<h2>"+msg+"</h2>");
			
		%>
</body>
</html>