<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DaeSinsa CartList</title>
<link rel="stylesheet" href="css/cartList.css">
</head>
<body>
	<section class="Cart_All">
		<div class="Cart_Header1">
			<div class="Cart_sub">
				<span><i class="fa-solid fa-bars"></i></span> <a href="index.html">대신사
					스토어</a> <span class="Cart_icon">&gt;</span> <a href="mypage.html">마이페이지</a>
				<span class="Cart_icon">&gt;</span> <a href="Cart.html">장바구니</a>
			</div>
		</div>

		<div class="Cart_Header2">
			<h2 class="Cart_title">Order / Payment</h2>
			<!--cart process-->
			<div class="Cart_Header3">
				<span class="Cart_cart">장바구니</span>
			</div>
		</div>
		<div class="Cart_Content">
			<div class="Cart_Texbae">
				택배배송<span>1</span>
			</div>
		</div>
		<div class="Cart_Content_sub1">
			<div class="Cart_Content_sub2">
				<table class="Cart_Content_header">
					<thead>
						<tr>
							<th class="Cart_Cola"><input type="checkbox"
								class="mypage_Check" id="mypage_CheckAll"> <label
								for="mypage_CheckAll"></label> <!--전체 선택--></th>
							<th class="Cart_Colb">전체 <strong>1</strong>개
							</th>
							<th class="Cart_Colc">상품명(옵션)</th>
							<th class="Cart_Cold">판매가</th>
							<th class="Cart_Cole">회원 할인</th>
							<th class="Cart_Colf">수량</th>
							<th class="Cart_Colg">주문금액</th>
							<th class="Cart_Colh">주문관리</th>
							<th class="Cart_Coli">배송형태/ 배송비</th>
						</tr>
					</thead>
					<tbody>

						<tr class="Cart_List">
							<td colspan="9" class="Cart_List_contant">
						<tr class="Cart_List_table">
							<!--상품 차례 번호-->
							<td class="Cart_Cola"><input type="checkbox"
								class="Cart_Checked" name="cart_no" value="901191647"
								checked="checked" title="상품 선택"></td>
							<td class="Cart_Colb" style="font-size: 0.95em;">1</td>
							<td class="Cart_Colc" style="font-size: 0.95em;">
								<div class="Cart_Product_img">
									<!--상품 눌렀을때 상품으로 이동하는 html 주소-->
									<a href="#"> <!--상품 상세 정보--> <img src="ProductEx.JPG"
										alt="와릿이즌(WHATITISNT) [22FW]ANGEL WAPPEN HOOD GRAY">
									</a>
								</div>
								<div class="Cart_Info1">
									<p class="Cart_txt">
										<span
											style="color: #f00; word-wrap: break-word; display: inline-block">※적립금
											사용 제한</span>
									</p>
									<p class="Cart_Info2">
										<!--상품 눌렀을때 상품으로 이동하는 html 주소-->
										<!--상품 상세 정보-->
										<a href="#" style="color: #777;"> [와릿이즌] [22FW]ANGEL
											WAPPEN HOOD GRAY </a>
									</p>
									<p class="Cart_Option" style="color: #999;">옵션:M/&nbsp;재고
										5개 이상</p>
									<p class="Cart_Last" style="color: #b2b2b2;">
										<span class="Cart_Last_txt">* 적립금 선할인 미적용 상품(적립만 가능)</span>
									</p>
								</div>
							</td>
							<td class="Cart_Cold" style="font-size: 0.95em;">
								<div class="Cart_One">69,000</div>
								<div class="Cart_Two">27,600</div>
							</td>
							<td class="Cart_Cole" style="font-size: 0.95em;">0</td>
							<td class="Cart_Colf" style="font-size: 0.95em;">1</td>
							<td class="Cart_Colg" style="font-size: 0.95em;">27,600<br>(304)
							</td>
							<td class="Cart_Colh" style="font-size: 0.95em;">
								<!--상품 눌렀을때 상품으로 이동하는 html 주소--> <!--상품 삭제 fuction--> <!--빈 바구니 html-->
								<a href="#" class="Delete_button">삭제하기</a>
							</td>
							<td class="Cart_Coli" style="font-size: 0.95em;">택배배송<br>
								<strong>배송비 무료</strong><br> 0원이상 무료
							</td>
						</tr>
				</table>

				<div class="Cart_Del">
					<!--전체 삭제 fuction-->
					<a href="#" id="del_all" class="Cart_All_del" onclick="">품절&nbsp;모두&nbsp;삭제</a>
					<!--선택 삭제 fuction-->
					<a href="#" id="del_chk" onclick="" class="Cart_All_del_ch">선택&nbsp;삭제</a>
				</div>
				<div class="Cart_Text">
					<span class="Cart_red">※ 적립금 사용 제한 상품이 포함되어 있습니다. 주문에 참고하시기
						바랍니다.</span>
					<ul class="Cart_Text_txt">
						<li><i class="fa-solid fa-circle-info"></i> 무신사는 제주/도서산간 지역
							제외 전 지역, 전 상품 무료 배송입니다.</li>
						<li><i class="fa-solid fa-circle-info"></i> 주문완료 후 출고 전 배송지
							변경은 동일 권역(일반, 제주, 제주 외 도서산간 지역) 내에서만 가능합니다.</li>
						<li><i class="fa-solid fa-circle-info"></i> 2개 이상의 브랜드를 주문하신
							경우, 개별 배송됩니다.</li>
						<li><i class="fa-solid fa-circle-info"></i> 결제 시 각종 할인 적용이
							달라질 수 있습니다.</li>
						<li><i class="fa-solid fa-circle-info"></i> 해외배송 상품은 배송료가 추가로
							발생될 수 있습니다.</li>
						<li><i class="fa-solid fa-circle-info"></i> 장바구니 상품은 최대 1년
							보관(비회원 2일)되며 담은 시점과 현재의 판매 가격이 달라질 수 있습니다.</li>
						<li><i class="fa-solid fa-circle-info"></i> 장바구니에는 최대 100개의
							상품을 보관할 수 있으며, 주문당 한번에 주문 가능한 상품수는 100개로 제한됩니다.</li>
						<li><i class="fa-solid fa-circle-info"></i> 구매 가능 수량이 1개로 제한된
							상품은 주문 취소 시, 24시간 내 가상계좌 재주문이 불가합니다.</li>
						<li><i class="fa-solid fa-circle-info"></i> 수량 제한 상품의 경우,
							가상계좌를 통한 주문은 최대 2건까지만 가능합니다.(미입금 주문 기준, 기존 주문 합산)</li>
					</ul>
				</div>
				<br>
				<br>
				<br>
				<div class="Cart_Order_btn">
					<!--주문하기 눌렀을때 function-->
					<a href="#" onclick="" id="order_btn" class="Order_btn"> 주문하기 </a>
				</div>
			</div>
			<br>
			<br>
			<div class="when">
				<p class="Cart_D1">
					<!-- cwhen 아무것도 없을때 -->
					<span>장바구니에 담긴 상품이 없습니다.</span>
				</p>
			</div>
		</div>
		<div class="Cart_Discount">
			<img src="Discount.JPG">
		</div>
		<!--상품 금액 할인 금액 합계 총 가격 부분-->
		<div class="Cart_Total">
			<p class="Total_title">할인 금액</p>
			<br>
			<br>
			<div class="Cart_Total_Box">
				<div class="Cart_Discount_method">
					<div class="Cart_Discount_method1">상품 할인</div>
					<div class="Cart_Discount_m">
						<span><strong id="Cart_Total_sale">41,400</strong> 원</span>
					</div>
				</div>
				<div class="Cart_Discount_method">
					<div class="Cart_Discount_method1">등급 할인</div>
					<div class="Cart_Discount_m">
						<strong><span id="Cart_Total_dc">0</span></strong> 원 <span
							class="txt_level" style="color: #777777;">(무신사 멤버 회원)</span>
					</div>
				</div>
				<div class="Cart_Discount_method">
					<div class="Cart_Discount_method1">쿠폰 할인</div>
					<div class="Cart_Discount_m">
						<!--쿠폰 조회 html로 이동-->
						<a href="mypage.html#coupon">쿠폰조회 및 적용</a>
					</div>
				</div>
				<div class="Cart_Discount_method">
					<div class="Cart_Discount_method1">적립금 사용</div>
					<div class="Cart_Discount_m">
						<span class="Cart_Black"> 5000원 이상 보유시 사용 가능합니다. </span> <input
							type="hidden" name="point" value="0">
					</div>
				</div>
				<div class="Cart_Discount_method">
					<div class="Cart_Discount_method1">할인 합계</div>
					<div class="Cart_Discount_m">
						<strong class="Cart_total_pay_dc">41,400</strong>원
					</div>
				</div>
			</div>
			<br>
			<!--체크 표시 시 동일하게 적용되는 fuction-->
			<div class="Cart_Reflect">
				<input type="checkbox" id="saveOrder" > <label
					for="saveOrder">주문서에 동일하게 적용</label>
			</div>
			<br>
			<br>
			<br>

			<div class="Cart_Final">
				<div>
					<p class="Cart_Final_a">상품 금액</p>
					<p class="Cart_Final_price">
						<input type="hidden" class="Cart_normal_price" value="69000">
						<span class="Cart_normal_price_adiv">69,000</span>원
					</p>
				</div>
				<div class="Cart_Final_ic">
					<i class="fa-solid fa-minus"></i>
				</div>
				<div>
					<p class="Cart_Final_a">할인 합계</p>
					<input type="hidden" class="Cart_total_save" value="41400">
					<p class="Cart_Final_price">
						<span class="Cart_total_price_adiv">41,400</span>원
					</p>
				</div>
				<div class="Cart_Final_ic">
					<i class="fa-solid fa-equals"></i>
				</div>
				<div>
					<p class="Cart_Final_a">최종 결제 금액</p>
					<p class="Cart_Final_price">
						<span id="pay_amt">27,600</span>원
					</p>
					<p class="Cart_Final_price_save">
						<span id="Cart_Rate">60</span>% SAVE
					</p>
				</div>
			</div>
		</div>

	</section>
</body>
</html>