function go_save() {
	if(document.formm.email.value == "") {
		alert("이메일을 입력해 주세요.");
		document.formm.email.focus();
	} else if (document.formm.id.value != document.formm.reid.value) {
		alert("중복확인을 클릭해 주세요.");
		document.formm.id.focus();
	} else if (document.formm.id.value == "") {
		alert("아이디를 입력해주세요.");
		documnet.formm.pwd.focus();
	} else if (document.formm.pwd.value == "") {
		alert("비밀번호을 입력해 주세요.");
		document.formm.name.focus();
	} else if (document.formm.name.value == "") {
		alert("이름을 입력해 주세요.");
		document.formm.email.focus();
	} else {
		document.formm.action = "DssServlet?command=join";
		documnet.formm.submit();
	}
}

function idcheck() {
	if (document.formm.id.value == "") {
		alert('아이디를 입력해 주세요.');
		document.formm.id.focus();
	
	}
	var url = "DssServlet?command=id_check_form&id=" + document.formm.id.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
}

function post_zip() {
	var url = "DssServlet?command=find_zip_num";
	window.open(url, "_blank_1", "toobar=no, menubar=no, scrollbars=yes, resizeable=no, width=550, height=300, top=300, left=300, ");
}

function go_next() {
	if (document.formm.okon1[0].checked == true) {
		document.formm.action = "DssServlet?command=join_form";
		document.formm.submit();
	} else if (document.formm.okon[1].checked == true) {
		alert('약관에 동의하셔야만 합니다.');
	}
}

//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 참고 항목 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			}
			// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('sample4_postcode').value = data.zonecode;
			document.getElementById("sample4_roadAddress").value = roadAddr;
			document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

			document.getElementById("sample4_engAddress").value = data.addressEnglish;

			// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
			if (roadAddr !== '') {
				document.getElementById("sample4_extraAddress").value = extraRoadAddr;
			} else {
				document.getElementById("sample4_extraAddress").value = '';
			}

			var guideTextBox = document.getElementById("guide");
			// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
			if (data.autoRoadAddress) {
				var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
				guideTextBox.style.display = 'block';

			} else if (data.autoJibunAddress) {
				var expJibunAddr = data.autoJibunAddress;
				guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
				guideTextBox.style.display = 'block';
			} else {
				guideTextBox.innerHTML = '';
				guideTextBox.style.display = 'none';
			}
			
			document.getElementById("sample4_detailAddress").focus();
		}
	}).open();
}