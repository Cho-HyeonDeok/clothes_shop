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
					href="#" class="mypage_Shop" onclick="location.href='DssServlet?command=likecart_list'"><span>좋아요</span></a>

			</div>
			<div class="mypage_Community">
				<h3>커뮤니티</h3>
				<a href="mypage_Board1" class="mypage_Board2"><span>게시물/
						댓글</span></a>
			</div>
		</nav>

		<section class="mypage_Mypage">
			<div class="mypage_Jo" style="width: 90%;">
				<div class="mypage_Title1">
					<div class="mypage_Title2">
						<h2 class="T1">
							<a href="DssServlet?command=order_detail">주문 내역 조회</a>
						</h2>
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
					<tbody style="text-align: center;">
						<c:choose>
							<c:when test="${orderList.size()== 0 }">
								<p class="mypage_Buy">
									<!-- c when 아무것도 없을때 -->
									<span>최근 구매 내역이 없습니다.</span>
								</p>

							</c:when>
							<c:otherwise>
								<c:forEach items="${orderList}" var="orderVO">
									<tr>
										<td>${orderVO.pname}</td>
										<td><fmt:formatDate value="${orderVO.indate}" type="date" /></td>
										<td>${orderVO.oseq}</td>
										<td><fmt:formatNumber value="${orderVO.price2}"
												type="currency" /></td>
										<td><a
											href="DssServlet?command=order_detail&oseq=${orderVO.oseq}">
												조회 </a></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>

				<div class="mypage_Qusetion">
					<a href="mypage_Q.html"> <i class="fa-solid fa-dog"> 교환/
							환불이 궁금하신가요?</i></a>
				</div>

			</div>
			<a id="mypage_CartArea"></a>
			<div class="mypage_Cart" style="width: 90%;">
				<header class="mypage_Title">
					<h2 class="T1">장바구니</h2>
					<a href="#mypage_D1">택배 배송</a>
				</header>
				<!--장바구니.html로 이동-->
				<div class="mypage_CartSub">
					<div id="mypage_D">
						<div class="mypage_P">
							<div class="mypage_D2">
								<table class="mypage_Dt">
									<thead>
										<tr>

											<th class="mypage_Col">상품 정보</th>
											<th class="mypage_Col">상품 금액</th>
											<th class="mypage_Col">수량</th>
											<th class="mypage_Col">주문 금액</th>
											<th class="mypage_Col">배송형태/ 배송비</th>
											<th>&nbsp;</th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${cartList.size() == 0}">
												<p class="mypage_D1">
													<!-- c when 아무것도 없을때 -->
													<span>장바구니에 담긴 상품이 없습니다.</span>
												</p>
											</c:when>
											<c:otherwise>
												<c:forEach items="${cartList}" var="cartVO">
													<tr style="text-align: center">

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
																value="${cartVO.price2 * cartVO.quantity}"
																type="currency" /></td>
														<td><fmt:formatDate value="${cartVO.indate}"
																type="date" /></td>
														<td><input type="checkbox" name="cseq"
															value="${cartVO.cseq}"></td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>

							</div>
						</div>
						<div class="mypage_Button"
							style="display: flex; align-items: center; justify-content: center; margin-top: 2%; cursor: pointer">
							<div class="mypage_ButtonLeft">

								<div class="mypage_btn1" onclick="go_cart_delete()">선택 삭제</div>
							</div>
							<div>
								<div class="mypage_btn2" onclick="go_order_insert();">결제하기</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			</div>


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
								<c:forEach items="${cartList}" var="cartVO">
									<tr style="text-align: center">

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
					<p class="n-table-none">
						<span> 좋아하는 상품이 없습니다. <br> 상품을 추가해보세요.
						</span>
					</p>
				</div>
				<!-- //좋아요 - 상품 -->

			</div>

			<!--상품 문의-->
			<div class="mypage_PrdQ" style="width: 90%;">
				<header class="mypage_PrdQ_header">
					<h2 class="T1">상품문의</h2>
					<br> <br>
					<table class="mypage_PrdQ_p">
						<tr>
							<th class="mypage_ProQ_a">상품정보</th>
							<th class="mypage_ProQ_a">내용</th>
							<th class="mypage_ProQ_a">문의 유형</th>
							<th class="mypage_ProQ_a">작성일</th>
							<th class="mypage_ProQ_a">처리 상태</th>
						</tr>
					</table>
				</header>
				<div class="mypage_PrdQ_comment1">
					<!-- 문의 영역 -->
					<!--c when  등록된 상품이 없을 때-->
					<p class="mypage_PrdQ_comment2">
						<span>등록된 상품문의가 없습니다.</span>
					</p>
				</div>
			</div>

			<div class="mypage_1_1" style="width: 90%;">
				<header class="mypage_1_1_header">
					<h2 class="T1">1:1문의</h2>
				</header>
				<br> <br>

				<table class="mypage_List">

					<tr>
						<th class="mypage_List_a">문의 유형</th>
						<th class="mypage_List_a">내용</th>
						<th class="mypage_List_a">주문번호</th>
						<th class="mypage_List_a">작성일</th>
						<th class="mypage_List_a">처리 상태</th>
					</tr>

					<!--mypage_1:1 리스트 목록 보여지는 부분-->
					<tbody>
						<c:forEach items="${qnaList}" var="qnaVO">
							<tr>
								<td>${qnaVO.subject}</td>
								<td>${qnaVO.content}</td>
								<td>${qnaVO.qseq}</td>
								<td>${qnaVO.indate}</td>
								<td>${qnaVO.reply }</td>
							</tr>

						</c:forEach>


					</tbody>
				</table>
				<!-- c when  등록된 문의가 없을 때-->
				<p class="mypage_List_comment">
					<span>등록된 1:1문의가 없습니다.</span>
				</p>
			</div>
			<div class="mypage_Review" style="width: 90%;">
				<header class="mypage_Review_Header">
					<!--구매후기-->
					<h2 class="T1">구매후기</h2>
				</header>
				<br> <br>

				<table class="mypage_Review_a">

					<tr>
						<th class="mypage_Review_aa">문의 유형</th>
						<th class="mypage_Review_aa">내용</th>
						<th class="mypage_Review_aa">주문번호</th>
						<th class="mypage_Review_aa">작성일</th>
						<th class="mypage_Review_aa">처리 상태</th>
					</tr>
				</table>
				<!--cwhen 등록된 문의가 없을 때-->
				<p class="mypage_Review_comment">
					<span>등록된 후기내역이 없습니다.</span>
				</p>
			</div>
		</section>

	</form>


</body>
</html>