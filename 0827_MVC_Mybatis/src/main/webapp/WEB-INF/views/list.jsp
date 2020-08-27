<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록</title>
<style type="text/css">
	a{ text-decoration: none;}
	table {
	width: 800px; border-collapse: collapse; text-align: center;
}
table,th,td{border: 1px solid black ; padding: 3px;}
</style>
</head>
<body>
	<div align="center">
		<h2> 방명록 </h2>
		<p> [<a href="write.do">방명록 쓰기</a> ]</p>
		<form method="post">
			<table>
				<thead>
					<tr style="background-color: pink;">
						<th>번호</th><th>작성자</th><th>제목</th><th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty list}">
							<tr><td colspan="4"> 아무 내용이 없습니다. </td></tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="k" items="${list}">
								<tr>
									<td>${k.idx}</td><td>${k.name}</td><td><a href="onelist.do?idx=${k.idx}">${k.subject}</a></td><td>${k.regdate.substring(0,10)}</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>