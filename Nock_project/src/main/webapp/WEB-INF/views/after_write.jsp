<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#menu ul li {
	float: right;
	list-style-type: none;
	padding-left: 0px;
	position: relative;
	border-left: 1px solid black;
	padding: 0px 10px 0px 10px;
	position: relative;
	top: 0px;
	right: 50px;
}

#menu ul li:last-child {
	border-left: none;
}

.search {
	position: relative;
	left: 70%;
	padding-left: 0px;
}

#menu2 {
	position: relative;
	top: -25px;
	text-align: center;
	font-size: 30px;
	background-color: gray;
}

#menu2>ul>li {
	display: inline-block;
	position: relative;
}

#menu2>ul>li>a {
	display: block;
	padding: 10px 50px;
	font-weight: 600;
	background-color: gray;
	color: white;
	text-decoration: none;
}

.sub {
	display: none;
	position: absolute;
	left: 5px;
	top: 60px;
	padding: 10px 0;
	font-size: 30px;
	width: 100%;
	list-style-type: none;
	background-color: white;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
	text-align: center;
	text-decoration: none;
}

#menu2>ul>li:hover ul {
	display: block;
}

#menu2 ul ul a {
	display: block;
	padding: 10px 10px;
	text-align: center;
	font-size: 17px;
	text-decoration: none;
	border-top: 1px solid #eaeaea;
}

.main {
	border: solid 1px black;
	padding: 30px;
	background-color: silver;
	position: relative;
	top: -40px;
}

.main>video, h3, p {
	margin: 0 auto;
}

#text1 {
	position: relative;
	left: 280px;
	top: 15px;
}

.main2 {
	margin: 0 auto;
	width: 90%;
	height: 40%;
}

.main2>#sub1 {
	border: solid 1px white;
	width: 70%;
	height: 300px;
	margin: auto;
}

#sub2-1, #sub2-2, #sub2-3 {
	border: solid 1px white;
	width: 30%;
	height: 170px;
	float: left;
	margin-left: 45px;
	width: 30%;
}

#sub3-1 {
	margin: 0px auto;
	text-align: center;
}

.main3>div {
	text-align: center;
	margin: 0 auto;
	margin-left: 80px;
}

#sub4-1, #sub4-2 {
	border: solid 1px white;
	width: 70%;
	height: 300px;
	margin: auto;
}

table, tr, td {
	border: 1px solid black;
}

}
<
style type ="text /css ">a {
	text-decoration: none;
}

table {
	width: 500px;
	border-collapse: collapse;
}

table, tr, td {
	border: 1px solid black;
	padding: 3px
}

#star_grade a {
	text-decoration: none;
	color: gray;
}

