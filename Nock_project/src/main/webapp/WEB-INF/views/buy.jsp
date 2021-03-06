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
	border-spacing: 25px;
	text-align: center;
}

.scale {
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transition: all 0.3s ease-in-out; /* 부드러운 모션을 위해 추가*/
}

.scale:hover {
	transform: scale(1.2);
	-webkit-transform: scale(1.2);
	-moz-transform: scale(1.2);
	-ms-transform: scale(1.2);
	-o-transform: scale(1.2);
}

.img {
	width: 325px;
	height: 280px;
	overflow: hidden
}

#btng, #btn1, #btn2 {
	margin: 0 auto;
	text-align: center;
}

#btn1 {
	margin-right: -7px;
}

#btn1, #btn2 {
	padding: 6px 50px;
	font-size: 25px;
}

#btng button {
	width: 150px;
	font-size: 15px;
	background: white;
	border: 1px solid black;
	background: white;
}

#btng button:hover {
	background: skyblue;
}

table {
	border: 1px solid black;
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
				<li class="fas fa-home"><a href="#"></a></li>
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
				<li><a href="#">아동</a></li>
				<li><a href="#" style="font-size: 20px; color: black;">이벤트</a></li>



			</ul>
		</nav>
	</div>




	<table
		style="margin: 0 auto; width: 65%; border: none; text-align: center;">
		<tr>
			<td colspan="2">
				<h1 style="text-align: left; color: black; font-size: 40px;">
				2020 세종 이도의 꿈
					<아동>
				</h1>
				<p style="text-align: left; padding-bottom: 50px;">2020.10.02 ~ 2020.11.29 | 경복궁아트홀</p>
			</td>
		</tr>
		<tr>
			<td><img alt="" src="/resources/images/c9-1.jpg"
				style="width: 600px; height: 900px;"></td>
			<td style="border: 1px solid black;">
				<div align="center">
					<h2 style="font-size: 24px;">날짜 선택</h2>
					<br>
					<jsp:include page="calender.jsp" />
					<h2 style="font-size: 24px;">관람 시간 / 좌석 선택</h2>
					<select style="width: 200px; height: 40px;" autofocus>
						<option value="=== 관람 시간 ==="><a href="#"></a>=== 관람 시간
							===
						</option>
						<option value="시간"><a href="#">17:00</a></option>
						<option value="시간"><a href="#">20:00</a></option>
					</select> <select style="width: 200px; height: 40px;" autofocus
						class="c_play" hidden="c_play">
						<option value="=== 관람 시간 ==="><a href="#"></a>=== 관람 시간
							===
						</option>
						<option value="시간"><a href="#">11:00</a></option>
						<option value="시간"><a href="#">13:00</a></option>
						<option value="시간"><a href="#">17:00</a></option>
					</select> <select style="width: 200px; height: 40px;" autofocus>
						<option value="=== 좌석 선택 ==="><a href="#"></a>=== 좌석 선택
							===
						</option>
						<option value="s"><a href="#">S석</a></option>
						<option value="a"><a href="#">A석</a></option>
						<option value="b"><a href="#">B석</a></option>
					</select>
				</div>
				<div align="center">
					<br>
					<p style="font-size: 16px;">S석 : 150,000 / A석 : 100,000 / B석 :
						80,000</p>
					<br>
					<p style="color: red; font-size: 18px;">적용 가능한 할인쿠폰,이벤트를
						선택해주세요.</p>
					<br>
					<div id="btng">
						<button id="btn1">회원</button>
						<button id="btn2">비회원</button>
					</div>
					<br> <select style="width: 300px; height: 40px;" autofocus>
						<option value="회원특가 50% 할인"><a href="#">회원특가 50% 할인</a></option>
						<option value="회원특가 30% 할인"><a href="#">회원특가 30% 할인</a></option>
						<option value="초대권"><a href="#">초대권</a></option>
						<option value="5000원 할인권"><a href="#">5000원 할인권</a></option>
						<option value="3000원 할인권"><a href="#">3000원 할인권</a></option>
					</select> <br> <select style="width: 300px; height: 40px;" autofocus
						class="nm_sale" hidden="nm_sale">
						<option value="회원특가 50% 할인"><a href="#">회원특가 50% 할인</a></option>
						<option value="회원특가 30% 할인"><a href="#">회원특가 30% 할인</a></option>
						<option value="초대권"><a href="#">초대권</a></option>
						<option value="5000원 할인권"><a href="#">5000원 할인권</a></option>
						<option value="3000원 할인권"><a href="#">3000원 할인권</a></option>
					</select>
				</div> <br>
			<br>
				<div align="center" style="margin-bottom: 50px;">
					<button
						style="width: 250px; color: white; background: red; padding: 10px; font-size: 20px;">예약하기</button>
				</div>

			</td>
		</tr>

	</table>
	<h1 style="text-align: center;">상품 정보</h1>
	<table
		style="text-align: center; margin: 0 auto; border: 1px solid black; width: 70%;">

		<tbody>
			<tr style="border: 1px solid black;">
				<th scope="row">주최/기획</th>
				<td>SKY 극단</td>
				<th scope="row">소비자상담</th>
				<td>1522-5804</td>
			</tr>
			<tr style="border: 1px solid black;">
				<th scope="row">주연</th>
				<td></td>
				<th scope="row">관람등급</th>
				<td>전체관람가</td>
			</tr>
			<tr style="border: 1px solid black;">
				<th scope="row">공연시간</th>
				<td>55분</td>
				<th scope="row">공연장소</th>
				<td>롯데백화점 대구점 7층 문화홀</td>
			</tr>
			<tr style="border: 1px solid black;">
				<th scope="row">취소/환불방법</th>
				<td colspan="3">

					<p style="text-align: center;">
						취소 일자에 따라 아래와 같이 취소수수료가 부과됩니다. 예매일보다 관람일 기준이 우선 적용되오니 유의해주시기 바랍니다.<br />
						단, 예매 후 7일 이내라도 취소시점이 공연일로부터 10일 이내라면 그에 해당하는 취소수수료가 부과됩니다.<br />
						(단, 상품에 따라 취소 정책이 달라질 수 있고, 각 공연이 공지하는 취소 정책이 우선 적용되므로, 예매 시 참고하시기
						바랍니다.)
					</p>

				</td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>
	<table style="border: none; width: 70%; margin: 0 auto;">

		<tr>
			<td colspan="2"><img alt="" src="/resources/images/c7-2.jpg"
				style="width: 1050px; height: 700px;"> <img alt=""
				src="/resources/images/c8-3.jpg"
				style="width: 1050px; height: 700px;"> <img alt=""
				src="/resources/images/c8-4.jpg"
				style="width: 1050px; height: 700px;"><img alt=""
				src="/resources/images/c8-5.jpg"
				style="width: 1050px; height: 700px;"><img alt=""
				src="/resources/images/c8-6.jpg"
				style="width: 1050px; height: 700px;"></td>
		</tr>
	</table>
	<br>
	<table
		style="margin: 0 auto; border: 1px solid black; border-spacing: 10px; width: 70%;">
		<tr style="border: 1px solid black;">
			<td colspan="2"><h1>유의사항</h1>
				<p>▷ 본 공연은 24개월 이상 관람가이며 24개월 미만 어린이는 증빙서류 (등본 또는 건강보험증) 지참 시 무료입장 가능 합니다.</p>
				<p>▷ 24개월 이상 관람객은 모두 1인 1티켓을 소지하셔야 합니다. (아이를 부모님이 안고 보시더라도 1인 1티켓을 소지하셔야 입장이 가능합니다.)</p>
				<p>▷ A~D열까지는 가변석으로 경사가 없는 보조의자입니다.(예매시 참고하시기 바랍니다)</p>
				<p>▷ 관람일 전일 취소의 경우에는 예매처의 환불규정에 따라 수수료가 부가되며 개인사정에 의한공연당일 취소, 변경, 환불은 절대 불가합니다.</p>
				<p>▷ 티켓배부 및 현장판매는 공연시간 30분부터, 공연장 입장은 20분전부터 가능합니다.</p>
				<p>▷ 쾌적한 공연장 환경을 위해 공연장내 생수를 제외한 음료나 음식물 반입 및 섭취는 불가 합니다.</p>
				<p>▷ 공연 시작 후 도착하시는 관객은 중간 입장이 제한되며 공연의 흐름에 따라 본래 좌석이 아닌지연 관객석으로 안내를 받으실 수 있습니다.</p>
				<p>▷ 공연 중 사전 허락되지 않은 사진, 동영상 촬영은 불가합니다. 다른 관람객의 소중한 공연관람을 위해 협조 해주시기 바랍니다.</p>
				<p>▷ 백화점 내 주차는 지상7층 주차장을 이용하시면 공연장으로 바로 연결됩니다.</p>
				<p>▷ 주차요금은 공연관람 고객에 한하여 3시간 무료주차입니다.</p>
				<h1>할인정보</h1>
				<p>※ 예매시 9,900원</p>
				
		</tr>
	</table>

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