<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/index.css" type="text/css" />
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/header.css" />
<link rel="stylesheet" href="css/aside.css" />
<link rel="stylesheet" href="css/footer.css">
<title>Document</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<!-- 메인페이지 -->
	<div class="main_container">
		<jsp:include page="aside.jsp"></jsp:include>
		<div style="margin:0 auto;">
		<div class="section">
			<!-- section 제목 -->
			<div class="section_title_div">
				<div class="section_title_content">
					<span class="section_title"><%=session.getAttribute("nickname") %></span> 
				</div>
			</div>
			<!-- section 컨텐츠 div -->
			<div class="section_content_div">
				<!-- section 카테고리 -->
				<!-- section 정보 -->
				<div >
					<div class="section_info_div">
						<form>
							<div class="section_info_container">
								<!-- 를 best product list 사용 -->
								<c:forEach items="${bestProductList}" var="bestproductVO"
									varStatus="stat">
									<c:choose>
										<c:when test="">
										</c:when>
									</c:choose>
									<div class="section_info_product_div" style="cursor: pointer"
										onclick="location.href='DssServlet?command=product_detail&pseq=${bestproductVO.pseq}'">
										<div class="section_info_ranking">${stat.count}위</div>
										<div class="section_info_img">
											<img src="img/${bestproductVO.image}"
												style="width: 146px; height: 175px" alt="" />
										</div>
										<div class="section_info_title">
											<span>${bestproductVO.brand}</span>
										</div>
										<div class="section_info_product_info"
											style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
											<span>${bestproductVO.name}</span>
										</div>
										<div class="section_info_product_price">
											<span>${bestproductVO.price1}</span>
										</div>
									</div>
								</c:forEach>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="section">
			<!-- section 제목 -->
			<div class="section_title_div">
				<div class="section_title_content">
					<span class="section_title">신상품 랭킹</span>
				</div>
			</div>
			<!-- section 컨텐츠 div -->
			<div class="section_content_div">
				<!-- section 카테고리 -->
				<!-- section 정보 -->
				<div>
					<div class="section_info_div">
						<form>
							<div class="section_info_container">
								<!-- 를 best product list 사용 -->
								<c:forEach items="${newProductList}" var="newproductVO"
									varStatus="stat">
									<c:choose>
										<c:when test="">
										</c:when>
									</c:choose>
									<div class="section_info_product_div" style="cursor: pointer"
										onclick="location.href='DssServlet?command=product_detail&pseq=${newproductVO.pseq}'">
										<div class="section_info_ranking">${stat.count}위</div>
										<div class="section_info_img">
											<img src="img/${newproductVO.image}"
												style="width: 146px; height: 175px" alt="" />
										</div>
										<div class="section_info_title">
											<span>${newproductVO.brand}</span>
										</div>
										<div class="section_info_product_info"
											style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
											<span>${newproductVO.name}</span>
										</div>
										<div class="section_info_product_price">
											<span>${newproductVO.price2}</span>
										</div>
									</div>
								</c:forEach>
							</div>
						</form>
					</div>


				</div>
			</div>

		</div>
		</div>
	</div>

	<script src="script/header.js"></script>
	<script src="script/main.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
