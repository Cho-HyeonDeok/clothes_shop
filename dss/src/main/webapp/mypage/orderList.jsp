<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <script
      src="https://kit.fontawesome.com/a91a455094.js"
      crossorigin="anonymous"
    ></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DaeSinsa Mypage</title>
    <link rel="stylesheet" href="css/orderList.css">
    <!-- <link rel="stylesheet" href="rest.css"> -->
    <jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
    <!--mypage전체 클래스 이름-->
    <div class="mypage_Content">
    <!--mypage상단-->
    <div class="mypage_Total">
    <div class="a2"><span class="mypage_Head1" ><a href="Mypage.html" class="fw">My&nbsp;page</a>
    </span></div>
    <!--mypage 탑헤더-->
        <div class="mypage_Head2">
        <div><a href="mypage_Jang.html" class="fw a topmenu">장바구니</a></div>
        <div><a href="mypage_Go.html" class="fw a topmenu">고객센터</a></div>
        <div><a href="mypage_Out.html" class="fw a topmenu">로그아웃</a></div>
    </div>
    </div>
    <!--mypage 프로필 div-->
    <div class="mypage_Down">
    <!--mypage 프로필 사진-->
    <div style="display: flex;">
    <div class="mypage_Photo"><img src="etc.png"></div>
    <!--닉네임-->
    <div class="mypage_Nick">
    <span class="fw fb" >Nickname</span>
        
    <!--회원정보 변경란-->
    <a href="mypage_Change.html" class="fw">회원정보변경</a><br>

        <!--레벨, 가입일 -->
        <div class="mypage_Member">
            <em class="fw">Lv3. 멤버</em>
            <span class="fw">가입일: 2023. 08. 24</span>
            <!--회원 알림-->
            <p class="fw">
                이혜진님 다음 등급인 브론즈까지 10000점 남았습니다.
            <a href="mypage_Nice.html" class="fw">등급혜택></a>
            </p>
        </div>


    <div class="mypage_Hdd" style="display: flex;">
        <div class="j">
        <img src="D.jpg">
        <p class="fw">적립금></p>
        <p class="fw">3,132</p>       
</div>

    <div class="j">
        <img src="P.jpg">
    <p class="fw">포인트></p>
    <p class="fw">2100</p>       
</div>

    <div class="j">
        <img src="C.jpg">
    <p class="fw">쿠폰</p>
    <p class="fw">3132</p>       
</div>

    <div class="j">
        <img src="R.jpg">
    <p ><a href="mypage_Review.html"class="fw">후기작성></a></p>
    <p class="fw">2</p>       
</div>


</div>
</div>
</div>
</div>
</div>
<nav class="mypage_Aside">
<span class="mypage_Conn">바로접속ON</span>
<div class="mypage_Shopping">
  <h3>나의 쇼핑 활동</h3>
    <a href="Order.html" class="mypage_Shop" ><span>주문 내역 조회</span></a>
    <a href="#mypage_No2" class="mypage_Shop"><span>구매 후기</span></a>
    <a href="#mypage_No3" class="mypage_Shop"><span>상품 문의</span></a>
    <a href="#mypage_No4" class="mypage_Shop"><span>1:1문의</span></a>
    <a href="#mypage_No5" class="mypage_Shop"><span>최근 본 상품</span></a>
    <a href="#mypage_No6" class="mypage_Shop"><span>좋아요</span></a>
    <a href="#mypage_No7" class="mypage_Shop"><span>나의 맞춤 정보</span></a>
    <a href="#mypage_No8" class="mypage_Shop"><span>회원 혜택</span></a>
</div>
<div class="mypage_Community">
    <h3>커뮤니티</h3>
    <a href="mypage_Board1" class="mypage_Board2"><span>게시물/ 댓글</span></a>