#star_grade a.on {
	color: red;
}
</style>
<script>
	$('#star_grade a').click(function() {
		$(this).parent().children("a").removeClass("on"); /* 별점의 on 클래스 전부 제거 */
		$(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
		return false;
	});
</script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

</head>
<body>
	<div id="menu" style="font-size: 15px;">
		<ul>
			<li><a href="#">고객센터</a></li>
			<li><a href="#">마이페이지</a></li>
			<li><a href="#">회원가입</a></li>
			<li><a href="#">로그인</a></li>
		</ul>
	</div>

	<div style="position: relative; top: 0px; left: 30px;">
		<h1 style="font-size: 50px;">
			<u>Knock U Want TicKet</u>
		</h1>
	</div>

	<div class="search">
		<input type="text" placeholder="search"
			style="width: 25%; height: 18px; font-size: 30px;">
		<button>검색</button>
	</div>

	<hr>

	<div class="wapper" style="position: relative; z-index: 1">
		<nav id="menu2">
			<ul>
				<li><a href="#">뮤지컬</a>
					<ul class="sub">
						<li><a href="#">오리지널/내한</a></li>
						<li><a href="#">라이선스</a></li>
						<li><a href="#">창작뮤지컬</a></li>
						<li><a href="#">뮤지컬넌버벌<br> 퍼포먼스</a></li>
					</ul></li>
				<li><a href="#">콘서트</a>
					<ul class="sub">
						<li><a href="#">국내공연</a></li>
						<li><a href="#">내한공연</a></li>
					</ul></li>
				<li><a href="#">연극</a></li>
				<li><a href="#">클래식/무용</a>
					<ul class="sub">
						<li><a href="#">클래식/오페라</a></li>
						<li><a href="#">발레/무용</a></li>
						<li><a href="#">국악</a></li>
					</ul></li>
				<li><a href="#">아동</a>
					</li>
				<li><a href="#" style="font-size: 20px; color: black;">이벤트</a></li>
				<li><a href="#"
					style="font-size: 20px; padding: 0; margin: 0; color: black;">랭킹</a></li>
				<i class="fas fa-home"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-map-marker-alt"></i>

			</ul>
		</nav>
	</div>

	<h1 style="text-align: center; text-decoration: underline;">후기
		작성하기</h1>

	<div align="center">
		<p>
			[<a href="/0717_MVC04_guestbook/MyController?cmd=list">목록으로 이동</a>]
		</p>
		<br>
		<form method="post">
			<table>
				<tr align="center">
					<td bgcolor="#99ccff">*작성자</td>
					<td><input type="text" name="name" size="20" /></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">*제 목</td>
					<td><input type="text" name="subject" size="20" /></td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">*비밀번호</td>
					<td><input type="password" name="pwd" size="20" /></td>
				</tr>
				<tr align="center">
					<td colspan="2"><textarea rows="10" cols="60" name="content"></textarea>
					</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">*평점</td>
					<td><p id="star_grade">
							<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a href="#">★</a>
							<a href="#">★</a>
						</p></td>

				</tr>
				<tfoot>
					<tr align="center">
						<td colspan="2"><input type="button" value="저장"
							onclick="save_go(this.form)" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="reset" value="취소" /></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>

	<br>
	<br>
	<br>
	<hr>
	<br>
	<table style="width: 90%; margin: 0 auto; border: none; border: none;">
		<tr style="border: none;">
			<td style="text-align: center; width: 20%; border: none;"><i
				class="fas fa-credit-card" style="font-size: 90px;"></i> <br> <br>
				<p style="font-size: 20px; text-align: center;">제휴/할인카드</p></td>
			<td style="text-align: center; width: 20%; border: none;"><i
				class="fas fa-check-square" style="font-size: 90px;"></i> <br>
				<br>
				<p style="font-size: 20px; text-align: center;">이용안내</p></td>
			<td style="text-align: center; width: 20%; border: none;"><i
				class="fas fa-gift" style="font-size: 90px;"></i> <br> <br>
				<p style="font-size: 20px; text-align: center;">이벤트/쿠폰</p></td>
			<td style="text-align: center; width: 20%; border: none;"><i
				class="fas fa-question" style="font-size: 90px;"></i> <br> <br>
				<p style="font-size: 20px; text-align: center;">FAQ</p></td>
			<td style="text-align: center; width: 20%; border: none;"><i
				class="fas fa-robot" style="font-size: 90px;"></i> <br> <br>
				<p style="font-size: 20px;">MD#</p></td>
		</tr>
	</table>




	<br>
	<hr>
	<div>
		<section
			style="float: left; width: 50%; height: 50%; margin-left: 7%;">
			<article style="font-size: 18px;">
				<h1 style="font-size: 30px;">티켓노크(주)</h1>
				<p>
					주소: 경기도 고양시 일산동구 식사동(식사동,타워파크)<br> 대표 임건우 | 개인정보보호책임자 : 임건우
					goehdla@naver.com <br> 사업자등록번호 xxx-xxx-xxxxxx | <br>
					통신판매업신고 제 xxxx-xxxx호 사업자 정보확인 <br> 호스팅 서비스사업자 : 티켓노크(주)
				</p>

			</article>
			<article>
				<h1>Copyright © NHN Ticketlink Corporation. All rights
					reserved.</h1>

			</article>
		</section>
		<aside style="margin-left: 5%; padding-top: 0.5%;">
			<h1 style="font-size: 30px;">
				<u>Knock U Want Ticket</u>
			</h1>
			<div
				style="float: left; text-align: center; margin-right: 45px; margin-left: 30px;">
				<i class="fas fa-phone-square" style="font-size: 90px;"></i>
				<h1>고객센터</h1>
			</div>

			<h1 style="font-size: 35px;">1577-7777</h1>
			<p style="width: 85%;">상담시간 : 오전 09:00 ~ 오후 05:00 (점심시간
				12:00~01:00) 휴무일 : 토요일, 일요일, 공휴일, 팩스 : 02-718-0194</p>
		</aside>
	</div>
</body>
</html>