<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/header.css">
<script type="text/javascript">
	function go_search() {
		var theForm = document.frm;
		theForm.action = "DssServlet?command=product_search_list";
		theForm.submit();
	}
</script>
</head>
<body>
	<div class="main_header_topLogo_container">
		<div class="main_header_topLogo">
			<div class="main_topLogo">
				<div class="main_topLogo_slider">
					<img src="img/logo1.jpg" alt="" />
				</div>
				<div class="main_topLogo_slider">
					<img src="img/logo2.jpg" alt="" />
				</div>
				<div class="main_topLogo_slider">
					<img src="img/logo3.jpg" alt="" />
				</div>
			</div>
		</div>
	</div>
	<!-- 헤더 -->
	<div class="main_header_container">
		<!-- 로고 -->
		<div class="main_header_logo">
			<img onclick="location.href='DssServlet?command=index'"
				src="img/logo.png" alt="" />
		</div>
		<!-- 검색창 -->

		<form name="frm" method="post">
			<div class="main_header_Search">
				<div class="search__bar">
					
						<input type="text" name="key" placeholder="우먼 백&슈즈 최대 40% 할인"
							onfocus="this.placeholder=''" />
					
				</div>

				<div class="link__search" name="btn_search" onClick="go_search()">
					<i class="fa-solid fa-magnifying-glass" style="color: #fff"></i>
				</div>
			</div>
		</form>
		<!-- 랭킹창 -->

		<div class="main_header_Ranking">
			<ul>
				<li><span class="main_header_ranking_count">1등 : 후드티</span> <span>▼
						1</span></li>
				<li><span class="main_header_ranking_count">2등 : 후드집업</span> <span>▼
						1</span></li>
				<li><span class="main_header_ranking_count">3등 : 맨투맨</span> <span>▼
						1</span></li>
				<li><span class="main_header_ranking_count">4등 : 바람막이</span> <span>▼
						1</span></li>
				<li><span class="main_header_ranking_count">5등 : 반팔</span> <span>▼
						1</span></li>
			</ul>
		</div>

		<!-- 헤더 컨텐츠 -->
		<div class="main_header_contents_div">
			<div class="main_header_content">랭킹</div>
			<div class="main_header_content">코디</div>
			<div class="main_header_content">세일</div>
			<div class="main_header_content">이벤트</div>
			<div class="main_header_content">브랜드</div>
		</div>
	</div>
	<!-- 개인정보 -->
	<c:choose>
		<c:when test="${empty loginUser}">
			<div class="main_header_info">
				<div class="main_header_info_detail main_header_name"
					onclick="location.href='DssServlet?command=login_form'">로그인</div>


			</div>
		</c:when>
		<c:otherwise>
			<div class="main_header_info">
				<div class="main_header_info_detail main_header_name">${loginUser.name}</div>
				<div class="main_header_info_detail main_header_profile"
					onclick="location.href='DssServlet?command=mypage'">마이페이지</div>
				<div class="main_header_bag">
					<div class="main_header_bag_hover"
						onclick="location.href='DssServlet?command=cart_list'">장바구니</div>
					<div>
						<span class="main_header_bag_cnt">1</span>
					</div>
				</div>
				<div class="main_header_info_detail main_header_login"
					onclick="location.href='DssServlet?command=logout'">로그아웃</div>
			</div>
		</c:otherwise>
	</c:choose>


	<script src="script/header.js"></script>

</body>
</html>