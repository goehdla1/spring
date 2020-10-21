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
				<i class="fas fa-bars"></i>
				<li><a href="#">뮤지컬</a>
					<ul class="sub">
						<li><a href="#">오리지널/내한</a></li>
						<li><a href="#">라이선스</a></li>
						<li><a href="#">창작뮤지컬</a></li>
						<li><a href="#">뮤지컬넌버벌 <br> 퍼포먼스</a></li>
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
		<h1 style="font-size: 50px;">아동</h1>
	</div>
	<br><br><br>
	<div style="background: silver;">
		<div class="swiper-container" style="background: silver;">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div>
						<img alt="" src="/resources/images/c1.jpg" id="swiper-img"
							class="scale">
						<h3>
						[청주] 리틀뮤지션 스페셜
							<연극>
						</h3>
						<button>예매하기</button>
					</div>
				</div>
				<div class="swiper-slide">
					<div>
						<img alt="" src="/resources/images/c5.jpg" id="swiper-img"
							class="scale">
						<h3>
							독도 아리랑
							<연극>
						</h3>
						<button>예매하기</button>
					</div>
				</div>

				<div class="swiper-slide">
					<div>
						<img alt="" src="/resources/images/c2.jpg" id="swiper-img"
							class="scale">
						<h3>
						가족뮤지컬 [우리 아빠가 최고야]
							<연극>
						</h3>
						<button>예매하기</button>
					</div>

				</div>
				<div class="swiper-slide">
					<div>
						<img alt="" src="/resources/images/c3.jpg" id="swiper-img" class="scale">
						<h3>
							[판타지액션 어린이뮤지컬] 더퀸_선덕여왕의 귀환
							<연극>
						</h3>
						<button>예매하기</button>
					</div>
				</div>
				<div class="swiper-slide">
					<div>
						<img alt="" src="/resources/images/c4.jpg" id="swiper-img"
							class="scale">
						<h3>
							어린이마술쇼-신비한 놀이터
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
	
	<br><br><hr><br><br>
	
	<div align="center" style="margin: 0 auto; border-bottom: 1px solid black; width: 650px;">
		<h2 style="text-align: center;">
			현재 구입 가능한 티켓은 총 <u><font style="color: red;">10개</font></u> 입니다.
		</h2>
	</div>
	
	
	<br>
	<br>
	<table style="width: 90% ; margin: 0 auto">
		<tr style="text-align: center; margin: 0 auto;">
			<td>
			<img src="/resources/images/봄날의 곰.jpg" alt="??" style="width: 170px;" class="scale">
			</td>
			<td>
			<img src="/resources/images/피터팬.jpg" alt="??" style="width: 170px;" class="scale" >
			</td>
			<td>
			<img src="/resources/images/아기돼지 삼형제.jpg" alt="??" style="width: 170px;" class="scale">
			</td>
			<td>
			<img src="/resources/images/세종이도.jpg" alt="??" style="width: 170px;" class="scale">
			</td>
			<td>
			<img src="/resources/images/에스메의여름.jpg" alt="??" style="width: 170px;" class="scale" >
			</td>
		</tr>
		<tr style="text-align: center; margin: 0 auto;">
			<td style="width: 20%;">
			<h3>봄날의 곰<br><가족뮤지컬></h3>
			<br>
			<p style="font-size: 12px; width: 80%;">아무 말썽도 사건도 일어나지 않는 지루한 교실에 느닷없이 들이닥친 날벼락, 아니, 봄날의 곰.</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
			<h3>피터팬<br><가족뮤지컬></h3>
			<br>
			<p style="font-size: 12px; width: 80%;">피터팬은 웬디라는 공상을 좋아하는 소녀가 피터팬에게 이끌려 공상의 나라에 가서 요정과 동물들과 함께 신나는 모험을 한 후, 집으로 돌아오는 내용.</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
			<h3>아기돼지 삼형제<br><가족뮤지컬></h3>
			<br>
			<p style="font-size: 12px; width: 80%;">'아기 돼지 삼형제'는 조셈 제이콥스의 동화로 전세계인의 많은 사랑을 받은 작품입니다.</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
			<h3>세종이도의꿈<br><창작뮤지컬></h3>
			<br>
			<p style="font-size: 12px; width: 80%;">예술과 과학을 사랑한 세종대왕의 이야기를 우리의 전통 가락과 함께 아이들의 눈높이에 맞춘 재밌고 신나는 퓨전뮤지컬!</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
			<h3>에스메의 여름<br><연극></h3>
			<br>
			<p style="font-size: 12px; width: 80%;">에스메가 할아버지와 함께 보낸 일주일의 시간 , 어떤 것들은 그대로이고 , 어떤 것들은 달라지는 여름이 다가옵니다.</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
		</tr>
		<tr style="text-align: center; margin: 0 auto;">
			<td style="padding-top: 20px; padding-bottom: 20px;">
			<img src="/resources/images/시간을 파는.jpg" alt="??" style="width: 170px;" class="scale">
			</td>
			<td style="padding-top: 20px; padding-bottom: 20px;">
			<img src="/resources/images/세세세.jpg" alt="??" style="width: 170px;" class="scale">
			</td>
			<td style="padding-top: 20px; padding-bottom: 20px;">
			<img src="/resources/images/넌 특별하단다.jpg" alt="??" style="width: 170px;" class="scale">
			</td>
			<td style="padding-top: 20px; padding-bottom: 20px;">
			<img src="/resources/images/겨울왕국.jpg" alt="??" style="width: 170px;" class="scale">
			</td>
			<td style="padding-top: 20px; padding-bottom: 20px;">
			<img src="/resources/images/인어공주.jpg" alt="??" style="width: 170px;" class="scale">
			</td>
		</tr>
		<tr style="text-align: center; margin: 0 auto; padding-top: 100px;">
			<td style="width: 20%;">
			<h3>시간을 파는 상점<br><연극></h3>
			<p style="font-size: 12px; width: 80%;">청소년 권장도서의 베스트셀러! , 김선영작가의<시간을파는상점> , 연극으로 찾아오다!</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
			<h3>네네네<br><연극></h3>
			<p style="font-size: 12px; width: 80%;">춤추는 첫잔,미스터리한 세눈박이 도깨비가 기다리는 신비한 '네네네' 숲속으로 여러분을 초대합니다.</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
			<h3>넌 특별하단다<br><뮤지컬></h3>
			<p style="font-size: 12px; width: 80%;">우리 아이 스스로가 특별한 존재라는 것을 깨닫게 해주는 단 하나의 뮤지컬!</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
			<h3>겨울왕국<br><뮤지컬></h3>
			<p style="font-size: 12px; width: 80%;">동화속 같은 아름다운 무대, 환상의 겨울왕국으로 초대합니다!</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button></td>
			<td style="width: 20%;">
			<h3>인어공주<br><뮤지컬></h3>
			<p style="font-size: 12px; width: 80%;">시대를 초월한 명작! 안데르센의 아름다운 이야기를 [인어공주] 가족뮤지컬로 만나요!</p>
			<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
		</tr>
	</table>

	<br>
	<hr>
