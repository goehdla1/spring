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
</style>
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
	<table style="width: 80%; margin: 0 auto;">
		<tr style="text-align: center;">
			<td
				style="width: 80px; border-color: silver; background-color: lightyellow;"><a
				href=""
				style="font-size: 37px; text-decoration: none; color: black;">뮤지컬</a></td>
			<td
				style="width: 80px; border-color: silver; background-color: lightyellow;"><a
				href=""
				style="font-size: 37px; text-decoration: none; color: black;">콘서트</a></td>
			<td
				style="width: 80px; border-color: silver; background-color: lightyellow;"><a
				href=""
				style="font-size: 37px; text-decoration: none; color: black;">연극</a></td>
			<td
				style="width: 80px; border-color: silver; background-color: lightyellow;"><a
				href=""
				style="font-size: 37px; text-decoration: none; color: black;">클래식/무용</a></td>
			<td
				style="width: 80px; border-color: silver; background-color: lightyellow;"><a
				href=""
				style="font-size: 37px; text-decoration: none; color: black;">아동</a></td>

		</tr>

	</table>
	<br>
	<br>
	<br>
	<h1 style="text-align: center; color: red; font-size: 55px;">
		이벤트/쿠폰<select style="width: 23px; height: 20px;" autofocus>
			<option></option>
			<option value="이용안내"><a href="#">이용안내</a></option>
			<option value="이벤트/쿠폰"><a href="#">이벤트/쿠폰</a></option>
			<option value="FAQ"><a href="#">FAQ</a></option>
			<option value="MD#"><a href="#">MD#</a></option>
			<option value="제휴/할인카드"><a href="#">제휴/할인카드</a></option>
		</select>
	</h1>

	<br>
	<br>
	<table
		style="width: 75%; text-align: center; border-collapse: collapse; margin: 0 auto;">
		<thead style="background-color: silver;">
			<tr style="font-size: 28px;">
				<td>No</td>
				<td colspan="2">할인상품</td>
				<td>기간</td>
				<td>조회</td>
			</tr>
		</thead>
		<tbody>
			
			<tr>
				<td><p style="font-size: 22px;">1</p></td>
				<td style="width: 22%;"><img src="resources/images/겨울왕국.jpg" alt="??"
					style="width: 60%; height: 30%; margin: 16px 0;"></td>
				<td style="text-align: left; width: 40%"><h1
						style="display: inline-block; margin-left: 3%; font-size: 28px;">
						<a href="" style="text-decoration: none;">겨울왕국<b
							style="color: red; font-size: 20px;">(30%)</b></a>
					</h1>
					<p style="color: black; margin-left: 6%; font-size: 15px;">동화속
						같은 아름다운 무대, 환상의 겨울왕국으로 초대합니다!</p></td>
				<td><p style="font-size: 15px;">2020.07.20 ~ 2020.08.31</p></td>
				<td style="width: 7%;"></td>
			</tr>
			<tr>
				<td><p style="font-size: 22px;">1</p></td>
				<td style="width: 22%;"><img src="resources/images/겨울왕국.jpg" alt="??"
					style="width: 60%; height: 30%; margin: 16px 0;"></td>
				<td style="text-align: left; width: 40%"><h1
						style="display: inline-block; margin-left: 3%; font-size: 28px;">
						<a href="" style="text-decoration: none;">겨울왕국<b
							style="color: red; font-size: 20px;">(30%)</b></a>
					</h1>
					<p style="color: black; margin-left: 6%; font-size: 15px;">동화속
						같은 아름다운 무대, 환상의 겨울왕국으로 초대합니다!</p></td>
				<td><p style="font-size: 15px;">2020.07.20 ~ 2020.08.31</p></td>
				<td style="width: 7%;"></td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<br>
	<br>

	<table
		style="width: 80%; text-align: center; margin: 0px auto; border-spacing: 30px;">
		<thead>
			<tr>
				<th colspan="5" style="font-size: 32px;">쿠폰</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_free.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>수수료
							면제</b></span></td>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_10w.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>10000원
							할인</b></span></td>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_5w.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>5000원
							할인</b></span></td>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_free.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>수수료
							면제</b></span></td>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_3w.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>3000원
							할인</b></span></td>

			</tr>
			<tr>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_5w.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>5000원
							할인</b></span></td>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_3w.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>3000원 
							할인</b></span></td>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_10w.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>10000원
							할인</b></span></td>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_free.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>수수료
							면제</b></span></td>
				<td style="width: 20%; padding: 20px 0;"><a href=""><img style="width: 80%;"
						src="resources/images/MonthlyCou_5w.png" alt=></a> <br>
				<br> <span style="font-size: 20px; color: red;"><b>5000원
							할인</b></span></td>

			</tr>
		</tbody>
	</table>

	<br>
	<br>
	<hr>
	<br>
	<table style="width: 90%; margin: 0 auto; border: none;">
		<tr>
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