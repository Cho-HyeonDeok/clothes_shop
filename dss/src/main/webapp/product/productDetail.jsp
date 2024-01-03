<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/aside.css">
<link rel="stylesheet" href="css/productDetail.css">
<jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
	<div style="display: flex;">
		<jsp:include page="../aside.jsp"></jsp:include>
		<div class="detail_container">



			<div class="detail_div">
				<div class="deatail_categori">
					<span>${productVO.kind }</span>
				</div>
				<div class="detail_title">${productVO.name }</div>

				<div class="detail_section">
					<div class="detail_section_left">

						<img id="selectedImage" src="img/${productVO.image}" style="width:500px; height:600px" alt="">

						<div class="detail_img_div" style="border-bottom: none">
							<img src="img/${productVO.image}" class="detail_sub_img"
								onmouseover="handleThumbnailClick('img/${productVO.image}')">
								<img src="img/${productVO.image1}" class="detail_sub_img"
								onmouseover="handleThumbnailClick('img/${productVO.image1}')">
							<img src="img/${productVO.image2}" class="detail_sub_img"
								onmouseover="handleThumbnailClick('img/${productVO.image2}')">
								<img src="img/${productVO.image3}" class="detail_sub_img"
								onmouseover="handleThumbnailClick('img/${productVO.image3}')">
								<img src="img/${productVO.image4}" class="detail_sub_img"
								onmouseover="handleThumbnailClick('img/${productVO.image4}')">
							
				
						</div>

						
					</div>
					<div class="detail_section_right">
						<div class="detail_section_right_info">
							<span>대신사 스토어를 포함한 제한된 판매처에서만 구매 가능한 상품입니다.</span>
						</div>
						<div class="deatail_product_info">
							<div class="deatail_product_info_title">Product Info</div>
							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>브랜드</span>
								</div>
								<div class="detail_product_font_2">${productVO.brand }
								</div>
							</div>
							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>시즌 / 성별</span>
								</div>
								<div class="detail_product_font_2">2023 F/W / 남</div>
							</div>
							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>조회수</span>
								</div>
								<div class="detail_product_font_2">2.2만회 이상</div>
							</div>

							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>누적판매</span>
								</div>
								<div class="detail_product_font_2">200개 이상</div>
							</div>

							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>좋아요</span>
								</div>
								<div class="detail_product_font_2">921</div>
							</div>

							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>구매후기</span>
								</div>
								<div class="detail_product_font_2">후기 120개 보기</div>
							</div>
						</div>
						<div class="deatail_product_price_info">
							<div class="deatail_product_info_title">Price Info</div>
							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>무신사 판매가</span>
								</div>
								<div class="detail_product_font_2">${productVO.price1 }원</div>
							</div>
							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>무신사 회원가</span>
								</div>
								<div class="detail_product_font_2">${productVO.price2 }원</div>
							</div>
							<div class="detail_product_brand_div">
								<div class="detail_product_font_1">
									<span>무이자 할부가</span>
								</div>
								<div class="detail_product_font_2">${productVO.price3 }원</div>
							</div>

							
							<form method="post" name="cart_list" action="DssServlet?command=cart_insert">
								<div class="detail_button" style="margin-top: 20%">
									<!-- 로그인시 -->

									<c:choose>
										<c:when test="${loginUser != null }">
											<div class="detail_hidden">
												
											</div>
											<input type="button" value="바로구매" class="detail_buy_button" onclick="location.href='DssServlet?command=cart_insert&pseq=${productVO.pseq}&quantity=1'">
										<div  onclick="changeColor()" class="deatail_heart" id="icon" >
										<div>
											<c:choose>
												<c:when test="${result == 0}"> <!-- 빨강하트 -->
													<i class="fa-regular fa-heart fa-lg" 
													style="line-height: 50px; color: red"  
													onclick="location.href='DssServlet?command=likecart_delete&pseq=${productVO.pseq}&quantity=1'"></i>
												</c:when>
												<c:otherwise> <!-- 검정하트 -->
													<i class="fa-regular fa-heart fa-lg" 
													style="line-height: 50px; color: black"  
													onclick="location.href='DssServlet?command=likecart_insert&pseq=${productVO.pseq}&quantity=1'"></i>
												</c:otherwise>
											</c:choose>
										
											</div>
								
									</div>
									<div class="deatail_heart">
										<div class="deatail_bag">
											<i class="fa-solid fa-bag-shopping fa-lg"
												style="line-height: 50px;"></i>
										</div>

									</div>
										</c:when>
										<c:otherwise>
											<input type="button" value="회원전용" style="border:1px solid #b2b2b2"
												class="detail_buy_button_not_login">
												
										</c:otherwise>
									</c:choose>

									
									<div></div>
								</div>
							</form>

						</div>
					</div>
				</div>
				<div class="detail_coordi">
					<hr>

					<div class="deatail_product_info_title_left">Coordi</div>
					<div class="detail_coordi_container">
						<div class="detail_coordi_img_div">
							<div class="detail_coordi_img_div_cto">

								<div class="detail_coordi_img_div_info">
									<img src="img/${productVO.image6}" class="detail_coordi_img">
									<p>${productVO.coordi }</p>
							
								</div>
								
							</div>


						</div>
					</div>
				</div>
				<div class="detail_coordi">
					<hr>

					<div class="deatail_product_info_title_left">Info</div>
					<span class="info_span"> 무신사는 공정한 경쟁을 통한 신뢰 있는 상품을 제공하고자
						합니다. 상품에 문제가 있는 경우 알려 주세요. </span>
					<div class="detaiil_content_img_div">
						<div>
							<img src="img/${productVO.image5 }" alt="">
						</div>
					</div>
					<div class="detail_product_info_button_div" id="info_button">
						<button class="detail_product_info_button" onclick="viewButton()">상품정보
							더보기</button>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script src="script/productDetail.js"></script>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>