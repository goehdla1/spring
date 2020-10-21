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
.menubar li ul {
	display: none; /* 평상시에는 서브메뉴가 안보이게 하기 */
	height: auto;
	padding: 0px;
	margin: 0px;
	position: absolute;
	z-index: 200;
}
.menubar ul ul a {
	display: block;
	padding: 5px 5px;
	text-align:  center;
	font-size: 30px;
	text-decoration: none;
	border :1px solid black;
	width: 340px;
	color: white;
	margin-left:320px;
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
	
	<div align="left" style="width: 100%;">
	<div class="menubar" align="center" style="border-bottom: 1px solid black; width: 700px;">
		<ul>
			<li id="sub_m"><span style="font-size: 50px;">클래식/무용 - </span><a href="#"
				id="current" style="font-size: 35px;">클래식/오페라 ▼</a>
				<ul>
					<li id="sub_m"><a href="#" style="font-size: 23px; display: block;">발레/무용</a></li>
					<li id="sub_m"><a href="#" style="font-size: 23px;">국악</a></li>

				</ul></li>
		</ul>
	</div>
	</div>
	<br>


	<table style="width: 90%; margin: 0 auto;">
		<tr>
			<td style="text-align: center;"><img src="resources/images/11.jpg"
				alt="??" style="width: 270px;"></td>
			<td style="text-align: center;"><img src="resources/images/13.jpg"
				alt="??" style="width: 270px;"></td>
			<td style="text-align: center;"><img src="resources/images/12.jpg"
				alt="??" style="width: 270px;"> <img src="resources/images/15.jpg"
				alt="??" style="width: 270px;"></td>
			<td style="text-align: center;"><img src="resources/images/14.jpg"
				alt="??" style="width: 260px;"></td>
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
				<h1 style="font-size: 40px; ">다닐 트리포노프
				<button style="width: 6%; margin-top: 2%;">예매하기</button></h1>
			</td>
		</tr>

	</table>

	<table style="width: 90%;">
		<thead>
			<tr>
				<th style="text-align: left;"><h1
						style="display: inline-block; margin-left: 3%;">
						관람자 후기
						<p style="color: red; display: inline-block;">Best</p>
						<리사이틀>
					</h1> <span class="fa fa-star"></span> <span class="fa fa-star"></span>
					<span class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span>
					<button>전체 후기보기</button></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><p style="width: 90%; float: left; margin-left: 4%;">피아노
						연주뿐 아니라 작곡과 편곡에도 능한 트리포노프는 이번 음악회의 세 번째 앙코르곡으로 바흐의 무반주 바이올린을 위한
						파르티타 중 '가보트'를 편곡 연주해 편곡자로서의 비범함도 선보였다. 아마 바흐가 이 피아노 편곡 연주를 들었다면
						이토록 소박한 가보트의 선율이 멋진 화성이 붙은 대담한 곡으로 바뀐 것에 감탄스러워했을지도 모르겠다.</p>
					</td>
			</tr>
		</tbody>
	</table>
	<br>
	<hr>
	<br>
	<br>

	<table style="width: 90%; margin: 0 auto;">
		<tr>
			<td style="text-align: center;"><img src="resources/images/opera01.jpg"
				alt="??" style="width: 290px; height: 360px;"></td>
			<td style="text-align: center;"><img src="resources/images/opera02.jpg"
				alt="??" style="width: 260px;"></td>
			<td style="text-align: center;"><img src="resources/images/opera03.jpg"
				alt="??" style="width: 270px;"> <img src="resources/images/opera04.jpg"
				alt="??" style="width: 270px;"></td>
			<td style="text-align: center;"><img src="resources/images/opera05.jpg"
				alt="??" style="width: 290px; height: 360px;"></td>
		</tr>


		<br>
		<br>
		<tr>
			<td colspan="4" style="width: 50%; padding-top: 3%;"><font>1800년
					6월 로마 , 성모마리아의 초상화를 그리는 화가 카바라도시는 자신을 찾아 성당으로 피신 온 친구 정치범으로 수배된 전
					로마공화국의 집정관 안젤로티를 숨겨준다. 그때, 성당으로 들어온 카바라도시의 연인이자 프리 마돈나인 토스카는 이것을 보고
					카바라도시가 바람을 피우는게 아닌가 의심한다. 합창단이 한참 연습 중인 성당에 갑자기 들이닥친 경시총감 스카르피아는
					도망자를 어디다 숨겼냐고 추궁하지만, 카바라도시는 입을 열지 않는다. 오래전부터 토스카에게 흑심을 품고 있던 스카르피아는
					토스카를 카바라도시에게서 떼어놓기 위해 그가 어떤 여자와 은밀한 관계라고 토스카에게 귀띔한다. 토스카가 절망 후
					뛰쳐나가자 스카르피아는 카바라도시를 범인 은닉 혐의로 체포하는데...</font></td>
		</tr>
		<tr>
			<td colspan="4" style="text-align: right;">
				<h1 style="font-size: 40px;">오페라-토스카
				<button style="width: 6%; margin-top: 2%;">예매하기</button></h1>
			</td>
		</tr>

	</table>

	<table style="width: 90%;">
		<thead>
			<tr>
				<th style="text-align: left;"><h1
						style="display: inline-block; margin-left: 3%;">
						관람자 후기
						<p style="color: red; display: inline-block;">Best</p>
						오페라
						<토스카>
					</h1> <span class="fa fa-star"></span> <span class="fa fa-star"></span>
					<span class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span>
					<button>전체 후기보기</button></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><p style="width: 90%; float: left; margin-left: 4%;">
						이번
						<토스카> 공연은 한국인으로서도 작은 체구의 임세경이 어떻게 아레나 디 베로나 같은 대형무대에서 각광받는
						디바로 등극할 수 있었는지에 대한 궁금증을 풀 수 있는 귀한 무대였다.
					</p>
					</td>
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