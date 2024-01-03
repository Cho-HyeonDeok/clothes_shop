<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="reset.css" />
<link rel="stylesheet" href="register.css" />

<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/join.css">
<script src="member/member.js"></script>
<title>회원가입</title>
</head>
<body>
	<div class="register_container" style="height: 100%;">
		<div class="register_container_left" style="width: 100%;">
			<div class="register_form_container">
				<form id="join" method="post" action="DssServlet?command=join"
					name="formm" class="register_form">
					<div class="register_top_div">
						<p>정보 기본설정</p>
						<span>회원가입이 바로 완료됩니다.</span>
						<hr />
					</div>
					<p class="fw">이메일</p>
					<div class="register_info_div">
						<div class="register_input_div">
							<input type="text" name="email" placeholder="email@example.com" />
						</div>
						<div class="register_input_button">
							<button value="중복 체크" class="dup" onclick="idcheck()">중복확인</button>
						</div>
					</div>
					<hr class="input_hr" />
					<p class="fw">이름</p>
					<div class="register_info_div">
						<div class="register_input_div">
							<input type="text" name="name" value="" placeholder="이름을 입력해주세요" />
						</div>
					</div>
					<hr class="input_hr" />
					<p class="fw">아이디</p>
					<div class="register_info_div">
						<div class="register_input_div">
							<input type="text" name="id" size="12" placeholder="아이디를 입력해주세요" />
							<input type="hidden" name="reid">
						</div>
						<div class="register_input_button">
							<input type="button" value="중복 확인" class="dup"
								onclick="idcheck()"> <br>
						</div>
					</div>
					<hr class="input_hr" />
					<p class="fw">비밀번호</p>
					<div class="register_info_div">
						<div class="register_input_div">
							<input type="password" name="pwd" placeholder="비밀번호를 입력해주세요" />
						</div>
					</div>
					<hr class="input_hr" />
					<p class="fw">비밀번호 확인</p>
					<div class="register_info_div">
						<div class="register_input_div">
							<input type="password" name="pwdCheck" placeholder="비밀번호를 확인해주세요" />
						</div>
					</div>
					<hr class="input_hr" />
					<p class="fw">우편번호</p>
					<div class="register_info_div">
						<div class="register_input_div">
							<input type="text" name="zipNum" size="10" id="sample4_postcode"
								value="" placeholder="우편번호" /> <input type="button"
								value="주소 찾기" class="dp" onclick="sample4_execDaumPostcode()">


						</div>
					</div>
					<p class="fw">주소</p>
					<input type="text" name="addr1" size="20" id="sample4_roadAddress"
						placeholder="도로명주소"
						style="border: none; width: 200px; padding: 10px 10px; font-size: 12px; font-weight: 700;">
					<input type="text" name="addr2" size="20"
						id="sample4_detailAddress" placeholder="상세주소"
						style="border: none; width: 200px; padding: 10px 10px; font-size: 12px; font-weight: 700;">
					<br>
					<hr class="input_hr" />
					<p class="fw">전화번호</p>
					<div class="register_info_div">
						<div class="register_input_div">
							<input type="password" name="phone" placeholder="번호를 입력해주세요" />
						</div>
					</div>
					<hr class="input_hr" />
					<div class="input_button_div">
						<input class="input_button" type="submit" value="동의하고 회원가입"
							onclick="go_save()" />
					</div>
				</form>
			</div>
		</div>

	</div>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>













