<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script
      src="https://kit.fontawesome.com/a91a455094.js"
      crossorigin="anonymous"
    ></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DaeSinsa Mypage</title>
    <link rel="stylesheet" href="./css/admin.css">
    <!-- <link rel="stylesheet" href="rest.css"> -->
</head>
<body>
    <!--mypage전체 클래스 이름-->
    <div class="mypage_Content">
    <!--mypage상단-->
    <div class="mypage_Total">
    <div class="a2"><sapn class="mypage_Head1" ><a href="Mypage.html" class="fw">ADMIN</span></a>
        
    </div>
    <!--mypage 탑헤더-->
        <div class="mypage_Head2">

        <div><a href="mypage_Out.html" class="fw a topmenu">로그아웃</p`></div>
    </div>
    </div>
   
</div>


</div>
<!---->
</div>
</div>
</div>
</div>
<nav class="mypage_Aside">

<div class="mypage_Shopping">
  <h3 style="margin-bottom: 5%;">Admin Setting</h3>
    <a href="mypage_No1" class="mypage_Shop" ><span>상품리스트</span></a>
    <a href="mypage_No2" class="mypage_Shop"><span>주문리스트</span></a>
    <a href="mypage_No3" class="mypage_Shop"><span>Q&A 리스트</span></a>
   
</div>

</nav>

<section class="mypage_Mypage"> 
    <!-- 상품 리스트  -->
    <div class="mypage_Coupon">
        <header class="mypage_Title">
            <h2 class="T1">상품리스트

            </h2>
            <!-- 온클릭시 상품 등록페이지 -->
            <span class="admin_insert_button" onclick="">상품등록</span>
            
        </header>
        <table class="mypage_Coupon_Col">
            <thead>
                <tr>
                    <th class="mypage_Coupon_a">번호</th>
                    <th class="mypage_Coupon_a">상품명</th>
                    <th class="mypage_Coupon_a">원가</th>
                    <th class="mypage_Coupon_a">할인 금액</th>
                    <th class="mypage_Coupon_a">등록일</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            </table>
            <table class="mypage_Cou">
                <thead>
                    <tr>
                        <th class="mypage_Coupon_a">번호</th>
                        <!-- onclick시 이동 - 상세페이지 -->
                        <th class="mypage_Coupon_a" onclick="">상품명</th>
                        <th class="mypage_Coupon_a">원가</th>
                        <th class="mypage_Coupon_a">할인 금액</th>
                        <th class="mypage_Coupon_a">등록일</th>
                        <th>&nbsp;</th>
                        
                    </tr>
                </thead>
                
                
        </table>
        

    </div>
    <!-- 주문 리스트  -->
    <form>
    <div class="mypage_Coupon">
        
        <header class="mypage_Title">
            <h2 class="T1">주문리스트

            </h2>
        </header>
        <table class="mypage_Coupon_Col">
            <thead>
                <tr>
                    <th class="mypage_Coupon_a">주문번호</th>
                    <th class="mypage_Coupon_a">주문자</th>
                    <th class="mypage_Coupon_a">상품명</th>
                    <th class="mypage_Coupon_a">수량</th>
                    <th class="mypage_Coupon_a">주소</th>
                    <th class="mypage_Coupon_a">전화</th>
                    <th class="mypage_Coupon_a">주문일</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            </table>
            <table class="mypage_Cou">
                <thead>
                    <tr>
                        <!-- 완료 -->
                        <!-- <th class="mypage_Cou_a"><span style="font-weight: bold; color: red">1</span> ( <input type="checkbox" name="result" value=""> 처리완료)</th> -->
                        <th class="mypage_Cou_a"><span style="font-weight: bold; color: blue">1</span> ( <input type="checkbox" name="result" value=""> 미처리)</th>
                        <th class="mypage_Coupon_a">주문자</th>
                        <th class="mypage_Coupon_a">상품명</th>
                        <th class="mypage_Coupon_a">수량</th>
                        <th class="mypage_Coupon_a">주소</th>
                        <th class="mypage_Coupon_a">전화</th>
                        <th class="mypage_Coupon_a">주문일</th>
                        <th>&nbsp;</th>
                        
                    </tr>
                </thead>
                
                
        </table>
        

    </div>
</form>
    <!-- Q&A 리스트  -->
    <div class="mypage_Coupon">
        <header class="mypage_Title">
            <h2 class="T1">Q&A 리스트

            </h2>
        </header>
        <table class="mypage_Coupon_Col">
            <thead>
                <tr>
                    <th class="mypage_Coupon_a">번호(답변여부)</th>
                    <th class="mypage_Coupon_a">제목</th>
                    <th class="mypage_Coupon_a">작성자</th>
                    
                    <th class="mypage_Coupon_a">등록일</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            </table>
            <table class="mypage_Cou">
                <thead>
                    <tr>
                        <th class="mypage_Coupon_a">번호(답변여부)</th>
                    <th class="mypage_Coupon_a">제목</th>
                    <th class="mypage_Coupon_a">작성자</th>
                    
                    <th class="mypage_Coupon_a">등록일</th>
                    <th>&nbsp;</th>
                        
                    </tr>
                </thead>
                
                
        </table>
        

    </div>
</div>

</section>
</body>
</html>