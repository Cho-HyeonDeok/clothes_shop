<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<article>
	<h2>Join Us</h2>
	<form id="join" action="NonageServlet?command=join_form" method="post"
		name="formm">
		대신사의 회원가입 페이지 입니다. <br> 대신사의 회원가입은 무료이며, 회원님의 개인신상에 관한 정보는
		‘정보통신망이용촉진 및 정보보호등에관한법률’에 의해 회원님의 동의없이 제 3자에게 제공되지 않으며, 철저히 보호되고 있사오니
		안심하고 이용하시기 바랍 니다.<br>
		<br>
		<textarea rows="15" cols="100">
		 제 1 장 총 칙
		제 1 조 (목적)
		이 이용약관(이하 '약관')은 주식회사 대신사(이하 회사라 합니다)
		와 이용 고객(이하 '회원')간에 회사가 제공하는 Daesinsa.com서비스
		의 가입조건 및 이용에 관한 다음의 제반 사항과 기타 기본적인 사
		항을 구체적으로 규정함을 목적으로 합니다
		
		이후 머시기 뭐시기
		</textarea>
		<br>
		<br>
		<div style="text-align: center;">
			<input type="radio" name="okon1" checked> 동의함 &nbsp; &nbsp;
			&nbsp; <input type="radio" name="okon1" checked> 동의안함
		</div>
		<input type="button" value="Next" class="submit" onclick="go_next()"
			style="float: right;">
	</form>
</article>
</body>

</html>