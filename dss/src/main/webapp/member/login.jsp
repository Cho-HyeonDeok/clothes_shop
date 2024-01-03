<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css" />
<link rel="stylesheet" href="css/reset.css" />

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
	function redirectToKakaoLogin() {
		// 카카오 로그인 URL
		var kakaoLoginURL = "https://kauth.kakao.com/oauth/authorize";

		// 파라미터 설정
		var clientId = "4b5e32bab89f9e6e38f993c698127d22";
		var redirectUri = "http://localhost:8080/dss/DssServlet?command=kakaoLogin";
		var responseType = "code";

		// URL 생성
		var url = kakaoLoginURL + "?client_id=" + clientId + "&redirect_uri="
				+ encodeURIComponent(redirectUri) + "&response_type="
				+ responseType;

		// 리다이렉트
		window.location.href = url;
	}
</script>
</head>
<body>
	<form action="DssServlet?command=login" method="post" name="frm">
		<div class="login_container">
			<div class="login_header">로그인</div>
			<div class="login_main">
				<!--아이디 비밀번호 입력창, 로그인 버튼, 자동 로그인 아이디 찾기 비밀번호 찾기, 카카오 로그인 버튼-->

				<!--아이디 비밀번호 입력창, 로그인 버튼, 자동 로그인 아이디찾기 비밀번호 찾기-->
				<div class="login_IdPw">
					<!--♥아이디 비밀번호 ♥입력창♥-->
					<ul class="login_id">
						<input type="text" name="id" class="login_input" placeholder="아이디"
							value="${id}">
					</ul>

					<ul class="login_pw">
						<input type="password" name="pwd" class="login_input"
							placeholder="비밀번호">
					</ul>
				</div>
				<div class="login_loginButton">
					<!--♥ 로그인 버튼 ♥-->
					<ul>
						<input type="submit" class="login_buttonitem" value="로그인">
					</ul>
				</div>
				<div class="login_util">

					<!--♥자동 로그인 아이디 ♥ 찾기 비밀번호 찾기♥-->
					<div>
						<ul>
							<label for="autologin" id="labelAutologin"
								name="login_util_autologin" class="login_auto">자동 로그인 <input
								type="checkbox" id="autologin" name="autologin" value="1"
								class="login_auto"> <!--★★♥자동 ★♥★ 로그인♥★★-->
							</label>
						</ul>
					</div>

					<div class="login_util_Search">
						<div class="login_util_IdSearch">
							<ul>
								<a href="DssServlet?command=find_id_form">아이디 찾기</a>
								<!--아이디 찾기-->
							</ul>
						</div>
						<div>
							<ul>|
							</ul>
						</div>
						<div class="login_tuil_PwSearch">
							<ul>
								<a href="DssServlet?command=find_id_form">비밀번호 찾기</a>
								<!--비밀번호 찾기-->
							</ul>
						</div>
					</div>
				</div>


				<div class="login_kakao">
					<ul>
						<!--카카오 로그인-->
						<button type="button" class="login_Kbuttonitem" id="kakaoLogin"
							onclick="redirectToKakaoLogin()">
							<i class="fa-solid fa-comment"></i> 카카오 로그인
						</button>
					</ul>
				</div>

				<div class="login_signupMain">

					<div class="login_signupText">
						<ul>
							<span>가입만 해도 즉시 1만원 할인</span>
						</ul>
					</div>
					<div class="login_signup">
						<ul>
							<span class="login_signup_span"
								onclick="location.href='DssServlet?command=join_form'">회원가입</span>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</form>
</body>
</html>