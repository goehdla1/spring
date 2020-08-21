<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{text-align: center; margin: 0px auto;}
	table{width: 600px; margin: 0px auto; 
		border-collapse: collapse; text-align: center;}
	table, th, td {border: 1px solid tomato;}
	h1{text-align: center;}
	a{text-decoration: none;}
</style>
<script type="text/javascript">
	function insert_go(f) {
		// 유효성 검사
		f.action = "insert_ok.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div>
		<form method="post">
			<fieldset>
				<legend> 회원가입 </legend>
				<table>
					<tbody>
						<tr>
							<td> 아이디 </td>
							<td><input type="text" name="m_id"></td>
						</tr>
						<tr>
							<td> 비밀번호 </td>
							<td><input type="password" name="m_pw"></td>
						</tr>
						<tr>
							<td> 이름 </td>
							<td><input type="text" name="m_name"></td>
						</tr>
						<tr>	
							<td> 나이 </td>
							<td><input type="number" name="m_age"></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"><input type="button" onclick="insert_go(this.form)" value="회원가입"></td>
						</tr>
					</tfoot>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>