<div>
	  <section style="float: left; width: 50%; height: 50%; margin-left: 7%;">
        <article style="font-size: 18px;">
            <h1 style="font-size: 30px;" >티켓노크(주)</h1>
            <p>
주소: 경기도 고양시 일산동구 식사동(식사동,타워파크)<br>
대표 임건우  |  개인정보보호책임자 : 임건우 goehdla@naver.com
<br>
사업자등록번호 xxx-xxx-xxxxxx  |
<br> 통신판매업신고 제 xxxx-xxxx호 사업자 정보확인
<br>
호스팅 서비스사업자 : 티켓노크(주)</p>

        </article>
        <article>
            <h1>Copyright © NHN Ticketlink Corporation. All rights reserved.</h1>
            
        </article>
    </section>
    <aside style="margin-left: 5%; padding-top: 0.5%;">
      <h1 style="font-size: 30px;"><u>Knock U Want Ticket</u></h1>
		<div style="float: left; text-align: center; margin-right: 45px; margin-left: 30px; ">
		<i class="fas fa-phone-square" style=" font-size: 90px;"></i>
		<h1>고객센터</h1>
		</div>
		
      <h1 style="font-size: 35px;">1577-7777</h1>
      <p style="width: 85%;">상담시간 : 오전 09:00 ~ 오후 05:00 (점심시간 12:00~01:00)
휴무일 : 토요일, 일요일, 공휴일, 팩스 : 02-718-0194</p>
    </aside>
    </div>
</body>
</html>