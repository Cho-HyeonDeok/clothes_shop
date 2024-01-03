<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/qnaList.css">
<title>Document</title>
</head>

<body>
	<div class="qna_main">
		<div class="qna_title">
			<div class="qna_title_font">CS Center</div>
		</div>
		<div class="qna_sub">
			<div class="qna_sub_teltime">
				<div class="qna_sub_tel">Tel. 1544-7199</div>
				<div class="qna_sub_time">평일 9:00~18:00</div>
			</div>
			<div class="qna_sub_qnasubqna">
				<div class="qna_sub_qna">1:1 Q&amp;A</div>
				<div class="qna_sub_subqna">질문 전 FAQ(자주 묻는 질문)을 먼저 확인해 주세요.</div>
			</div>
			<div class="qna_sub_faqsubfaq">
				<div class="qna_sub_faq">FAQ</div>
				<div class="qna_sub_subfaq">자주 묻는 질문</div>
			</div>
		</div>
		<div class="qna_main_container">
			<div class="qna_main_title">
				<div class="qna_main_title_font">1:1 Q&amp;A</div>
				<div>
					<div>
						<div class="li_div">
							<ul>
								<li class="li_red">제품 사용, 오염, 전용 박스 손상, 라벨 제거, 사은품 및 부속
									사용/분실 시, 교환/환불이 불가능 합니다.</li>
								<li class="li_red">교환을 원하시는 상품(사이즈)의 재고가 부족 시, 교환이 불가합니다.</li>
								<li>고객님의 주문내역을 선택, 질문이 필요한 상품을 선택하시면 1:1상담이 가능합니다.</li>
								<li>주문취소/교환/환불은 마이페이지>주문내역에서 신청하실 수 있습니다.</li>
								<li>1:1문의 처리 내역은 마이페이지>1:1문의를 통해 확인하실 수 있습니다.</li>
								<li>상품 정보(사이즈, 실측, 예상 배송일 등) 관련 문의는 해당 상품 문의에 남기셔야 빠른 답변이
									가능합니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<form name="formm" method="post" action="DssServlet?command=qna_write">
			<div class="qna_under_form">
				<div class="qba_under_inputbest_form">
					<div class="qna_under_input_form">
						<!--문의 작성-->
						<div class="qna_under_input_title">문의 작성</div>
						<div class="qna_under_input_subform">
							<div class="qna_under_input_select_form">
								<!--문의 유형 폼-->
								<div class="qna_under_input_select_title">
									문의 유형
									<!--문의 유형 타이틀-->
								</div>
								<div class="qna_under_input_select_buttonlist_form">
									<!--문의 유형 버튼 리스트 폼-->
									<div class="qna_under_input_sixbutton_form">
										<!--문의 유형 체크버튼 (6개)-->
										<div class="qna_under_input_sixbutton_top">
											<div class="form_radio_btn radio_male">
												<input id="radio-1" type="radio" name="product_service"
													value="product_service1" checked> <label
													for="radio-1">배송</label>
											</div>

											<div class="form_radio_btn">
												<input id="radio-2" type="radio" name="product_service"
													value="product_service2"> <label for="radio-2">주문/결제</label>
											</div>

											<div class="form_radio_btn">
												<input id="radio-3" type="radio" name="product_service"
													value="product_service3"> <label for="radio-3">취소/교환/환불</label>
											</div>
										</div>
										<div class="qna_under_input_sixbutton_bottom">
											<div class="form_radio_btn radio_male">
												<input id="radio-4" type="radio" name="product_service"
													value="product_service4" checked> <label
													for="radio-4">회원정보</label>
											</div>

											<div class="form_radio_btn">
												<input id="radio-5" type="radio" name="product_service"
													value="product_service5"> <label for="radio-5">상품확인</label>
											</div>

											<div class="form_radio_btn">
												<input id="radio-6" type="radio" name="product_service"
													value="product_service6"> <label for="radio-6">서비스</label>
											</div>
										</div>

									</div>
									<div class="qna_under_input_list_form">
										<!--문의 유형 리스트-->
										<select class="qna_under_input_list" name="subject" id="">
											<option value="">문의 유형을 선택해 주세요</option>
											<option value="1">상품 문의</option>
											<option value="2">불량/하자</option>
											<option value="3">AS</option>
										</select>
									</div>
								</div>

							</div>
							<div class="qna_under_input_text_form">
								<!--문의 내용-->
								<div class="qna_under_input_text_titlebox">
									<!--타이틀과 텍스트 상자-->
									<div class="qna_under_input_textbox_font">문의 내용</div>
									<div>
										<textarea style="border-color: #999;" cols="45" rows="10"
											name="content"
											placeholder="우선 접수된 문의 건부터 순차적으로 답변을 드리고 있습니다. 문의유형과 주문번호, 문의내용을 상세히 기재해 주시면 더욱 신속히 답변 드릴 수 있습니다. 문의하신 내용에 답변을 위해 전화로 연락을 드릴 수 있습니다."></textarea>
									</div>
								</div>
							</div>
							<div class="qna_under_input_image_form">
								<!--사진-->
								<div class="qna_under_input_image_main">
									<div class="qna_under_input_image_title">사진</div>
									<div>
										<input type="file">
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="qna_under_best_form">
						<!--Best FAQ-->
						<div class="qna_under_best_title">Best FAQ</div>
						<div>FAQ 넣기</div>
					</div>


				</div>
				<div class="qna_under_button_form">
					<div class="qna_under_button_box">
						<div class="qna_user_button1">취소</div>
						<div class="qna_user_button2">
							<input type="submit" value="작성하기">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>

</html>