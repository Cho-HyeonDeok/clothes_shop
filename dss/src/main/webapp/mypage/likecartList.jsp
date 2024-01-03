<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DaeSinsa Mypage</title>
<link rel="stylesheet" href="css/cartList.css">
<!-- <link rel="stylesheet" href="rest.css"> -->

<script src="mypage/cartList.js"></script>
<jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
	<form name="formm" method="post">
		<!--mypage전체 클래스 이름-->
		<div class="mypage_Content">
			<!--mypage상단-->
			<div class="mypage_Total">
				<div class="a2">
					<span class="mypage_Head1"> <a href="Mypage.html" class="fw">My&nbsp;page</a></span>
				</div>
				<!--mypage 탑헤더-->

			</div>
			<!--mypage 프로필 div-->
			<div class="mypage_Down">
				<!--mypage 프로필 사진-->
				<div style="display: flex;">
					<div class="mypage_Photo">
						<img src="img/etc.png">
					</div>
					<!--닉네임-->
					<div class="mypage_Nick">
						<span class="fw fb" style="font-size: 50px">${loginUser.name}</span>

						<!--회원정보 변경란-->
						<a href="mypage_Change.html" class="fw"
							style="font-size: 10px; color: #b2b2b2">회원정보변경</a><br>

						<!--레벨, 가입일 -->
						<div class="mypage_Member">
							<em class="fw">Lv3. 멤버</em> <span class="fw">가입일: 2023.
								08. 24</span>
							<!--회원 알림-->
							<p class="fw">
								${loginUser.name}님 다음 등급인 브론즈까지 10000점 남았습니다. <a
									href="mypage_Nice.html" class="fw">등급혜택></a>
							</p>
						</div>


						<div class="mypage_Hdd" style="display: flex;">
							<div class="j">
								<img src="img/D.JPG">
								<p class="fw">적립금</p>
								<p class="fw">3,132</p>
							</div>

							<div class="j">
								<img src="img/P.JPG">
								<p class="fw">포인트</p>
								<p class="fw">2100</p>
							</div>

							<div class="j">
								<img src="img/C.JPG">
								<p class="fw">쿠폰</p>
								<p class="fw">3132</p>
							</div>

							<div class="j">
								<img src="img/R.JPG">
								<p>
									<a href="mypage_Review.html" class="fw">후기작성</a>
								</p>
								<p class="fw">2</p>
							</div>


						</div>
						<!---->
					</div>
				</div>
			</div>
		</div>
		<nav class="mypage_Aside" style="position: sticky; top: 0;">
			<span class="mypage_Conn">바로접속ON</span>
			<div class="mypage_Shopping">
				<h3>나의 쇼핑 활동</h3>
				<a href="#" class="mypage_Shop"><span
					onclick="location.href='DssServlet?command=order_list'">주문
						내역 조회</span></a> <a href="mypage_No2" class="mypage_Shop"><span>구매
						후기</span></a> <a href="mypage_No3" class="mypage_Shop"><span>상품 문의</span></a>
				<a href="DssServlet?command=qna_list" class="mypage_Shop"><span>1:1문의</span></a>
				<a href="mypage_No5" class="mypage_Shop"><span>최근 본 상품</span></a> <a
					href="mypage_No6" class="mypage_Shop"><span>좋아요</span></a>

			</div>
			<div class="mypage_Community">
				<h3>커뮤니티</h3>
				<a href="mypage_Board1" class="mypage_Board2"><span>게시물/
						댓글</span></a>
			</div>
		</nav>

		<section class="mypage_Mypage">

			<br>
			<!--좋아요-->
			<div class="mypage_Good" style="width: 90%;">
				<header class="mypage_Title">
					<h2 class="T1">좋아요</h2>
					<a href="#good">상품</a>

				</header>
				<hr>
				<div class="mypage_Good_Prd">
					<!-- 좋아요 - 상품 -->
					<!--c when 등록된 상품이 없을 때-->
					<table>
						<c:choose>
							<c:when test="${cartList.size() == 0}">
								<p class="mypage_D1">
									<!-- c when 아무것도 없을때 -->
									<span>좋아요에 담긴 상품이 없습니다.</span>
								</p>
							</c:when>
							<c:otherwise>
								<c:forEach items="${likecartList}" var="cartVO">
									<tr style="text-align: center">
										
										<!-- image 추가 필요 한데, likecartVO부터 뜯어 고쳐야함 (image가 없음) -->
										
										<td>
											<div
												style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100%">
												<a
													href="DssServlet?command=product_detail&pseq={$cartVO.pseq}">
													<span style="text-overflow: ellipsis;">${cartVO.pname}</span>
												</a>
											</div>
										</td>
										<td>${cartVO.quantity}</td>
										<td><fmt:formatNumber
												value="${cartVO.price2 * cartVO.quantity}" type="currency" /></td>
										<td><fmt:formatDate value="${cartVO.indate}" type="date" /></td>
										<td><input type="checkbox" name="cseq"
											value="${cartVO.cseq}"></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</table>

				</div>
				<!-- //좋아요 - 상품 -->

			</div>
		</section>

	</form>


</body>
</html>