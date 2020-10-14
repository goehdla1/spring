<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
tr {
	text-align: center;
	padding: 4px 10px;
	background-color: #F6F6F6;
}

th {
	text-align: center;
	padding: 4px 10px;
	background-color: #B2CCFF;
}

/* 가운데 정렬 */
h2{text-align: center;}
table {
	width: 800px;
	margin: 0px auto;
}
/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
</style>
<script type="text/javascript">
	function write_go() {
		location.href = "write.do"
	}
</script>
</head>
<body>
	<h2>BOARD 리스트</h2>
	<table width="700">
		<thead>
			<tr>
				<th width="15%">번호</th>
				<th width="40%">제목</th>
				<th width="15%">글쓴이</th>
				<th width="15%">날짜</th>
				<th width="15%">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty list}">
					<tr>
						<td colspan="5">
							<h3>원하시는 자료가 존재하지 않습니다.</h3>
						</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="k" items="${list}" varStatus="vs">
						<tr>
							<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage+vs.index)} </td>
								<td style="text-align: left; padding-left: 20px;">
								<c:forEach begin="1" end="${k.step}">
									&nbsp;&nbsp;[RE]
								</c:forEach>
							<a href="onelist.do?idx=${k.idx}&cPage=${paging.nowPage}">${k.title}</a></td>
							<td>${k.writer}</td>
							<td>${k.regdate.substring(0,10)}</td>
							<td>${k.hit}</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
		<tfoot>
			<tr>
			
				<td colspan="4" style="margin: 0 auto;">
				<ol class="paging" style="margin-left: 25%;">
					<!-- 이전  -->
					<c:choose>
						<c:when test="${paging.beginBlock <=paging.pagePerBlock }">
							<li class="disable">이전으로</li>
						</c:when>
						<c:otherwise>
							<li><a href="list.do?cPage=${paging.beginBlock-paging.pagePerBlock }">이전으로</a></li>
						</c:otherwise>
					</c:choose>
					<!-- 페이지번호 -->
					<c:forEach begin="${paging.beginBlock}" end="${paging.endBlock}" step="1" var="k">
					<c:choose>
						<c:when test="${k==paging.nowPage}">
							<li class="now">${k}</li>
						</c:when>
						<c:otherwise>
							<li><a href="list.do?cPage=${k}">${k}</a></li>
						</c:otherwise>
					</c:choose>
					
					</c:forEach>
					<!-- 이후 -->
					<c:choose>
						<c:when test="${paging.endBlock >=paging.totalPage }">
							<li class="disabble">다음으로</li>
						</c:when>
						<c:otherwise>
							<li><a href="list.do?cPage=${paging.beginBlock+paging.pagePerBlock }">다음으로</a></li>
						</c:otherwise>
					</c:choose>
					</ol>
				</td>
				<td><button onclick="write_go()">글쓰기</button> </td>
				
			</tr>
		</tfoot>		
	</table>
</body>
</html>