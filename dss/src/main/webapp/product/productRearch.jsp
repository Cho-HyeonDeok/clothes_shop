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
<link rel="stylesheet" href="css/cartList.css">
<title>Document</title>
<jsp:include page="../header.jsp"></jsp:include>


</head>
<body>
	<!-- 메인페이지 -->
	<div class="main_container">
		<jsp:include page="../aside.jsp"></jsp:include>
		<form name="frm" method="post"
			style="border-left: 1px solid #b2b2b2; width: 100%">
			<div
				style="width: 100%; padding: 10px 10px; border-bottom: 1px solid #b2b2b2; margin-bottom: 3%; display: flex;">
				<span style="font-size: 15px; padding: 20px 20px; width: 100%;">검색결과</span>
			</div>
			<table id="productList">

				<c:choose>
					<c:when test="${productListSize<=0}">
						<tr>
							<td width="100%" colspan="7" align="center" height="23">등록된
								상품이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<div style="display: flex; justify-content: start;">
							<c:forEach items="${productList}" var="productVO"
								varStatus="stat">
								<c:choose>
									<c:when test="">

									</c:when>
								</c:choose>
								<div class="section_info_product_div2"
									style="margin-left: 5%; cursor: pointer; border: 1px solid #b2b2b2; margin-top: 1%; width: 200px; box-sizing: border-box;"
									onclick="location.href='DssServlet?command=product_detail&pseq=${productVO.pseq}'">
									<div>
										<div class="section_info_img">
											<img src="img/${productVO.image}"
												style="width: 146px; height: 175px" alt="" />
										</div>
										<div style="margin-left: 10%">
											<div class="section_info_title">
												<span>${productVO.brand}</span>
											</div>
											<div class="section_info_product_info"
												style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap;">
												<span>${productVO.name}</span>
											</div>
											<div class="section_info_product_price">
												<span>${productVO.price1}</span>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>

					</c:otherwise>
				</c:choose>
			</table>
		</form>
	</div>

	<script src="script/header.js"></script>
	<script src="script/main.js"></script>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
