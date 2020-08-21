<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.ict.edu.Hello"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> Spring DI 연습 </h1>
<%-- 	<%
		ApplicationContext context = new ClassPathXmlApplicationContext("com/ict/edu/config.xml");
		Hello hello = (Hello)context.getBean("hello");
		out.print("<h2>"+hello.sayHello()+"</h2>");
	%> --%>
	
	<%
		// 웹 전용 방식
		// 1. 설정정보 : configuration.xml=> applicationContext.xml
		// 서블릿 3.0이상에서는 WEB-INF안에 applicationContext.xml를 지정하고 있다.
		// (즉, 위치와 이름이 지정 되어 있다. (web.xml를 이용해서 변경가능하다.)
		// 2. applicationContext.xml를 읽기위해서 리스너를 만들어야 한다.
		// 참고로 리스너는 한개의 프로젝트당 하나면 되고 만다는 방법은 2가지다.
		// 1) 자바에서 리스너를 생성하기
		// 2) web.xml에서 리스너를 생성하기

		WebApplicationContext context = 
		WebApplicationContextUtils.getWebApplicationContext(application);
		
		Hello hello = (Hello)context.getBean("hello");
		out.print("<h2>"+hello.sayHello()+"</h2>");
			
	%>
</body>
</html>