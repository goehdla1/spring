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
	<div id="sub3-1"
		style="width: 500px; border-bottom: 1px solid black; text-align: center;">
		<h1 style="font-size: 50px;">연극</h1>
		
	</div>
	<br>
	<br>
	<br>
	<div style="background: silver;">
		<div class="swiper-container" style="background: silver;">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div>
						<img alt="" src="resources/images/연극(나의PS파트너).jpg" id="swiper-img"
							class="scale">
						<h3>
							나의PS파트너
							<연극>
						</h3>
						<button>예매하기</button>
					</div>
				</div>
				<div class="swiper-slide">
					<div>
						<img alt="" src="resources/images/연극(신의아그네스).jpg" id="swiper-img"
							class="scale">
						<h3>
							신의아그네스
							<연극>
						</h3>
						<button>예매하기</button>
					</div>
				</div>

				<div class="swiper-slide">
					<div>
						<img alt="" src="resources/images/연극(오만과편견).jpg" id="swiper-img"
							class="scale">
						<h3>
							오만과편견
							<연극>
						</h3>
						<button>예매하기</button>
					</div>

				</div>
				<div class="swiper-slide">
					<div>
						<img alt="" src="resources/images/연극(이퀄).jpg" id="swiper-img" class="scale">
						<h3>
							이퀄
							<연극>
						</h3>
						<button>예매하기</button>
					</div>
				</div>
				<div class="swiper-slide">
					<div>
						<img alt="" src="resources/images/연극(히스토리보이즈).jpg" id="swiper-img"
							class="scale">
						<h3>
							히스토리보이즈
							<연극>
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
	<br>
	<hr>
	<br>
	<br>
	<div align="center" style="margin: 0 auto; border-bottom: 1px solid black; width: 650px;">
		<h2 style="text-align: center;">
			현재 구입 가능한 티켓은 총 <u><font style="color: red;">13개</font></u> 입니다.
		</h2>
	</div>
	<br><br><br>
	<table style="width: 90%; text-align: center; margin: 0 auto;">
		<tr>
			<td><img src="resources/images/play01.jpg" alt="??"
				style="width: 270px; height: 320px;" class="scale"></td>
			<td><img src="resources/images/play02.jpg" alt="??"
				style="width: 270px; height: 320px;" class="scale"></td>
			<td><img src="resources/images/play03.jpg" alt="??"
				style="width: 270px; height: 320px;" class="scale"></td>
			<td><img src="resources/images/play04.jpg" alt="??"
				style="width: 270px; height: 320px;" class="scale"></td>
		</tr>
		<tr>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">연극
					리미트(RE-MEET)</h2>
				<p style="width: 80%;">대학로 최고의 섹시 발랄 코미디! 첫 사랑의 추억을 유퀘한 아이디로
					풀어내다!</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">연극 한뼘사이</h2>
				<p style="width: 80%;">대학로 대표 로맨스 코미디!</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">연극 [동굴 가족]</h2>
				<p style="width: 80%;">이런 곳에 어울리는 인간은 아무도 없다. 그런데도 우린 지금 이곳에 있지.
					곰 같은 짐승에게나 어울릴 여기 어두컴컴한 동굴 속에 말이다.</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">연극 [불편한 너와의
					사정거리]</h2>
				<p style="width: 80%;">
					지공연협동조합이 다시 선보이는
					<불편한 너와의 사정거리> 새롭게 추가된 여자버전과 함께 찾아오다! 
				</p> <br>
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
					<h2>1위) 리미트</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 80%;"><p>웃음과 사랑의 소중함
						그리고 행복의 의미를 다시금 생각해 보게 하는 재미있는 연극이였습니다.</p></td>
			</tr>

			<tr>
				<td
					style="text-align: center; width: 20%; border-bottom: 1px solid silver;">
					<h2>2위) 한뼘사이</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star checked"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 80%;"><p>스놉시스를 보고 이
						연극을 관람하고 싶어서 예매했는데 멀티맨의 활약이 돋보였습니다. 4명의 오피스텔 이웃들이 선보이는 이야기에 집중해서
						보았고 로맨틱 코미디 연극답게 웃음+감동까지, 배우들의 프로 연기에 감탄했습니다. 커플들이 보러가도 좋고 친구끼리
						보러가도 좋은, 시간이 아깝지 않은 관람극입니다.</p></td>
			</tr>

			<tr>
				<td
					style="text-align: center; width: 20%; border-bottom: 1px solid silver;">
					<h2>3위) 동굴 가족</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star checked"></span> <span class="fa fa-star checked"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 80%;"><p>철거가 임박한 뉴욕의
						한 낡은 극장에 임시거처로 살게 되어 노숙자들이 동굴 속 같은 어려운 환경에서도 품위와 유머를 잃지 않고 서로를
						배려하고 아끼며 한 가족처럼 살아가는 아름답고 따뜻한 사랑의 이야기</p></td>
			</tr>

			<tr>
				<td
					style="text-align: center; width: 20%; border-bottom: 1px solid silver;">
					<h3>4위)불편한 너와의 사정거리</h3> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span> <span
					class="fa fa-star checked"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 80%;"><p>자신의 인생이 돌이킬
						수 없는 지경에 이르게 되었다고 생각하는 한 인간이 그렇게 자신을 몰아세운 과거의 사람들을 찾아가는 이야기</p></td>
			</tr>
		</tbody>

	</table>

	<br>
	<br>
	<hr>
	<br>
	<br><br>
	<table style="width: 90% ; text-align: center; margin: 0 auto;">
		<tr>
		<td>
		<img src="resources/images/play05.jpg" alt="??"
				style="width: 270px; height: 320px; " class="scale">
		</td>
		<td>
		<img src="resources/images/play06.jpg" alt="??"
				style="width: 270px; height: 320px;" class="scale">
		</td>
		<td>
		<img src="resources/images/play07.jpg" alt="??"
				style="width: 270px; height: 320px;" class="scale">
		</td>
		<td>
		<img src="resources/images/play08.jpg" alt="??"
				style="width: 270px; height: 320px;" class="scale">
		</td>
		</tr>
		<tr>
		<td style="width: 25%;">
		<h2 style="font-size: 25px; text-align: center; display: inline-block; margin-right: 3%;">[죽여주는 이야기]</h2><button style="font-size: 10px;">후기보기</button>
			<p style="width: 80%;">관객 참여극의 시초! 관객석도 무대가 된다!</p>
			<button style="width: 65%; margin-top: 2%;">예매하기</button>
		</td>
		<td style="width: 25%;">
		<h2 style="font-size: 25px; text-align: center; display: inline-block; margin-right: 3%;">[행복]</h2><button style="font-size: 10px;">후기보기</button>
			<p style="width: 80%;">당신은 언제 가장 행복하세요?</p>
			<button style="width: 65%; margin-top: 2%;">예매하기</button>
		</td>
		<td style="width: 25%;">
		<h2 style="font-size: 25px; text-align: center; display: inline-block; margin-right: 3%;">[그놈은예뻤다]</h2><button style="font-size: 10px;">후기보기</button>
			<p style="width: 80%;">웃고싶을때 그놈은 예뻤다.</p>
			<button style="width: 65%; margin-top: 2%;">예매하기</button>
		</td>
		<td style="width: 25%;">
		<h2 style="font-size: 25px; text-align: center; display: inline-block; margin-right: 3%;">달동네</h2><button style="font-size: 10px;">후기보기</button>
			<p style="width: 80%;">우리 기억 속에 있는 어렵고 힘든 시절, 서로를 아끼고 사랑하며 살아가는.. 웃음과 진한 감동을 전하는 달동네</p>
			<br>
			<button style="width: 65%; margin-top: 2%;">예매하기</button>
		</td>
		</tr>
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