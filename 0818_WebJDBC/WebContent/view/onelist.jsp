<%@page import="java.util.List"%>
<%@page import="com.ict.db.DAO"%>
<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
String idx = request.getParameter("idx");
// DB 처리를 하기 위해서 session에 저장된 dao 호출
DAO dao = (DAO) session.getAttribute("dao");
// 정보가 한사람의 정보이면 list말고 VO로 가지고 다니자.
List<VO> list = dao.getOneList(idx);
VO vo = list.get(0);
session.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	text-align: center;
	margin: 0px auto;
}

table {
	width: 600px;
	margin: 0px auto;
	border-collapse: collapse;
	text-align: center;
}

table, th, td {
	border: 1px solid blue;
}

h1 {
	text-align: center;
}

a {
	text-decoration: none;
}
</style>
<script type="text/javascript">
	function update_go() {
		location.href="update.jsp";
	}
	function delete_go() {
		location.href="delete.jsp";
	}
		
</script>
</head>
<body>
	<div>
		<h1>상세 정보 보기</h1>
		<p>
			<a href="index.jsp"> 목록으로 이동 </a>
		</p>
		<table>
			<thead>
				<tr>
					<td>IDX</td>

					<td>Id</td>
					
					<td>Pw</td>

					<td>Name</td>

					<td>Age</td>

					<td>RegDate</td>
					
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${vo.idx}</td>
					<td>${vo.m_id}</td>
					<td>${vo.m_pw}</td>
					<td>${vo.m_name}</td>
					<td>${vo.m_age}</td>
					<td>${vo.m_reg.substring(0,10)}</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6">
						<button onclick="update_go()"> 수정하기 </button>
						<button onclick="delete_go()"> 삭제하기 </button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>

</body>
</html>