</div>
</nav>
<section class="mypage_Mypage"> 
    <div class="mypage_Jo">
        <div class="mypage_Title1">
            <div class="mypage_Title2">
            <h2 class="T1">주문 내역 조회</h2>
            </div>
            <ul class="mypage_T2">
                <li class="mypage_margn_left"><a href="mypage_Pay.html">입금/결제</a></li>
                <li class="mypage_margn_left"><a href="mypage_Box1.html">배송중/픽업대기</a></li>
                <li class="mypage_margn_left"><a href="mypage_Box2.html">배송완료/픽업완료</a></li>
                <li class="mypage_margn_left"><a href="mypage_Check.html">구매확정</a></li>
                <li class="mypage_margn_left"><a href="mypage_Change1.html">교환</a></li>
                <li class="mypage_margn_left"><a href="mypage_Change2.html">교환완료</a></li>
                <li class="mypage_margn_left"><a href="mypage_Rechange1.html">환불</a></li>
                <li class="mypage_margn_left"><a href="mypage_Rechange2.html">환불완료</a></li>
            </ul>
        </div>
        <hr>
        <br>
        <div class="Order_text">
            <span><i class="fa-solid fa-circle-info"></i> 픽업대기, 픽업완료는 무탠픽업(매장픽업) 주문에만 해당됩니다.</span><br>
            <span><i class="fa-solid fa-circle-info"></i> 동일한 주문번호라도 2개 이상의 브랜드에서 주문하신 경우 출고지 주소가 달라 각각 출고됩니다. (택배 박스를 2개 이상 수령 가능)</span><br>
            <span><i class="fa-solid fa-circle-info"></i> 출고 완료 직후 교환 / 환불 요청을 하더라도 상품을 수령하신 후 택배 업체를 통해 보내주셔야 처리 가능합니다.</span><br>
        </div>


        <br>
        <div class="mypage_Qusetion">
            <a href="mypage_Q.html">
                <i class="fa-solid fa-dog">
               
            교환/ 환불이 궁금하신가요?</i></a>
            </div>
            <br>
            <table class="mypage_TableCol"> 
                <thead>
                <tr>
                    <th class="mypage_B">상품정보</th>
                    <th class="mypage_B">주문일자</th>
                    <th class="mypage_B">주문번호</th>
                    <th class="mypage_B">주문금액(수량)</th>
                    <th class="mypage_B">주문상태</th>
                </tr>
                </thead>
                <tbody style=" text-align:center;  overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
                	<c:forEach items="${orderList}" var="orderVO">
						<tr>
							<td > ${orderVO.pname}</td>
							<td> <fmt:formatDate value="${orderVO.indate}" type="date"/></td>
							<td> ${orderVO.oseq}</td>
							<td> <fmt:formatNumber value="${orderVO.price2}" type="currency"/> </td>
							<td> <a href="DssServlet?command=order_detail&oseq=${orderVO.oseq}"> 조회 </a> </td>
						</tr>
					</c:forEach>
                </tbody>
            </table>
            
            <p class="mypage_Buy">
                <!-- cwhen 아무것도 없을때 -->
                <span>최근 구매 내역이 없습니다.</span>
            </p>
        <br><br>
        <div class="Order_num">
        <a href="Order1.html"><i class="fa-solid fa-1"></i></a>&nbsp;&nbsp;
        <a href="Order2.html"><i class="fa-solid fa-2"></i></a>&nbsp;&nbsp;
        <a href="Order3.html"><i class="fa-solid fa-3"></i></a>
    </div>
        <br><br>
                 
    </div>

    <div class="Order_TaxbaeText">
        <header class="Order_TaxbaeText_Header">
            <h3><i class="fa-solid fa-boxes-stacked"></i> 택배 배송 <i class="fa-solid fa-boxes-stacked"></i></h3><br><br>
        
           </header>
           <div class="Order_TaxbaeText_section">
            <dl>
            <dt>주문</dt>
            <dd>
                <em>주문 접수</em>
                가상 계좌 주문이 완료되었습니다. 안내된 가상 계좌 번호로 입금이 가능합니다.
            </dd>
           <dd>
            <em>입금 확인</em>
            주문하신 상품의 결제가 완료되었습니다. 판매자가 주문을 확인하기 전 상태로, 옵션 교환 또는 주문 취소가 가능합니다.
           </dd>
           <dd>
            <em>출고 처리중</em>
            주문하신 상품을 택배 업체로 전달할 수 있게 준비(포장) 중입니다. 옵션 변경 또는 주문 취소가 불가능합니다.
           </dd>
           <dd>
            <em>출고 완료</em>
            상품을 배송하기 위한 준비(포장)가 완료되어 출고지에서 택배 업체로 전달되었습니다.
           </dd>
           <dd>
            <em>배송 시작</em>
            택배 업체가 출고지로부터 전달받은 상품을 고객님의 배송지 주소로 안전하게 배송 중입니다.
           </dd>
           <dd>
            <em>배송 완료</em>
            주문하신 상품이 배송지 주소에 잘 도착했습니다.
           </dd>
           <dd>
            <em>구매 확정</em>
            상품을 정상적으로 수령하여 구매를 확정했습니다. 구매 확정을 하지 않으시더라도 배송 완료 후 7일이 지나면 자동으로 확정됩니다. 구매 확정 시 교환 또는 환불 요청이 불가능합니다.
           </dd>
           <dd>
            <em>주문 취소</em>
            가상 계좌 주문이 입금 전 취소되었습니다. 주문 접수 후 2일 내에 입금하지 않으시면 자동으로 취소됩니다.
           </dd>
           <dd>
            <em>결제 오류카드</em>
            오류카드 한도 초과, 할부 개월 수 오류 등으로 결제되지 않은 상태입니다.
           </dd>
           
           <dt>교환</dt>
           <dd>
            <em>교환 입금 대기</em>
            교환 요청 시 교환 배송비 결제를 가상계좌로 선택한 후 배송비를 입금하기 전 상태입니다.
           </dd>
           <dd>
            <em>교환 회수 요청</em>
            교환 접수 후 회수 요청 택배사에 교환 상품 반품 수거를 요청한 상태입니다.
           </dd>
           <dd>
            <em>교환 회수 완료</em>
            택배사에서 교환 상품을 회수 완료한 상태입니다.
           </dd>
           <dd>
            <em>교환 전달 완료</em>
            택배사에서 교환 상품을 판매자에게 전달 완료한 상태입니다.
           </dd>
           <dd>
            <em>교환 처리 중</em>
            교환 신청한 상품이 판매자에게 도착하고 검수 후 교환 처리가 진행되는 상태입니다.
           </dd>
           <dd>
            <em>교환 완료</em>
            보내주신 교환 요청 상품의 검수가 정상적으로 완료되었습니다. 교환 상품의 주문 상태가 출고 처리 중으로 변경될 수 있습니다.
           </dd>
           <dd>
            <em>교환 주문</em>
            접수상품 교환 신청 접수가 완료되었습니다. 교환 재고는 확정된 것이 아니기에 수시로 변동되는 재고로 인한 품절 등의 사유로 발송이 어려울 수 있습니다.
           </dd>
           <dd>
            <em>교환 취소</em>
            상품 교환 신청이 취소된 상태입니다.
           </dd>
           <dt>환불</dt>
           <dd>
            <em>환불 입금</em>
            대기환불 요청 시 반품 배송비 결제를 가상계좌로 선택한 후 배송비를 입금하기 전 상태입니다.
           </dd>
           <dd>
            <em>환불 회수 요청</em>
            환불 접수 후 회수 요청 택배사에 환불 상품 반품 수거를 요청한 상태입니다.
           </dd>
           <dd>
            <em>환불 회수 완료</em>
            택배사에서 환불 상품을 회수 완료한 상태입니다.
           </dd>
           <dd>
            <em>환불 전달 완료</em>
            택배사에서 환불 상품을 판매자에게 전달 완료한 상태입니다.
           </dd>
           <dd>
            <em>환불 전달 중</em>
            환불 신청한 상품이 판매자에게 도착하고 검수 후 환불 처리가 진행되는 상태입니다.
           </dd>
           <dd>
           <em>환불 완료</em>
           환불 요청이 승인되었습니다. 결제 방법에 따라 영업일 기준 1~3일 이내 결제 취소 또는 계좌로 입금됩니다.
        </dd>
          </dl>
        </div>
</div>

    <br><br><br><br><br>

<!--전체 1-->
</section>
<!--footer 부분-->
    
</body>
</html>