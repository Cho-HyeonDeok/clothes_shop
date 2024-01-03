<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/productKind.css">
<link rel="stylesheet" href="css/aside.css">
<title>Document</title>
<jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
	<div style="display: flex;">
		<jsp:include page="../aside.jsp"></jsp:include>

		<!--  
    <div class="aside_container">
        <div class="aside_title_div">
            <div class="aside_title_left">
          
                <span class="aside_title_span">품목</span>
            </div>
            <div class="aside_title_right">
                <span class="aside_title_span">브랜드</span>
            </div>
        </div>
        <div class="aside_content_div">
            <div class="aside_content_best" style="margin-top: 1%;">
                <div class="aside_content_span" >
                <span class="aside_font">인기</span><span class="aside_font_sub">Best</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font">상의</span><span class="aside_font_sub">Top</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font">하의</span><span class="aside_font_sub">Pants</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font">아우터</span><span class="aside_font_sub">Outer</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font">신발</span><span class="aside_font_sub">Shoes</span>
                </div>
            </div>
        </div>
        <div class="aside_content_footer">
            <div class="aside_content_footer_info">
                <i class="fa-solid fa-phone"></i>
                <span>1544-7199</span>
            </div>
            <div class="">
                <p class="aside_font_footer">오전9시~오후6시 운영 / 토,일,휴일 휴무 </p>
                <p class="aside_font_footer">- 전화 전 <span>자주 묻는 질문</span>을 확인하세요.</p>
                <p class="aside_font_footer">- <span>1:1문의</span>를 통해서도 상담이 가능합니다.</p>
                <p class="aside_font_footer">- 상품 문의는 각 상품 Q&A를 이용하세요.</p>
            </div>
        </div>
    </div>
    -->
		<div class="view_all_product_container_main">
			<div class="view_all_product_container">
				<div class="view_all_product_top">
					<div class="view_all_font" onclick="">
						<span>대신사 추천순</span>
					</div>
					<div class="view_all_font" onclick="">
						<span>신상품(재입고)순</span>
					</div>
					<div class="view_all_font" onclick="">
						<span>낮은 가격순</span>
					</div>
					<div class="view_all_font" onclick="">
						<span>높은 가격순</span>
					</div>
					<div class="view_all_font" onclick="">
						<span>할인율순</span>
					</div>
					<div class="view_all_font" onclick="">
						<span>후기순</span>
					</div>
					<div class="view_all_font" onclick="">
						<span>판매순</span>
					</div>
				</div>
			</div>
			<div class="view_all_product_content">
				<c:forEach items="${productKindList}" var="productKindList"
					varStatus="stat">
					<div class="view_all_product_content_img_div"
						onclick="location.href='DssServlet?command=product_detail&pseq=${productKindList.pseq}'">

						<div class="section_info_ranking"
							style="font-size: 7px; font-weight: 800; padding: 5px 5px; width: 10%; background-color: white;">${stat.count}위</div>
						<div class="view_all_product_content_div" onclick="">
							<img src="img/${productKindList.image}"
								style="width: 150px; height: 150px" alt="">

							<p class="view_all_product_content_font">${productKindList.brand}</p>
							<p class="view_all_product_content_font2">${productKindList.name}</p>
							<p class="view_all_product_content_font">${productKindList.price1}</p>

						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>