<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.checked {
	color: white;
}

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

tbody {
	border: solid 1px black;
}

.scale {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.3s ease-in-out;
}

.scale:hover {
	transform: scale(1.2);
	-webkit-transform: scale(1.2);
	-moz-transform: scale(1.2);
	-ms-transform: scale(1.2);
	-o-transform: scale(1.2);
}
.menubar li ul {
	display: none; /* 평상시에는 서브메뉴가 안보이게 하기 */
	height: auto;
	padding: 0px;
	margin: 0px;
	border: 1px solid black;
	position: absolute;
	z-index: 200;
}
.menubar ul ul a {
	display: block;
	padding: 5px 5px;
	text-align:  center;
	font-size: 30px;
	text-decoration: none;
	border-top :1px solid black;
	width: 405px;
	color: white;
	background: silver;
	position: relative;
}
ul{
	list-style-type: none;
}


.menubar li:hover ul {
	display: block; /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
}
.menubar ul ul a:hover{
background: black;
}

.menubar li:active ul {
	color: red;
	background: blue;
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
						<li><a href="#">뮤지컬넌버벌<br> 퍼포먼스
						</a></li>
						
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
	<div align="center" style="width: 100%;">
	<div class="menubar" align="center" style="border-bottom: 1px solid black; width: 500px;">
		<ul>
			<li id="sub_m"><span style="font-size: 45px;">뮤지컬 - </span><a href="#"
				id="current" style="font-size: 30px;">오리지널/내한 ▼</a>
				<ul>
					<li id="sub_m"><a href="#" style="font-size: 23px; display: block;">창작뮤지컬</a></li>
					<li id="sub_m"><a href="#" style="font-size: 23px;">라이선스</a></li>
					<li id="sub_m"><a href="#" style="font-size: 23px;">뮤지컬 넌버벌 퍼포먼스</a></li>

				</ul></li>
		</ul>
	</div>
	</div>
	<br>
	<br>
	<br>
	<div class="" align="center"
		style="width: 90%; background: silver; margin: 0 auto;" id="vid">
		<video controls autoplay loop muted
			style="width: 67%; height: 35%; padding-top: 40px;">
			<source src="resources/images/videoplayback3mp4.mp4" type="video/mp4">
		</video>
		<div align="right" style="width: 68%;">
			<h2>
				Cats
				<뮤지컬>
			</h2>
			<p>2020.09.09 (수) ~ 2020.12.06 (일)</p>
			<p>샤롯데 씨어터</p>
		</div>
	</div>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<br>
	<table style="width: 60%; text-align: center; margin: 0 auto;">
		<tr>
			<td><img class="scale" src="resources/images/cat.jpg" alt="??"
				style="width: 320px; height: 370px;"></td>
			<td><img class="scale" src="resources/images/alra.jpg" alt="??"
				style="width: 320px; height: 370px;"></td>
		</tr>
		<tr>
			<td style="width: 50%;">
				<h2 style="font-size: 25px; text-align: center;">＜캣츠＞ 40주년 내한공연</h2>
				<p style="width: 80%;">
					다시 없을 단 한번의 무대!, 40주년 젤리클 볼이 시작된다!!
				</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 50%;">
				<h2 style="font-size: 25px; text-align: center;">2020 가족뮤지컬 [알라딘]</h2>
				<p style="width: 80%;">탄탄한 스토리! , 기본이 충실한 뮤지컬! , 디지털 아트가 한번에?!!</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>

		</tr>
	</table>


	<br>

	<table style="width: 90%; margin: 0 auto;">
		<thead>
			<tr>
				<th style="width: 20%; text-align: center;"><h1
						style="display: inline-block;">
						관람자 후기
						<p style="color: red; display: inline-block;">Best</p>
					</h1></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td
					style="text-align: center; width: 20%; border-bottom: 1px solid silver;">
					<h2 style="text-align: center;">1위) Cats</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 80%;"><p>지혜롭고 현명한
						선지자 고양이 올드 듀터러노미(Old Deuteronomy) 역은 한국인이 사랑하는 월드 스타 브래드 리틀(Brad
						Little)이 연기한다. 브래드 리틀은 뮤지컬 '오페라의 유령'에서 2,700여 회 이상 '오페라의 유령’을 맡아 전
						세계 최다 출연한 4인 중 한 명이라는 기록을 세운 주인공이다. '오페라의 유령'뿐만 아니라 '지저스 크라이스트
						수퍼스타', '에비타'에 이어 2017년 '캣츠'의 올드 듀터러노미를 맡으며 사랑을 받았다. '레 미제라블', '웨스트
						사이드 스토리', '미녀와 야수' 등을 통해 전 세계 무대에서 주역을 맡았으며 배우로서뿐만 아니라 '바람과 함께
						사라지다' 한국 연출을 맡는 등 활발한 활동을 펼치고 있다.</p></td>
			</tr>

			<tr>
				<td
					style="text-align: center; width: 20%; border-bottom: 1px solid silver;">
					<h2 style="text-align: center;">2위)알라딘</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star checked"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 80%;"><p>우리 애기들이 너무 좋아해요! 마지막 커튼콜때 배우들과 만날 수 있는 기회가 있어서 너무 좋아요ㅎ 다음에 또 보러 오겠습니다!</p></td>
			</tr>

		</tbody>

	</table>

	<br>
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