<%@page import="com.ict.db.DAO"%>
<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    VO vo = (VO)session.getAttribute("vo");
    DAO dao = (DAO)session.getAttribute("dao");
    dao.getDelete(vo.getIdx());
    response.sendRedirect("index.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>