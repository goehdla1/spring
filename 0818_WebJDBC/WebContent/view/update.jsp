<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  	
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
	function update_go(f) {
		var pw = f.m_pw.value;
		if("${vo.m_pw}" == pw){
			alert("수정합니다.")
			f.action="update_ok.jsp";
			f.submit();
			
		}else{
			alert("비밀번호가 틀립니다.\n다시입력해주세요")
			f.m_pw.value="";
			f.m_pw.focus();
			return;
			
		}
	}
</script>
</head>
<body>
<div>
		<h1> 수정하기 </h1>
		<p>
			<a href="index.jsp"> 목록으로 이동 </a>
		</p>
		<form method="post">
		<table>
			<thead>
				<tr>
					<td>IDX</td>

					<td>Id</td>
					
					<td>Pw</td>

					<td>Name</td>

					<td>Age</td>

					
				</tr>
			</thead>
			<tbody>
				<tr><!-- readonly = 오직 읽기만혀라 , disabled = 클릭,수정 안됨 -->
					<td><input type="text" name="idx" value="${vo.idx}" disabled></td>
					<td><input type="text" name="m_id" value="${vo.m_id}"readonly></td>
					<td><input type="password" name="m_pw"></td>
					<td><input type="text" name="m_name" value="${vo.m_name}"></td>
					<td><input type="number" name="m_age" value="${vo.m_age}"></td>
					<input>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">
						<input type="button" value="수정하기" onclick="update_go(this.form)">
				</tr>
			</tfoot>
		</table>
		</form>
	</div>

</body>
</html>