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
				id="current" style="font-size: 30px;">창작뮤지컬 ▼</a>
				<ul>
					<li id="sub_m"><a href="#" style="font-size: 23px; display: block;">오리지널/내한</a></li>
					<li id="sub_m"><a href="#" style="font-size: 23px;">라이선스</a></li>
					<li id="sub_m"><a href="#" style="font-size: 23px;">뮤지컬 넌버벌 퍼포먼스</a></li>

				</ul></li>
		</ul>
	</div>
	</div>
	<br><br><br>
	<div class="" align="center"
		style="width: 90%; margin: 0 auto; background: silver; "
		id="vid">
		<video controls autoplay loop muted
			style="width: 67%; height: 35%; padding-top: 40px;">
			<source src="resources/images/videoplayback5.mp4" type="video/mp4">
		</video>
		<div align="right" style="width: 68%;">
			<h2>
				블랙메리포핀스
				<뮤지컬>
			</h2>
			<p>2020.10.27 (화) ~ 2020.12.31 (일)</p>
			<p>대학로 TOM 1관</p>
		</div>
	</div>

	<br>

	<br>
	<hr>
	<br>
	<br>
	<div align="center" style="margin: 0 auto; border-bottom: 1px solid black; width: 650px;">
		<h2 style="text-align: center;">
			현재 구입 가능한 티켓은 총 <u><font style="color: red;">8개</font></u> 입니다.
		</h2>
	</div>
	<br>
	<br>
	<br>
	<br>
	<table style="width: 90%; text-align: center; margin: 0 auto;">
		<tr>
			<td><img class="scale" src="resources/images/musical7.jpg" alt="??"
				style="width: 270px; height: 320px;"></td>
			<td><img class="scale" src="resources/images/musical8.jpg" alt="??"
				style="width: 270px; height: 320px;"></td>
			<td><img class="scale" src="resources/images/musical9.jpg" alt="??"
				style="width: 270px; height: 320px;"></td>
			<td><img class="scale" src="resources/images/musical10.jpg" alt="??"
				style="width: 270px; height: 320px;"></td>

		</tr>
		<tr>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">뮤지컬 〈블랙메리포핀스〉</h2>
				<p style="width: 80%;">
					대한민국 대표 심리 추리스릴러! 뮤지컬
					<블랙메리포핀스>4년만의 귀환! 
				</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">뮤지컬 [시데레우스]</h2>
				<p style="width: 80%;">시대의 벽에 막혀 말할 수 없던 진실을 연구한 두학자, 칼릴레오와 케플러의
					노래!</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">
					뮤지컬
					<머더 발라드>
				</h2>
				<p style="width: 80%;">
					올여름 최고 기대작! 4년 만에 돌아온 뮤지컬
					<머더발라드>
				</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2 style="font-size: 25px; text-align: center;">뮤지컬 〈김종욱찾기〉</h2>
				<p style="width: 80%;">썸은 이제 그만! 폴링 인럽~ 사랑에 빠지고 싶은 솔로라면! 좀더 가까워
					지고 싶어! 두근두근 아직 연애가 서툰 초보커플이라면! 김종욱찾기!</p>
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
					<h2 style="text-align: left;">1위) 블랙메리포핀스</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 70%;"><p>잘빠진 소극장
						창작뮤지컬'블랙메리포핀스'관객들을 사로잡는 무대였습니다.</p></td>
			</tr>

			<tr>
				<td
					style="text-align: center; width: 20%; border-bottom: 1px solid silver;">
					<h2 style="text-align: left;">2위)시데레우스</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star checked"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver;"><p>무대,조명,영상의
						황홀한 삼위일체가 돋보였습니다!</p></td>
			</tr>
			<tr>
				<td
					style="text-align: center; width: 20%; border-bottom: 1px solid silver;">
					<h2 style="text-align: left;">3위) 머더 발라드</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver;"><p>그동안 받았던
						야광봉들과 별다를바 없겠지 싶었는데 티켓받고 야광봉 받으러가서 무척 당황했어요 이건 거의
						무기수준이잖아요ㅋㅋㅋㅋㅋㅋㅋㅋㅋ 근데 컷콜에서 객석을보니까 이쁘더라고요~ 머발덕분에 온갖 야광봉들을 모으는 기분이에요ㅋ</p></td>
			</tr>

			<tr>
				<td
					style="text-align: center; width: 20%; border-bottom: 1px solid silver;">
					<h2 style="text-align: left;">4위)김종욱 찾기</h2> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star"></span> <span
					class="fa fa-star"></span> <span class="fa fa-star checked"></span><button style="margin-left: 10px;">한줄평 보기</button>
				</td>
				<td style="border-bottom: 1px solid silver; width: 70%;"><p>뮤지컬 김종욱찾기
						영화로 보았는데 뮤지컬로 보니 감동이 더 해지네요 멀티맨으로 나오는 문준혁배우의 연기는 정말 좋았어요 관객을 압도하고
						변신하는 연기를 너무 감칠맛 나게 잘 하셔서 지루하지 않고 공연을 봤어요 남은 공연도 롱런 하시고 힘들실텥데 하루 3번
						공연하시는 모습에 감동 했여요</p></td>
			</tr>


		</tbody>

	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<table style="width: 90%; text-align: center; margin: 0 auto;">
		<tr>
			<td><img src="resources/images/musical11.jpg" alt="??" class="scale"
				style="width: 270px; height: 320px;"></td>
			<td><img src="resources/images/musical12.jpg" alt="??" class="scale"
				style="width: 270px; height: 320px;"></td>
			<td><img src="resources/images/musical13.jpg" alt="??" class="scale"
				style="width: 270px; height: 320px;"></td>
			<td><img src="resources/images/musical14.jpg" alt="??" class="scale"
				style="width: 270px; height: 320px;"></td>
		</tr>
		<tr>
			<td style="width: 25%;">
				<h2
					style="font-size: 20px; text-align: center; display: inline-block; margin-right: 3%;">
					뮤지컬
					<작은 아씨들>
				</h2>
				<button style="font-size: 10px;">후기보기</button>
				<p style="width: 80%;">휴먼 감동 드라마 - 사랑스럽고 개성 넘치는 네 자매의 성장 이야기!</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2
					style="font-size: 20px; text-align: center; display: inline-block; margin-right: 3%;">락뮤지컬
					[프리즌]</h2>
				<button style="font-size: 10px;">후기보기</button>
				<p style="width: 80%;">컬투 정찬우가 만든 화제작 락 뮤지컬 프리즌! 10주년을 맞아 프리즌으로
					돌아오다!</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2
					style="font-size: 20px; text-align: center; display: inline-block; margin-right: 3%;">뮤지컬<호프>
					</h2>
				<button style="font-size: 10px;">후기보기</button>
				<p style="width: 80%;">너의 이야기로 채워. 빛날거야, 에바 호프.</p>
				<button
					style="width: 65%; margin-top: 2%; display: inline-block; margin-right: 3%;">예매하기</button>
			</td>
			<td style="width: 25%;">
				<h2
					style="font-size: 20px; text-align: center; display: inline-block; margin-right: 3%;">뮤지컬
					우리들의 사랑</h2>
				<button style="font-size: 10px;">후기보기</button>
				<p style="width: 80%;">삶을 음악으로 채운 그들, 대중 음악의 3대 전설들의 노래를 다시
					만난다...</p>
				<button style="width: 65%; margin-top: 2%;">예매하기</button>
			</td>
		</tr>
	</table>

	<br>
	<br>
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