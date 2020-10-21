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
#div2 ul li {
	float: right;
	list-style-type: none;
	padding-left: 0px;
	border-left: 1px solid black;
	padding: 0px 10px 0px 10px;
}
#div2{
	width: 400px;
	height: 100px;
	margin:  0 auto;
	position: relative;
	top: 30px;
	right: 55px;
	
}
#div2 ul li:last-child {
	border-left: none;
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

#btng ,#btn1 , #btn2{
	margin: 0 auto;
	text-align: center;
}
#btn1{
	margin-right: -7px;
}
#btn1,#btn2{
	padding: 6px 50px;
	font-size: 20px;
}
#btng button{
	background: white;
	border: 1px solid black;
}
#btng button:hover{
	background: skyblue;
}

#div1,#f1,#i1,#i2{
	margin: 0 auto;
	text-align: center;
	background-color: lightsilver;
	margin-top: 10px;	
}

#i1,#i2{
	padding: 7px 150px; 
	text-align: center;
	border: 1px solid black;
}
#btn3{
	border: 1px solid black;
	background-color: red;
	padding: 4px 60px;
	font-size: 20px;
	color: white;
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
						<li><a href="#">뮤지컬넌버벌 <br>퍼포먼스</a></li>
						<li><a href="#">패키지공연</a></li>
					</ul></li>
				<li><a href="#">콘서트</a>
					<ul class="sub">
						<li><a href="#">발라드</a></li>
						<li><a href="#">내한공연</a></li>
						<li><a href="#">락/메탈</a></li>
						<li><a href="#">패스티벌</a></li>
						<li><a href="#">랩/힙합</a></li>
						<li><a href="#">팬클럽</a></li>
						<li><a href="#">재즈/소울</a></li>
						<li><a href="#">인디</a></li>
						<li><a href="#">디너쇼</a></li>
						<li><a href="#">토크/강연</a></li>
						<li><a href="#">포크/트로트</a></li>
					</ul></li>
				<li><a href="#">연극</a></li>
				<li><a href="#">클래식/무용</a>
					<ul class="sub">
						<li><a href="#">클래식</a></li>
						<li><a href="#">오페라</a></li>
						<li><a href="#">발레/무용</a></li>
						<li><a href="#">국악</a></li>
					</ul></li>
				<li><a href="#">아동</a>
					<ul class="sub">
						<li><a href="#">기타</a></li>
						<li><a href="#">뮤지컬</a></li>
						<li><a href="#">연극</a></li>
					</ul></li>
				<li><a href="#" style="font-size: 20px; color: black;">이벤트</a></li>
				<li><a href="#"
					style="font-size: 20px; padding: 0; margin: 0; color: black;">랭킹</a></li>
				<i class="fas fa-home"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-map-marker-alt"></i>

			</ul>
		</nav>
	</div>
	
	<div style="width: 40%; height: 50%; border: 1px solid black; background-color:silver; margin: 0 auto;">
		<br><br>
		<h2 style="text-align: center; font-size: 40px; text-decoration: underline;">비회원 로그인</h2>
		<div id="btng" style="margin-bottom: 40px;">
			<button id="btn1">회원 로그인</button>
			<button id="btn2">비회원 로그인</button>
		</div>
		
		<div id="div1">
		<form id="f1" action="" method="post" style="margin-bottom: 50px;">
		<input id="i1" type="text" name="id" placeholder="예매번호를 입력해주세요." ><br>
		<input id="i2" type="password" name="pw" placeholder="예매 비밀번호를 입력해주세요.">
		</form>
		<button id="btn3">로그인</button>
		</div>
		<div id="div2" style="font-size: 14px;">
		<ul>
			<li><a href="#">회원가입</a></li>
			<li><a href="#">예매 비밀번호 찾기</a></li>
			<li><a href="#">예매 번호 찾기</a></li>
			
		</ul>
		
	</div>
		
		
	</div>
	
	<br>
	<br>
	<hr>
	<br>
	<table style="width: 90%; margin: 0 auto;">
	<tr>
	<td  style=" text-align: center ; width: 20%;">
	<i class="fas fa-credit-card" style="font-size: 90px;"></i>
	<br>
	<br>
	<p style="font-size: 20px; text-align: center;">제휴/할인카드</p>
	</td>
	<td  style=" text-align: center;  width: 20%;">
	<i class="fas fa-check-square" style="font-size: 90px;"></i>
	<br>
	<br>
	<p style="font-size: 20px; text-align: center;">이용안내</p>
	</td>
	<td  style=" text-align: center;  width: 20%;">
	<i class="fas fa-gift" style="font-size: 90px;"></i>
	<br>
	<br>
	<p style="font-size: 20px; text-align: center;">이벤트/쿠폰</p>
	</td>
	<td  style=" text-align: center;  width: 20%;">
	<i class="fas fa-question" style="font-size: 90px;"></i>
	<br>
	<br>
	<p style="font-size: 20px; text-align: center;">FAQ</p>
	</td>
	<td style=" text-align: center;  width: 20%;">
	<i class="fas fa-robot" style="font-size: 90px;"></i>
	<br>
	<br>
	<p style="font-size: 20px;">MD#</p>
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