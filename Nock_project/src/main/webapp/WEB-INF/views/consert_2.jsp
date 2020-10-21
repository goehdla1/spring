<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Link Swiper's CSS -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<style type="text/css">
<
style type ="text /css ">.checked {
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

.swiper-container {
	width: 90%;
}

.swiper-slide {
	text-align: center;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

@media ( max-width : 760px) {
	.swiper-button-next {
		right: 20px;
		transform: rotate(90deg);
	}
	.swiper-button-prev {
		left: 20px;
		transform: rotate(90deg);
	}
}

#swiper-img {
	width: 420px;
	height: 470px;
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
}
ul{
	list-style-type: none;
}

.menubar ul ul a:hover{
background: black;
}

.menubar li:hover ul {
	display: block; /* 마우스 커서 올리면 서브메뉴 보이게 하기 */
}
.menubar li:active ul {
	color: red;
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
						<li><a href="#">뮤지컬넌버벌<br>퍼포먼스
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
				<li><a href="#">아동</a></li>
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
			<li id="sub_m"><span style="font-size: 45px;">콘서트 - </span><a href="#"
				id="current" style="font-size: 30px;">내한 공연 ▼</a>
				<ul>
					<li id="sub_m"><a href="#" style="font-size: 23px;">국내 공연</a></li>

				</ul></li>
		</ul>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<div style="background: silver;">
		<div class="swiper-container" style="background: silver;">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div>
						<img alt="" src="resources/images/con4.jpg" id="swiper-img"
							class="scale">
						<h3>
							2020 장윤정 라이브 콘서트
							<콘서트>
						</h3>
						<button>예매하기</button>
					</div>
				</div>
				<div class="swiper-slide" data-history="Slide 2">
					<div>
						<img alt="" src="resources/images/con1.jpg" id="swiper-img"
							class="scale">
						<h3>
							포레스텔라콘서트 ＜넬라 판타지아＞
							<콘서트>
						</h3>
						<button>예매하기</button>
					</div>

				</div>
				<div class="swiper-slide" data-history="3">
					<div>
						<img alt="" src="resources/images/con2.jpg" id="swiper-img"
							class="scale">
						<h3>
							SURT(설) 'Ah,ah What cant i do?'
							<콘서트>
						</h3>
						<button>예매하기</button>
					</div>
				</div>
				<div class="swiper-slide" data-history="Slide 4">
					<div>
						<img alt="" src="resources/images/con3.jpg" id="swiper-img"
							class="scale">
						<h3>
							크리스토퍼 내한공연
							<연극>
						</h3>
						<button>예매하기</button>
					</div>
				</div>
				<div class="swiper-slide" data-history="5">
					<div>
						<img alt="" src="resources/images/con5.jpg" id="swiper-img"
							class="scale">
						<h3>
							케빈오 콘서트〈RE：THE NIGHT〉
							<콘서트>
						</h3>
						<button>예매하기</button>
					</div>
				</div>

			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>

	<!-- Swiper JS -->
	<script src="../dist/js/swiper.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			slidesPerView : 3,

			direction : getDirection(),
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			on : {
				resize : function() {
					swiper.changeDirection(getDirection());
				}
			}
		});

		function getDirection() {
			var windowWidth = window.innerWidth;
			var direction = window.innerWidth <= 760 ? 'vertical'
					: 'horizontal';

			return direction;
		}
	</script>
	<br>
	<br>
	<hr>
	<br>
	<br><br>

	<div align="center" style="margin: 0 auto; border-bottom: 1px solid black; width: 650px;">
		<h2 style="text-align: center;">
			현재 구입 가능한 티켓은 총 <u><font style="color: red;">1개</font></u> 입니다.
		</h2>
	</div>
	<br>
	<br>
	<br>
	<table style="width: 50%; margin: 0 auto;">

		<tr>
			<td style="text-align: center;"><video width="600px"
					height="300px;" controls autoplay muted loop>
					<source src="resources/images/videoplayback8.mp4" type="video/mp4">

				</video>

				<h1 style="font-size: 25px; margin-left: 5%; display: inline-block;">
					크리스토퍼 내한공연（CHRISTOPHER LIVE IN SEOUL）
					<콘서트>
					<button style="font-size: 15px;">예매하기</button>
				</h1></td>

		</tr>
	</table>
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
					style="text-align: center; width: 25%; border-bottom: 1px solid silver;">
					<h3 style="text-align: center;">크리스토퍼 내한공연</h3> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 75%;"><p>콘서트 진짜 관객분들
						호응도 너무 좋고 떼창할때 딱 하고! 특히 배드 때.. 진짜 개쩔탱 진짜 막 이 현장에서 같이 목터져라 노래하고
						그런다는게 너무 행복했습니당 ㅠㅠ</p></td>
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