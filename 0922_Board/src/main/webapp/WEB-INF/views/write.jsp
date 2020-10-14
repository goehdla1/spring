<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
tr {
	    text-align:center;
	    padding:4px 10px;
	    background-color: #F6F6F6;
	}
	
th {
		width:120px;
	    text-align:center;
	    padding:4px 10px;
	    background-color: #B2CCFF;
	}
</style>
<script type="text/javascript">
	function sendData(f) {
		// 유효성 검사
		for (var i = 0; i < f.elements.length; i++) {
			if(f.elements[i].value==""){
				if(i ==2 || i==3) continue ;// 제외 시킬 때 사용
					alert(f.elements[i].name+"를 입력하세요");
				f.elements[i].focus();
				return;
			}
		}
			f.action="write_ok.do";
			f.submit();
	}
	
	function list_go2(f) {
		f.action="list.do";
		f.submit();
	}
	
</script>
</head>
<body>
	
	<form method="post" enctype="multipart/form-data">
	<h2 style="text-align: center;">Board 글 쓰기</h2>
		<table width="700" style="margin:  0 auto;">
		<tbody>
			<tr>
				<th>작성자</th>
				<td align="left"><input type="text" name="writer"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td align="left"> <input type="text" name="title"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
				<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
				<textarea rows="10" cols="60" name="content"></textarea>
				<script>
				CKEDITOR.replace( 'content' );
				</script>
				</td>
			</tr>
			<tr>
				<!-- 파라미터값을 받는 file 의 name = file 로 되어있다. -->
				<th>첨부파일</th>
				<td align="left"><input type="file" name="file"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td align="left"><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="button" value="입력" onclick="sendData(this.form)" /> 
				<input type="button" value="목록" onclick="list_go2(this.form)"/>
				<input type="reset" value="취소" />
				</td>
			</tr>
            </tbody>
		</table>
	</form>
</body>
</html>