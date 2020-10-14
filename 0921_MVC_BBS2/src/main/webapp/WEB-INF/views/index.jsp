<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{margin: 0px auto;
	width: 300px;
	border-collapse: collapse;
	font-size: 15pt;
	border-color: navy;}
	tabel, th, td{
		border: 2px solid skyblue;
		text-align: center;
	}
</style>
<script type="text/javascript">
	function login_go(f) {
		f.action = "login_ok.do";
		f.submit();
	}
</script>
</head>
<body>
	<div>
		<form method="post">
			<table>
				<thead>
					<tr>
						<th colspan="2"><h2> LogIn </h2></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th> 아이디 </th>
						<td> <input type="text" name="m_id"></td>
					</tr>
					<tr>
						<th> 패스워드 </th>
						<td> <input type="password" name="m_pw"></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" value="로그인" onclick="login_go(this.form)">
							<input type="button" value="회원가입" onclick="join_go(this.form)">
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>