<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	width: 350px;
	height: 400px;
}
</style>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>
	<div id="menu" style="font-size: 15px; width: 100%;" align="center">
		<ul>
			<li><a href="">고객센터</a></li>
			<li><a href="#">마이페이지</a></li>
			<li><a href="#">회원가입</a></li>
			<li><a href="#">로그인</a></li>
		</ul>
	</div>

	<div style="position: relative; top: 0px; left: 30px; width: 50%;">
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

	<div class="wapper" style="position: relative; width: 100%; z-index: 1">
		<nav id="menu2">
			<ul>

				<li><a href="#">뮤지컬</a>
					<ul class="sub">
						<li><a href="#">오리지널/내한</a></li>
						<li><a href="#">라이선스</a></li>
						<li><a href="#">창작뮤지컬</a></li>
						<li><a href="#">뮤지컬넌버벌 <br>퍼포먼스
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
	<br>
	<div class="" align="center"
		style="width: 90%; background: silver; margin: 0 auto;" id="vid">
		<video controls autoplay loop muted
			style="width: 67%; height: 35%; padding-top: 40px;">
			<source src="resources/images/videoplayback.mp4" type="video/mp4">
		</video>
		<div align="right" style="width: 68%;">
			<h2>
				모차르트
				<뮤지컬>
			</h2>
			<p>2020.6.11 (목) ~ 2020.8.9 (일)</p>
			<p>세종문화회관 대극장</p>
		</div>
	</div>





	<h1 style="color: red; text-align: center; font-size: 60px;">
		<i class="fas fa-ticket-alt" style="color: black; margin-right: 20px;"></i>오늘의
		추천
	</h1>
	<br>
	<br>
	<table style="width: 70%; margin: 0 auto;">
		<tr>
			<td style="width: 30%;"><img class="scale"
				src="resources/images/images.png" alt="모차르트"
				style="width: 400px; height: 280px;"></td>
			<td style="padding-left: 50px; width: 70%;">
				<h1 style="font-size: 32px;">
					모차르트
					<뮤지컬>
					<button style="font-size: 15px;">예매하기</button>
				</h1> <font>1768년 빈의 한 귀족 저택. 잘츠부르크 궁중 지휘자인 레오폴드 모차르트는 자리에 모인
					귀족들에게 자신의 다섯 살 난 아들 볼프강 아마데의 피아노 연주를 들려주며 그의 뛰어난 음악적 재능을 소개하고 있다.
					그의 연주를 돕던 누나 난네가 볼프강이 아픈 것 같다고 얘기하지만 레오폴드는 ‘기적의 아이’ 볼프강의 후견인을 모으기에만
					열중할 뿐이다. 그로부터 9년 후. 청년이 된 볼프강은 아버지의 뜻에 따라 잘츠부르크의 영주인 콜로레도 대주교의 지배하에
					음악 활동을 하고 있다. ‘기적의 아이’라 불리던 어린 시절의 분신인 ‘아마데’가 그의 곁을 따라다니면서 작곡 일에
					심취할 수 있도록 돕고 있다. 대주교가 요청한 음악을 쓰는 일이 지겨워진 볼프강은 자유를 갈구하게 되는데..</font>

			</td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<br>
	<table style="width: 85%; margin: 0 auto;">
		<tr>
			<td style="width: 33.3%;"><img class="scale"
				src="resources/images/빨래.jpg" alt="??"
				style="float: left; width: 200px; height: 200px; padding-right: 13px;">

				<h2 style="font-size: 25px;">
					빨래
					<뮤지컬>
					<button>예매하기</button>
				</h2> <font style="font-size: 15px;">지금 당신에게 찾아온 가장 따뜻한 위로...</font></td>



			<td style="width: 33.3%;"><img class="scale"
				src="resources/images/레드슈즈.jpg" alt="??"
				style="float: left; width: 200px; height: 200px; padding-right: 13px; padding-left: 13px;">

				<h2 style="font-size: 25px;">
					레드슈즈
					<오페라>
					<button>예매하기</button>
				</h2> <font style="font-size: 15px;"> 다이나믹한 전개의 음악, 멈출 수 없는 다라마.
					어른들을 위한 동화가 시작된다! 신예 작곡가 전예은의 창작 오페라 <레드슈즈>
			</font></td>


			<td style="width: 33.3%;"><img class="scale"
				src="resources/images/연애하기좋은날.jpg" alt="??"
				style="float: left; width: 200px; height: 200px; padding-right: 13px; padding-left: 13px;">

				<h2 style="font-size: 25px;">
					연애하기좋은날
					<연극>
					<button>예매하기</button>
				</h2> <font style="font-size: 15px;">소원해진 커플 , 시작하는 커플 , 모두에게
					안성맞춤! 누구나 겪었을 현실연애! , 웃음 로맨스 모두 한번에! 로맨틱 코메디의 정석!!</font></td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<hr>
	<br>

	<div id="sub3-1"
		style="width: 500px; border-bottom: 1px solid black; text-align: center;">
		<h1 style="font-size: 50px;">뮤지컬</h1>
		<button style="position: relative; left: 190px; top: -10px;">전체
			보기</button>
	</div>

	<br>
	<br>
	<br>
	<br>

	<table style="width: 90%; text-align: center; margin: 0 auto;">
		<tr>
			<td><img class="scale" src="resources/images/김종욱찾기.jpg" alt="??"
				style="width: 250px; height: 300px;"></td>
			<td><img class="scale" src="resources/images/브로드웨이.jpg" alt="??"
				style="width: 250px; height: 300px;"></td>
			<td><img class="scale" src="resources/images/라루미.jpg" alt="??"
				style="width: 250px; height: 300px;"></td>
			<td><img class="scale" src="resources/images/유앤.jpg" alt="??"
				style="width: 250px; height: 300px;"></td>
		</tr>
		<tr>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">김종욱 찾기</h2>
				<p style="width: 80%;">
					썸은 이제 그만! 폴링 인 럽~ 사랑에 빠지고 싶은 솔로라면! 좀 더 가까워 지고 싶어! 두근두근 아직 연애가 서툰
					초보커플이라면! 데이트 공식 뮤지컬
					<김종욱 찾기>가 정답이다! 
				</p>
				<button style="margin-left: 62%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">브로드웨이42번가</h2>
				<p style="width: 80%;">당신이 꿈꿔 온 바로 그 뮤지컬 뮤지컬 브로드웨이 42번가 지금,당신이
					원하는 뮤지컬의 모든 것이 눈 앞에 펼쳐진다!</p>
				<button style="margin-left: 62%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">La Lumiere</h2>
				<p style="width: 80%;">제 2차 세계대전 나치 독일에 점령당한 파리의 비밀 창고에서 조우한 독일
					소년과 프랑스 소녀 그리고 전쟁의 한복판 속에서 맺어진 둘만의 휴전협정!</p>
				<button style="margin-left: 62%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">You&It</h2>
				<p style="width: 80%;">
					추억 속의 미나, 눈앞의 미나 , 그리고 규진 사랑과 그리움 앞에 솔직해지기 위한 이야기 뮤지컬
					<YOU &IT>
				</p> <br>
				<button style="margin-left: 62%;">예매하기</button>
			</td>
		</tr>
	</table>
	<br>
	<br>
	<br>

	<hr>
	<br>
	<br>
	<div id="sub3-1"
		style="width: 500px; border-bottom: 1px solid black; text-align: center;">
		<h1 style="font-size: 50px;">콘서트</h1>
		<button style="position: relative; left: 190px; top: -10px;">전체
			보기</button>
	</div>

	<br>
	<br>
	<br>
	<table style="width: 90%; margin: 0 auto; border-spacing: 0 50px;">
		<tr>
			<td style="text-align: right;"><video width="600px"
					height="300px;" controls autoplay loop muted>
					<source src="resources/images/videoplayback2.mp4" type="video/mp4">

				</video></td>
			<td style="text-align: left;">
				<h1 style="font-size: 35px; margin-left: 5%; display: inline-block;">
					포레스텔라(넬라 판타지아)
					<콘서트>
					<button style="font-size: 15px;">예매하기</button>
				</h1>
				<p style="margin-bottom: 5%; width: 90%;">
					크로스오버계의 아이돌이라 불리는 '포레스텔라'가 2020년 콘서트를시작한다. 지난 4월 공개된 싱글 '넬라 판타지아'가
					남성사중창이라고는 믿기지 않을 정도의 환상적인 아름다움으로 화제를 모은 가운데, 포레스텔라가 2020년 콘서트를
					시작한다. 포레스텔라가 이번에 준비하는 공연의 타이틀 또한
					<넬라 판타지아>. 지난 공연들에게 포레스텔라가 아름다운 숲과 별, 미지의세계 그리고 동화 같은 겨울 숲을
					보여주었다면, 이번에는 대자연의 평화로움을 담은 무대를 준비할 예정이다. 
				</p>

			</td>
		</tr>

		<tr style="margin-top: 400px;">
			<td style="text-align: right;"><video width="600px"
					height="300px;" controls autoplay muted loop>
					<source src="resources/images/videoplayback3.mp4" type="video/mp4">

				</video></td>
			<td>
				<h1 style="font-size: 32px; margin-left: 5%; display: inline-block;">
					SURT(설) 'Ah,ah What cant i do?'
					<콘서트>
					<button style="font-size: 15px;">예매하기</button>
				</h1>
				<p style="margin-bottom: 5%; width: 90%;">2019 년 겨울 성공적인 첫 단독
					콘서트에 이어 국내와 해외를 오가며 다양한 무대 경험을 쌓아온 이들은 2020년 또한 박차를 가하며 수많은 일정을
					계획하고 있었습니다. 대만에서의 단독 콘서트 , 캐나다, 싱가포르 등 다수의 국내외 페스티벌에 참여 예정이었고 , 4월에
					예정되어 있던 두 번째 단독 콘서트 'Ferris Wheel'를 비롯하여 아시아 투어 역시 계획되어 있었던 SURL은
					누구도 예상치 못한 난관에 봉착하게 됩니다. 모두가 마스크를 쓰게 되고 서로 거리를 두며 무기력한 일상이 계속되는 시기
					속에서 무엇을 할 수 있을까요. 무엇을 어떻게 해야 할지 도무지 답이 나오지 않는 상황이었지만 멤버들은 묵묵히 공연을
					준비하고, 곡을 써 내려갔습니다. 그리고 8월, 멤버들은 이 어려운 시기를 버텨내며 준비해 온 결과물들을 이번 공연을
					통해 여러분께 선보이고 싶습니다.</p>

			</td>
		</tr>
	</table>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<div id="sub3-1"
		style="width: 500px; border-bottom: 1px solid black; text-align: center;">
		<h1 style="font-size: 50px;">연극</h1>
		<button style="position: relative; left: 190px; top: -10px;">전체
			보기</button>
	</div>

	<br>
	<br>
	<br>
	<div class="swiper-container">
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
					<img alt="" src="resources/images/연극(이퀄).jpg" id="swiper-img"
						class="scale">
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
	<div id="sub3-1"
		style="width: 500px; border-bottom: 1px solid black; text-align: center;">
		<h1 style="font-size: 50px;">클래식/무용</h1>
		<button style="position: relative; left: 190px; top: -10px;">전체
			보기</button>
	</div>
	<br>
	<br>
	<br>
	<table style="width: 90%; margin: 0 auto;">
		<tr>
			<td style="text-align: center; width: 25%;"><img
				src="resources/images/11.jpg" alt="??" style="width: 270px;"></td>
			<td style="text-align: center; width: 25%;"><img
				src="resources/images/13.jpg" alt="??" style="width: 270px;"></td>
			<td style="text-align: center; width: 25%;"><img
				src="resources/images/12.jpg" alt="??" style="width: 270px;">
				<img src="resources/images/15.jpg" alt="??" style="width: 270px;"></td>
			<td style="text-align: center; width: 25%;"><img
				src="resources/images/14.jpg" alt="??" style="width: 260px;"></td>
		</tr>


		<br>
		<br>
		<tr>
			<td colspan="4" style="width: 50%; padding-top: 3%;"><font>2019년
					미국 뮤지컬 올해의 아티스트닷 수상자이자 그래미 어워드 수상자인 다닐 트리포노프는 클래식 음악계에서 솔리스트,광범위한
					협주곡 레퍼토리 소유자, 챔버와 성악 파트너 그리고 작곡가로 엄청난 영향력을 행사하고 있다. 완벽한 테크닉, 보기 드문
					민첩성과 깊이가 결합된 그의 공연은 끊임없는 감탄을 불러 일으킨다. 1991년 러시아에서 태어난 트리프노프는 5세에
					음악을 시작하여 타티아나 제릭만의 제자로 모스크바의 그네신 음악학교에 진학한 뒤 클리블랜드 음악원에서 세르게이 바비안과
					함께 피아노를 수학하였다. 그는 피아노연주를 넘어 작곡가로도 활동하고 있으며, 피아노와 챔버 앙상블 그리고 오케스트라를
					위한 음악들을 꾸준히 써오고 있다. 2013년 자신의 피아노 협주곡을 초연하였을 때 클래블랜드 플에인 딜러는 "보고도
					믿을 수 없다. 피아니스트 겸 작곡가인 다닐 프리포노프의 예술성은 그런것이다."라며 경의로움을 금치 못했다. 트리프노프는
					바르샤바 쇼팽 콩쿠르에서 3등상, 텔 아비브 루빈스타인 콩쿨에서 1등상 그리고 1등상과 전체 참가자 중 최고의 연주자에게
					수여되는 영예로운 그랑프리를 수상한 모스크바의 차이콥스키 콩쿠르까지 세계 3대 주요한 콩쿠르에서 메달을 수여받았다.
					2013년 그는 이탈리아 최고의 음악평론가들이 수여하는 권위있는 프랑코 아비아티 최우수 솔리스트 상을 수상했으며,
					2016년에는 그라모폰 올해의 예술가로 선정되었다. 도이치 그라모폰의 독보적인 아티스트인 트리포노프는
					리스트모음곡인'Transcedental'앨범으로 2018 그래미 어워드 최고의 솔로 악기 부문을 수상하며 상당한 영예를
					안았다. 런던 타임스가 언급했듯이, 그는 "우리 세대의 가장 놀라운 피아니스트" 이다.</font></td>
		</tr>
		<tr>
			<td colspan="4" style="text-align: right;">
				<h1 style="font-size: 40px; margin-right: 10%">다닐 트리포노프</h1>
				<button style="margin-right: 5%; font-size: 20px;">예매하기</button>
			</td>
		</tr>

	</table>

	<br>


	<hr>
	<br>
	<br>

	<div id="sub3-1"
		style="width: 500px; border-bottom: 1px solid black; text-align: center;">
		<h1 style="font-size: 50px;">아동</h1>
		<button style="position: relative; left: 190px; top: -10px;">전체
			보기</button>
	</div>
	<br>
	<br>
	<table style="width: 90%; margin: 0 auto">
		<tr style="text-align: center; margin: 0 auto;">
			<td><img class="scale" src="resources/images/봄날의 곰.jpg" alt="??"
				style="width: 170px;"></td>
			<td><img class="scale" src="resources/images/피터팬.jpg" alt="??"
				style="width: 170px;"></td>
			<td><img class="scale" src="resources/images/아기돼지 삼형제.jpg"
				alt="??" style="width: 170px;"></td>
			<td><img class="scale" src="resources/images/세종이도.jpg" alt="??"
				style="width: 170px;"></td>
			<td><img class="scale" src="resources/images/에스메의여름.jpg"
				alt="??" style="width: 170px;"></td>
		</tr>
		<tr style="text-align: center; margin: 0 auto;">
			<td style="width: 20%;">
				<h3>
					봄날의 곰<br>
					<가족뮤지컬>
				</h3> <br>
				<p style="font-size: 12px; width: 80%;">아무 말썽도 사건도 일어나지 않는 지루한
					교실에 느닷없이 들이닥친 날벼락, 아니, 봄날의 곰.</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
				<h3>
					피터팬<br>
					<가족뮤지컬>
				</h3> <br>
				<p style="font-size: 12px; width: 80%;">피터팬은 웬디라는 공상을 좋아하는 소녀가
					피터팬에게 이끌려 공상의 나라에 가서 요정과 동물들과 함께 신나는 모험을 한 후, 집으로 돌아오는 내용.</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
				<h3>
					아기돼지 삼형제<br>
					<가족뮤지컬>
				</h3> <br>
				<p style="font-size: 12px; width: 80%;">'아기 돼지 삼형제'는 조셈 제이콥스의
					동화로 전세계인의 많은 사랑을 받은 작품입니다.</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
				<h3>
					세종이도의꿈<br>
					<창작뮤지컬>
				</h3> <br>
				<p style="font-size: 12px; width: 80%;">예술과 과학을 사랑한 세종대왕의 이야기를
					우리의 전통 가락과 함께 아이들의 눈높이에 맞춘 재밌고 신나는 퓨전뮤지컬!</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
				<h3>
					에스메의 여름<br>
					<연극>
				</h3> <br>
				<p style="font-size: 12px; width: 80%;">에스메가 할아버지와 함께 보낸 일주일의 시간
					, 어떤 것들은 그대로이고 , 어떤 것들은 달라지는 여름이 다가옵니다.</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
		</tr>
		<tr style="text-align: center; margin: 0 auto;">
			<td style="padding-top: 20px; padding-bottom: 20px;"><img
				class="scale" src="resources/images/시간을 파는.jpg" alt="??"
				style="width: 170px;"></td>
			<td style="padding-top: 20px; padding-bottom: 20px;"><img
				class="scale" src="resources/images/세세세.jpg" alt="??"
				style="width: 170px;"></td>
			<td style="padding-top: 20px; padding-bottom: 20px;"><img
				class="scale" src="resources/images/넌 특별하단다.jpg" alt="??"
				style="width: 170px;"></td>
			<td style="padding-top: 20px; padding-bottom: 20px;"><img
				class="scale" src="resources/images/겨울왕국.jpg" alt="??"
				style="width: 170px;"></td>
			<td style="padding-top: 20px; padding-bottom: 20px;"><img
				class="scale" src="resources/images/인어공주.jpg" alt="??"
				style="width: 170px;"></td>
		</tr>
		<tr style="text-align: center; margin: 0 auto; padding-top: 100px;">
			<td style="width: 20%;">
				<h3>
					시간을 파는 상점<br>
					<연극>
				</h3>
				<p style="font-size: 12px; width: 80%;">
					청소년 권장도서의 베스트셀러! , 김선영작가의
					<시간을파는상점> , 연극으로 찾아오다! 
				</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
				<h3>
					네네네<br>
					<연극>
				</h3>
				<p style="font-size: 12px; width: 80%;">춤추는 첫잔,미스터리한 세눈박이 도깨비가
					기다리는 신비한 '네네네' 숲속으로 여러분을 초대합니다.</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
				<h3>
					넌 특별하단다<br>
					<뮤지컬>
				</h3>
				<p style="font-size: 12px; width: 80%;">우리 아이 스스로가 특별한 존재라는 것을
					깨닫게 해주는 단 하나의 뮤지컬!</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
				<h3>
					겨울왕국<br>
					<뮤지컬>
				</h3>
				<p style="font-size: 12px; width: 80%;">동화속 같은 아름다운 무대, 환상의
					겨울왕국으로 초대합니다!</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
			<td style="width: 20%;">
				<h3>
					인어공주<br>
					<뮤지컬>
				</h3>
				<p style="font-size: 12px; width: 80%;">시대를 초월한 명작! 안데르센의 아름다운
					이야기를 [인어공주] 가족뮤지컬로 만나요!</p>
				<button style="margin-left: 3%; margin-top: 4%; font-size: 10px;">예매하기</button>
			</td>
		</tr>
	</table>
	<br>
	<hr>
	<br>
	<br>
	<table style="width: 90%; margin: 0 auto;">
		<tr>
			<td style="text-align: center; width: 20%;"><i
				class="fas fa-credit-card" style="font-size: 90px;"></i> <br> <br>
				<p style="font-size: 20px; text-align: center;">제휴/할인카드</p></td>
			<td style="text-align: center; width: 20%;"><i
				class="fas fa-check-square" style="font-size: 90px;"></i> <br>
				<br>
				<p style="font-size: 20px; text-align: center;">이용안내</p></td>
			<td style="text-align: center; width: 20%;"><i
				class="fas fa-gift" style="font-size: 90px;"></i> <br> <br>
				<p style="font-size: 20px; text-align: center;">이벤트/쿠폰</p></td>
			<td style="text-align: center; width: 20%;"><i
				class="fas fa-question" style="font-size: 90px;"></i> <br> <br>
				<p style="font-size: 20px; text-align: center;">FAQ</p></td>
			<td style="text-align: center; width: 20%;"><i
				class="fas fa-robot" style="font-size: 90px;"></i> <br> <br>
				<p style="font-size: 20px;">MD#</p></td>
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