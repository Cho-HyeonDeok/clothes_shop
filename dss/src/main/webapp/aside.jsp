<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <script src="https://kit.fontawesome.com/a91a455094.js" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/aside.css">

   
</head>
<body>

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
                <span class="aside_font"><a class="aside_font" href="DssServlet?command=catagory&kind=6">인기</a></span><span class="aside_font_sub">Best</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font"><a class="aside_font" href="DssServlet?command=catagory&kind=1">상의</a></span><span class="aside_font_sub">Top</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font"><a class="aside_font" href="DssServlet?command=catagory&kind=2">하의</a></span><span class="aside_font_sub">Pants</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font"><a class="aside_font" href="DssServlet?command=catagory&kind=3">아우터</a></span><span class="aside_font_sub">Outer</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font"><a class="aside_font" href="DssServlet?command=catagory&kind=4">신발</a></span><span class="aside_font_sub">Shoes</span>
                </div>
            </div>
            <div class="aside_content_best">
                <div class="aside_content_span">
                <span class="aside_font"><a class="aside_font" href="DssServlet?command=catagory&kind=5">악세사리</a></span><span class="aside_font_sub">Shoes</span>
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
                <p class="aside_font_footer">- <span><a href="DssServlet?command=qna_write_form">1:1문의</a></span>를 통해서도 상담이 가능합니다.</p>
                <p class="aside_font_footer">- 상품 문의는 각 상품 Q&A를 이용하세요.</p>
            </div>
        </div>

</div>
</body>
</html>