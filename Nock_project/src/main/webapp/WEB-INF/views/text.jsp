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
						<li><a href="#">뮤지컬넌버벌<br> 퍼포먼스</a></li>
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

   		<div align="center">
    	<h1 style="text-align: center; color: red; font-size: 60px; border-bottom: 1px solid black ;width: 400px;" >이용안내<select style="width: 20px; height: 20px;" autofocus>
      	<option ></option>
        <option value="이용안내"><a href="#">이용안내</a></option>
        <option value="이벤트/쿠폰"><a href="#">이벤트/쿠폰</a></option>
        <option value="FAQ"><a href="#">FAQ</a></option>
        <option value="MD#"><a href="#">MD#</a></option>
        <option value="제휴/할인카드"><a href="#">제휴/할인카드</a></option>
      </select></h1>
      </div>
	<br>
	<br>
	<table style="width: 80%; margin: 0 auto;">
		<tr>
			<td>
				<h2>제 1 조 (목적)</h2>
				<p>이 약관은 “고객”이 주식회사 위메프(이하 “회사”라 합니다)가 운영하는 “사이트”에서 제공되는 “서비스”를
					이용함에 있어 “회사”와 “고객”의 권리·의무 및 책임 사항을 규정함을 목적으로 합니다. ※ PC통신, 모바일, 무선
					등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>제 2 조 (용어의 정의)</h2>
				<p>이 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다.</p>
				<p>1. “사이트”란 Nock U want Ticket PC 웹사이트, 모바일 웹사이트, 모바일
					앱(APP/어플리케이션)을 비롯하여 “회사”가 운영하는 컴퓨터 등 정보통신설비를 이용한 “상품” 거래를 위한 모든 형태의
					가상의 영업장을 말합니다.</p>
				<p>2. “서비스”란 제4조 제1항에 따라 “회사”가 “고객”에게 제공하는 전자상거래 관련 서비스를 말합니다.</p>
				<p>3. “상품”이란 “판매회원”이 “사이트”에서 판매하는 재화 또는 용역을 말합니다.</p>
				<p>4. “고객”이란 이 약관에 따라 “서비스”를 이용하는 “구매회원” 및 “비회원”을 말합니다.</p>
				<p>5. “구매회원”이란 “사이트”에서 개인 명의로 회원 등록을 하고 이 약관에 따라 “서비스”를 이용하는
					“개인회원”(외국인등록번호를 소지한 국내 거주 외국인을 포함함, 이하 같음) 및 사업자 명의로 회원 등록을 하고 이
					약관에 따라 “서비스”를 이용하는 “사업자회원”을 말합니다.</p>
				<p>6. “비회원”이란 “사이트”에서 회원 등록을 하지 않고 이 약관에 따라 “서비스”를 이용하는 자를 말합니다.</p>
				<p>
					7. “판매회원”이란 “회사”와
					<Nock U want Ticket 판매이용약관>을 체결하고 “사이트”에서 상품을 판매하는 자를 말합니다.

				</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>제 3 조 (약관의 명시 및 개정)</h2>
				<p>① “회사”는 이 약관과 상호, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함),
					대표자의 성명, 사업자등록번호, 통신판매업신고번호, 연락처(전화번호, 전자우편주소 등) 등을 “고객”이 쉽게 알 수
					있도록 “사이트”의 초기화면에 게시합니다. 다만, 약관의 내용은 링크를 통하여 연결되는 별도의 화면에 게시할 수
					있습니다.</p>
				<p>②“회사”는 『전자상거래 등에서의 소비자보호에 관한 법률』(이하 “전자상거래법”이라 합니다), 『약관의
					규제등에 관한 법률』, 『전자문서 및 전자거래기본법』, 『전자서명법』, 『정보통신망 이용촉진 등에 관한 법률』,
					『방문판매등에 관한 법률』, 『소비자기본법』 등 관련 법령에 위배되지 않는 범위에서 이 약관을 개정할 수 있습니다.</p>
				<p>③“회사”가 이 약관을 개정하는 경우에는 그 적용일 7일 전부터 변경내용 및 적용일자를 명시하여 “사이트”의
					초기화면에 공지합니다. 다만, 약관의 변경 내용이 중대하거나 ”고객”에게 불리한 경우에는 그 적용일 30일 전에
					“고객”들에게 개별 통지함을 원칙으로 하되, 개별 통지가 어려운 경우에는 그 적용일자 30일 전부터 “사이트”의
					초기화면에 공지함으로써 개별 통지를 갈음할 수 있습니다.</p>
				<p>④ “구매회원”은 전항에 따라 변경되는 약관에 동의하지 않을 권리가 있으며, 변경된 약관에 동의하지 않을
					경우에는 “서비스” 이용을 중단하고 회원 탈퇴를 요청할 수 있습니다.</p>

			</td>
		</tr>
		<tr>
			<td>
				<h2>제 4 조 (서비스의 내용)</h2>
				<p>① “회사”가 이 약관에 따라 “고객”에게 제공하는 “서비스”는 다음 각 호와 같습니다.</p>
				<p>1. 상품 거래를 위한 오픈마켓 플랫폼 운영 서비스</p>
				<p>2. “사이트”의 개발 및 운영 서비스</p>
				<p>3. 상품 구매 관련 업무 지원 서비스</p>
				<p>4. 상품 정보 검색 서비스</p>
				<p>5. 기타 전자상거래와 관련하여 “회사”가 정하는 서비스</p>
				<p>② “회사”가 제공하는 “서비스”의 범위는 “사이트”에서 “판매회원”과 “고객”이 상품을 원활하게 거래할 수
					있도록 하는 것에 한정되며, “회사”는 ”판매회원”이 “사이트”에서 판매하는 상품에 관하여 일체의 책임을 지지 않습니다.</p>

			</td>
		</tr>
		<tr>
			<td>
				<h2>제 5 조 (대리 및 보증의 부인)</h2>
				<p>① “회사”는 관련 법령에 따라 “회사"가 책임을 부담하는 경우를 제외하고는 통신판매중개자로서 통신판매중개
					서비스의 제공을 위한 “사이트” 등의 운영 및 관리 책임만을 부담하고, “사이트”에서의 “판매회원”과 “고객” 간의
					상품의 거래와 관련하여 ”판매회원” 또는 “고객”을 대리하지 아니하며, ”판매회원”과 “고객” 간의 상품 거래에 관한
					일체의 책임은 해당 ”판매회원”과 “고객”이 직접 부담합니다.</p>
				<p>② “회사”는 관련 법령에 따라 “회사"가 책임을 부담하는 경우를 제외하고는 “사이트”에서의 ”판매회원”과
					“고객” 간의 상품 거래와 관련하여 거래당사자의 판매의사 또는 구매의사의 존부 및 진정성, 상품의 품질, 완전성,
					안정성, 적법성 및 타인의 권리에 대한 비침해성, ”판매회원”이 제공하거나 등록한 정보 및 자료의 진실성 또는 적법성
					등을 보증하지 아니하며, “판매회원”과 “고객” 간의 상품 거래에 관한 일체의 위험과 책임은 해당 ”판매회원”과
					“고객”이 직접 부담합니다.</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>제 6 조 (이용계약의 체결)</h2>
				<p>① 이 약관에 따른 “회사”와 “고객” 간의 이용계약(이하 “이용계약”이라 합니다)은 “서비스”를 이용하고자
					하는 자가 이 약관에 동의하고 “회사”가 정한 절차에 따라 “서비스”의 이용을 신청하면, “회사”가 이를 승낙한 때부터
					효력이 발생합니다.</p>
				<p>② “고객”이 회원가입을 원하는 경우에는 “회사”가 정한 절차에 따라 회원가입 신청서의 각 항목의 내용을
					기재한 후 이 약관에 동의한다는 의사를 표시하여야 합니다.</p>
				<p>③ “회사”는 전 2항의 신청이 다음 각 호의 어느 하나에 해당하는 경우에는 이에 대한 승낙을 거부 또는
					유보하거나, 이미 한 승낙을 철회 또는 취소할 수 있습니다.</p>
				<p>&nbsp&nbsp 1. 신청 시 “회사”가 정한 절차에 따르지 않은 경우</p>
				<p>&nbsp&nbsp 2. 신청 시 필수 기재사항을 기재하지 않거나 허위로 기재(타인의 명의를 도용하거나 실명을
					기재하지 않은 경우 등을 포함함)한 경우</p>
				<p>&nbsp&nbsp 3. 이전에 이 약관 기타 계약이나 관련 법령 위반 등을 이유로 “회사”에 의하여
					“구매회원” 자격을 상실하거나 이용계약이 해지된 자가 재신청을 하는 경우</p>
				<p>&nbsp&nbsp 4. 이미 등록된 회원과 성명 및 생년월일(“개인회원”의 경우)이나 상호 및
					사업자등록번호(“사업자회원”의 경우)가 일치하는 경우. 단, “개인회원”의 경우 성명 및 생년월일이 일치하나 다른 방법을
					통하여 동일인이 아님을 입증한 경우에는 그러하지 아니합니다.</p>
				<p>&nbsp&nbsp 5. “개인회원” 신청 시, 만 14세 미만으로서 부모 등 법정대리인의 동의를 얻지 아니한
					경우</p>
				<p>&nbsp&nbsp 6. “사업자회원” 신청 시, 신청일 현재 정상적인 영업활동을 하고 있지 않은 경우</p>
				<p>&nbsp&nbsp 7. “회사”의 서비스 제공에 필요한 설비가 부족하거나 기술상 어려움이 있는 경우</p>
				<p>&nbsp&nbsp 8. 기타 이 약관에 위배되거나 위법 또는 부당한 신청으로 확인된 경우 또는 “회사”가
					합리적인 이유에 근거하여 그러한 신청으로 판단하는 경우</p>
				<p>④ “회사”는 “구매회원”이 제공한 정보의 정확성을 확인하기 위하여 관련 법령이 허용하는 범위 내에서
					증빙자료의 제공을 요청할 수 있습니다. “구매회원”이 회사가 요청하는 자료를 제공하지 않거나 허위의 자료를 제공하는
					경우, 회사는 “구매회원”의 회원자격을 박탈하거나 기타 “서비스”의 전부 또는 일부의 제공을 중단할 수 있으며,
					”구매회원”은 이로 인하여 발생한 손해에 대하여 “회사”에게 책임을 물을 수 없습니다.</p>
				<p>⑤ “구매회원”은 등록된 정보가 변경된 경우, 지체 없이 “사이트”에서 직접 정보를 수정하거나 전자우편 등의
					방법으로 그 변경 사실을 “회사”에게 알려야 합니다. “구매회원”이 등록된 정보를 변경하고자 하는 경우, “회사”는
					정보의 보호를 위해 본인확인 절차 등을 거치도록 할 수 있습니다.</p>
			</td>
		</tr>
		<tr>
			<td>
				<h2>제 7 조 (“구매회원”의 ID및 비밀번호에 대한 관리 책임)</h2>
				<p>① “구매회원”은 자신의 ID 및 비밀번호에 대한 관리 책임을 부담하며, 어떠한 경우에도 자신의 ID 및
					비밀번호를 제3자에게 유출, 누설 또는 이용하게 하거나, 타인의 ID 및 비밀번호 등을 이용하여서는 안 됩니다.</p>
				<p>② “회사”는 관련 법령에 따라 “회사”가 책임을 부담하거나 “회사”의 고의 또는 과실에 의한 경우가 아닌 한
					“구매회원”의 전항의 금지사항을 위반함에 따른 ID 및 비밀번호의 유출, 공유, 양도, 대여, 도용, 관리상 부주의
					등으로 인한 손해에 대하여 책임을 지지 않습니다.</p>
				<p>③ “구매회원”은 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우 즉시 이를
					“회사”에게 통보하고 “회사”의 안내가 있는 경우에는 그에 따라야 합니다. “회사”는 ”구매회원”이 본 항의 통보 의무를
					태만히 하여 발생한 손해에 대하여 책임을 지지 않습니다.</p>

			</td>
		</tr>
		<tr>
			<td>
				<h2>제 8 조 (구매계약의 체결)</h2>
				<p>① “고객”이 “상품”의 판매 조건에 응하여 청약의 의사를 표시하고 “판매회원”이 그에 대하여 승낙의
					의사표시를 함으로써 “상품”에 대한 구매계약이 체결됩니다. 단, 구매계약을 체결한 “고객”이 미성년자인 경우에는
					법정대리인의 동의가 없는 한 그 “고객” 또는 법정대리인이 구매계약을 취소할 수 있습니다.</p>
				<p>② ”회사”는 “고객”이 구매대금을 결제할 수 있는 방법을 제공합니다.</p>
				<p>③ 구매계약을 체결한 “고객”은 구매대금의 결제 및 “상품”의 배송과 관련하여 자신이 입력한 정보에 대한 책임
					및 불이익을 전적으로 부담하여야 합니다.</p>
				<p>③ 구매계약을 체결한 “고객”은 구매대금의 결제 및 “상품”의 배송과 관련하여 자신이 입력한 정보에 대한 책임
					및 불이익을 전적으로 부담하여야 합니다.</p>
				<p>⑤ “회사”는 “고객”이 구매계약 체결 내용을 확인할 수 있도록 조치하며, 구매계약의 취소 방법 및 절차를
					안내합니다.</p>
				<p>⑥ “회사”는 구매계약에 대하여 다음 각 호 중 하나를 확인할 수 있으며, 이에 대한 확인이 완료될 때까지
					거래진행을 중지하거나, 확인이 불가한 거래는 취소할 수 있습니다.</p>
				<p>&nbsp &nbsp 1. “고객”이 구매대금 결제 시 사용한 결제수단에 대한 정당한 사용권한 보유하였는지
					여부</p>
				<p>&nbsp &nbsp 2. “고객”이 “상품”의 구매 자격을 충족하는지 여부</p>
				<p>&nbsp &nbsp 3. 제23조의 금지 행위에 해당하는지 여부</p>

			</td>
		</tr>
		<tr>
			<td>
				<h2>제 9 조 (구매안전서비스의 이용)</h2>
				<p>① “회사”는 “판매회원”과 “고객” 간에 안전한 거래가 이루어질 수 있도록 구매안전서비스(선지급식 통신판매에
					있어서 고객이 지불한 구매대금을 예치하였다가 배송이 완료되면 “회사”는 사전에 합의된 판매수수료를 공제한 나머지 금액을
					“판매회원”에게 지급하거나, 배송이 완료되지 않거나 “상품”이 환불되는 등의 경우 고객이 지불한 구매대금을 다시 돌려주는
					서비스)를 제공합니다.</p>
				<p>② “회사”는 “사이트”에서 판매되는 모든 “상품”에 구매안전서비스를 적용합니다.</p>
				<p>③ “회사”는 구매안전서비스를 통하여 “고객” 또는 판매회원의 권리와 의무를 대리하거나 대행하지 아니합니다.</p>

			</td>
		</tr>
		<tr>
			<td>
				<h2>제 10 조 (상품의 배송)</h2>
				<p>① “회사”는 “고객”의 구매대금 결제에 대한 확인 통지를 받은 날로부터 3영업일 이내에 “판매회원”에게
					배송에 필요한 조치를 취하도록 안내합니다.</p>
				<p>② “상품”의 배송과 관련하여 “고객”과 “판매회원”, 배송업체, 금융기관 등과 사이에 발생한 분쟁은 당사자들
					간의 해결함을 원칙으로 하며, 이와 관련하여 “회사”는 어떠한 책임도 부담하지 않습니다.</p>
				<p>③ “고객”가 상품을 배송 받은 날로부터 7일 이내에 교환 또는 반품에 대한 의사표시를 하지 않으면 “회사”는
					“고객”에게 해당 거래에 대하여 구매 확정의 의사가 있는 것으로 간주하고 배송상태를 자동으로 배송완료로 전환할 수
					있습니다. 단, “고객”은 실제로 “상품”을 수령하지 못한 경우 미수취신고를 할 수 있습니다.</p>

			</td>
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