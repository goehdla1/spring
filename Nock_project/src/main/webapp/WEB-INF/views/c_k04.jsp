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
					크리스토퍼 내한공연（CHRISTOPHER LIVE IN SEOUL）
					<콘서트>
				</h1>
				<p style="text-align: left; padding-bottom: 50px;">2021.05.07 ~
					2021.05.09 | YES24 LIVE HALL(구,악스홀)</p>
			</td>
		</tr>
		<tr>
			<td><img alt="" src="/resources/images/c_f1-1.jpg"
				style="width: 600px; height: 900px;"></td>
			<td style="border: 1px solid black;">
				<div align="center">
					<h2 style="font-size: 24px;">날짜 선택</h2>
					<br>
					<jsp:include page="calender.jsp" />
					<h2 style="font-size: 24px;">관람 시간 / 좌석 선택</h2>
					<select style="width: 200px; height: 40px;" autofocus class="play"
						hidden="play">
						<option value="=== 관람 시간 ==="><a href="#"></a>=== 관람 시간
							===
						</option>
						<option value="시간"><a href="#">2021년 5월 7일(금) 오후 8시</a></option>
						<option value="시간"><a href="#">2021년 5월 8일(토) 오후 7시</a></option>
						<option value="시간"><a href="#">2021년 5월 9일(일) 오후 6시</a></option>
					</select> <select style="width: 200px; height: 40px;" autofocus>
						<option value="=== 좌석 선택 ==="><a href="#"></a>=== 좌석 선택
							===
						</option>

						<option value="s"><a href="#">스탠딩석</a></option>
						<option value="s"><a href="#">지정석</a></option>


					</select>
				</div>
				<div align="center">
					<br>
					<p style="font-size: 16px;">스탠딩석:77,000원 / 지정석:77,000원</p>
					<br>
					<p style="color: red; font-size: 18px;">적용 가능한 할인쿠폰,이벤트를
						선택해주세요.</p>
					<br> <br> <select style="width: 300px; height: 40px;"
						autofocus>
						<option value="할인쿠폰,이벤트"><a href="#">==할인쿠폰,이벤트==</a></option>
						<option value="- 장애인(1-3급) 30%할인(동반1인 포함) " disabled="disabled"><a
								href="#">- 장애인(1-3급) 30%할인(동반1인 포함) </a></option>
						<option value=" - 장애인(4-6급) 30%할인(본인에 한함) " disabled="disabled"><a
								href="#"> - 장애인(4-6급) 30%할인(본인에 한함) </a></option>
						<option value="- 국가유공자 30%할인(본인에 한함)" disabled="disabled"><a
								href="#"> - 국가유공자 30%할인(본인에 한함) </a></option>
						<option value="국가유공자 유족증, 의사자 유족증, 의상자 부상등급 3급 이하: 50%"
							disabled="disabled"><a href="#">[30%] -
								문화예술인예술인패스(본인), 문화릴레이(1인 2매) </a></option>
						<option value=" [50%]- 경로우대(만65세이상 본인) " disabled="disabled"><a
								href="#"> [50%] - 경로우대(만65세이상 본인) </a></option>
					</select>
				</div> <br> <br>
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
				<td>㈜프라이빗커브</td>
				<th scope="row">소비자상담</th>
				<td>02-563-0595</td>
			</tr>
			<tr style="border: 1px solid black;">
				<th scope="row">주연</th>
				<td>크리스토퍼</td>
				<th scope="row">관람등급</th>
				<td>미취학 아동 입장불가</td>
			</tr>
			<tr style="border: 1px solid black;">
				<th scope="row">공연시간</th>
				<td>총 70 분</td>
				<th scope="row">공연장소</th>
				<td>YES24 LIVE HALL(구,악스홀)</td>
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
			<td colspan="2"><img alt="" src="/resources/images/c_f1-2.jpg"
				style="width: 1050px; height: 700px;">
				<img alt="" src="/resources/images/c_f1-3.jpg"
				style="width: 1050px; height: 700px;"></td>
		</tr>
	</table>
	<br>
	<table
		style="margin: 0 auto; border: 1px solid black; border-spacing: 10px; width: 70%;">
		<tr style="border: 1px solid black;">
			<td colspan="2"><h1>유의사항</h1>
				<p>※ 본 공연은 가상계좌 입금 마감 시간이 예매 당일 23시 29분이오니,
					무통장 입금 선택 예매 시 착오 없으시기 바랍니다.</p>
				<p>※ 본 공연은 네이버 쿠폰이 적용되지 않습니다.</p>
				<p>※ 본 공연은 YES24공연에서 진행하는 할인쿠폰이벤트 대상에서 제외됩니다.</p>
				<p>※ 매수제한 : 공연별 1인 4매</p>
				<p>※ 일괄배송 : 2021년 4월 15일(목)</p>

				<h1>할인정보</h1>
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