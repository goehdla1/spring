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
				<i class="fas fa-bars"></i>
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

	<h1 style="text-align: center; color: red; font-size: 40px;">공연 관람
		후기</h1>
	
	<br>
	<br>
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

	<h1 style="text-align: center; text-decoration: underline;">뮤지컬</h1>
	<table style="width: 70%; margin: 0 auto; border-spacing: 0px;">

		<tbody>
			<tr>
				<td style="text-align: center; width: 20%;"><img
					src="images/김종욱찾기.jpg" alt="??"
					style="width: 100px; height: 130px; margin-top: 10px;"> <br>
					<span class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span></td>
				<td style="width: 80%; padding-left: 20px;">
					<h2 style="display: inline-block;">
						김종욱찾기
						<뮤지컬>
					</h2>
					<button style="width: 60px; height: 20px; font-size: 10px; margin-left: 60%;">전체보기</button>
					<p style="font-size: 13px;">“이름은요？” “김종욱이요.” “나이는요” “몰라요.” “사는
						곳은？” “몰라요.” “전화 번..？” “ 몰라요” ‘김종욱’이라는 이름 석자 빼곤 아는 게 없다!!!! ‘첫사랑 찾기
						주식회사’ 첫 고객의 ‘첫사랑’을 찾아야 한다. 과연, 그 여자는 첫사랑 김종욱을 만날 수 있을까？</p>
				</td>
			</tr>
			<tr>
				<td style="text-align: center; width: 20%;"><img
					src="images/김종욱찾기.jpg" alt="??"
					style="width: 100px; height: 130px; margin-top: 10px;"> <br>
					<span class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span></td>
				<td style="width: 80%; padding-left: 20px;">
					<h2 style="display: inline-block;">
						김종욱찾기
						<뮤지컬>
					</h2>
					<button style="width: 60px; height: 20px; font-size: 10px; margin-left: 60%;">전체보기</button>
					<p style="font-size: 13px;">“이름은요？” “김종욱이요.” “나이는요” “몰라요.” “사는
						곳은？” “몰라요.” “전화 번..？” “ 몰라요” ‘김종욱’이라는 이름 석자 빼곤 아는 게 없다!!!! ‘첫사랑 찾기
						주식회사’ 첫 고객의 ‘첫사랑’을 찾아야 한다. 과연, 그 여자는 첫사랑 김종욱을 만날 수 있을까？</p>
				</td>
			</tr>
			<tr>
				<td style="text-align: center; width: 20%;"><img
					src="images/김종욱찾기.jpg" alt="??"
					style="width: 100px; height: 130px; margin-top: 10px;"> <br>
					<span class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span></td>
				<td style="width: 80%; padding-left: 20px;">
					<h2 style="display: inline-block;">
						김종욱찾기
						<뮤지컬>
					</h2>
					<button style="width: 60px; height: 20px; font-size: 10px; margin-left: 60%;">전체보기</button>
					<p style="font-size: 13px;">“이름은요？” “김종욱이요.” “나이는요” “몰라요.” “사는
						곳은？” “몰라요.” “전화 번..？” “ 몰라요” ‘김종욱’이라는 이름 석자 빼곤 아는 게 없다!!!! ‘첫사랑 찾기
						주식회사’ 첫 고객의 ‘첫사랑’을 찾아야 한다. 과연, 그 여자는 첫사랑 김종욱을 만날 수 있을까？</p>
				</td>
			</tr>
			<tr>
				<td style="text-align: center; width: 20%;"><img
					src="images/김종욱찾기.jpg" alt="??"
					style="width: 100px; height: 130px; margin-top: 10px;"> <br>
					<span class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span></td>
				<td style="width: 80%; padding-left: 20px;">
					<h2 style="display: inline-block;">
						김종욱찾기
						<뮤지컬>
					</h2>
					<button style="width: 60px; height: 20px; font-size: 10px; margin-left: 60%;">전체보기</button>
					<p style="font-size: 13px;">“이름은요？” “김종욱이요.” “나이는요” “몰라요.” “사는
						곳은？” “몰라요.” “전화 번..？” “ 몰라요” ‘김종욱’이라는 이름 석자 빼곤 아는 게 없다!!!! ‘첫사랑 찾기
						주식회사’ 첫 고객의 ‘첫사랑’을 찾아야 한다. 과연, 그 여자는 첫사랑 김종욱을 만날 수 있을까？</p>
				</td>
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