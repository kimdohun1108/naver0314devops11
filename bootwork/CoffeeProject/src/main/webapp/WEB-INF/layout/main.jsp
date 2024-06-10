<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
   <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
</head>
<body>
	 <!-- visual 섹션 -->
  <section class="visual">
    <div class="inner">

      <div class="title fade-in">
        <img src="../images/visual_title.png" alt="STARBUCKS DELIGHTFUL START TO THE YEARS" />
        <a href="javascript:void(0)" class="btn btn--brown">자세히 보기</a>  <!-- btn에 btn--색상 만 추가해주면 원하는 걸로 바꿀 수 있다.(전역버튼) -->
      </div>
      <div class="fade-in">
        <img src="./images/visual_cup1.png" alt="new oatmeal latte" class="cup1 image" />
        <img src="./images/visual_cup1_text.png" alt="오트밀 라떼" class="cup1 text" />
      </div>
      <div class="fade-in">
        <img src="./images/visual_cup2.png" alt="caramel crumble mocha" class="cup2 image" />
        <img src="./images/visual_cup2_text.png" alt="크럼블 카라멜 모카" class="cup2 text" />
      </div>
      <div class="fade-in">
        <img src="./images/visual_spoon.png" alt="Spoon" class="spoon" />
      </div>

    </div>
  </section>

  <!--NOTICE-->
  <section class="notice">


    <!--PROMOTION-->
    <div class="promotion">

      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <img src="./images/menu/JejuMatchaLatte.png" alt="2021 뉴이어, 스타벅스와 함께 즐겁고 활기차게 시작하세요!" />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="./images/menu/BeigeLavenderTea.png" alt="기간 내 스타벅스 카드 e-Gift를 3만원 이상 선물 시, 아메리카노 e-쿠폰을 드립니다." />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="./images/menu/HojiTeaLatte.png" alt="뉴이어 푸드와 제조 음료를 세트로 구매 시, 뉴이어 음료 BOGO(1+1) 쿠폰을 드립니다." />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="./images/menu/PeanutCreamLatte.png" alt="신년 MD 상품 포함 3만원 이상 구매 고객께 아메리카노(톨사이즈) 쿠폰을 드립니다." />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
          <div class="swiper-slide">
            <img src="./images/menu/StrawBerryCreamSmoothie.png" alt="2017 DIGITAL LUCKY DRAW 100% 당첨의 행운을 드립니다!" />
            <a href="javascript:void(0)" class="btn">자세히 보기</a>
          </div>
        </div>
      </div>

      <div class="swiper-pagination"></div>

      <div class="swiper-prev">
        <span class="material-icons">arrow_back</span>
      </div>
      <div class="swiper-next">
        <span class="material-icons">arrow_forward</span>
      </div>

    </div>
  </section>

  <!-- REWARDS  -->
  <section class="rewards">
    <div class="bg-left"></div>
    <div class="bg-right"></div>
    <div class="inner">

      <div class="btn-group">
        <div class="btn btn--reverse sign-up">회원가입</div>
        <div class="btn sign-in">로그인</div>
        <div class="btn gift">e-Gift 선물하기</div>
      </div>

    </div>
  </section>

  <!-- YOUTUBE VIDEO -->
  <section class="youtube">
    <div class="youtube__area">
      <div id="player"></div>     <!-- id는 중복 불가, 고유한 id -->
    </div>
    <div class="youtube__cover"></div>
    <div class="inner">

      <img src="./images/floating1.png" alt="Icon" class="floating floating1" />
      <img src="./images/floating2.png" alt="Icon" class="floating floating2" />

    </div>
  </section>

  <!-- SEASON PRODUCT -->
  <section class="season-product scroll-spy">
    <div class="inner">
      
      <img src="./images/floating3.png" alt="Icon" class="floating floating3" /> <!-- 방울 잘려서 여기다 놓기 -->
      <img src="./images/season_product_image.png" alt="" class="product back-to-position to-right delay-0" />

      <div class="text-group">
        <img src="./images/season_product_text1.png" alt="" class="title back-to-position to-left delay-1" >
        <img src="./images/season_product_text2.png" alt="" class="description back-to-position to-left delay-2">
        <div class="more back-to-position to-left delay-3">
          <a href="javascript:void(0)" class="btn">자세히 보기</a>
        </div>
      </div>

    </div>
  </section>

  <!-- RESERVE COFFEE  -->
  <section class="reserve-coffee scroll-spy">
    <div class="inner">

      <img src="./images/reserve_logo.png" alt="" class="reserve-logo back-to-position to-right delay-0">

      <div class="text-group">
        <img src="./images/reserve_text.png" alt="" class="description back-to-position to-right delay-1">
        <div class="more back-to-position to-right delay-2">
          <a href="javascript:void(0)" class="btn btn--gold">자세히 보기</a>
        </div>
      </div>

      <img src="./images/reserve_image.png" alt="" class="product back-to-position to-left delay-3">
    </div>
  </section>


  <!-- PICK YOUR FAVORITE -->
  <section class="pick-your-favorite scroll-spy">
    <div class="inner">

      <div class="text-group">
        <img src="./images/favorite_text1.png" alt="" class="title back-to-position to-right delay-0">
        <img src="./images/favorite_text2.png" alt="" class="description back-to-position to-right delay-1">
        <div class="more back-to-position to-right delay-2">
          <a href="javascript:void(0)" class="btn btn--white">자세히 보기</a>
        </div>
      </div>

    </div>
  </section>


  <!-- RESERVE STORE  -->
  <section class="reserve-store">
    <div class="inner">

      <div class="medal">
        <div class="front">
          <img src="./images/reserve_store_medal_front.png" alt="">
        </div>
        <div class="back">
          <img src="./images/reserve_store_medal_back.png" alt="">
          <a href="javascript:void(0)" class="btn">
            매장안내
          </a>
        </div>
      </div>

    </div>
  </section>


  <!-- FIND THE STORE -->
  <section class="find-store scroll-spy">
    <div class="inner">

      <img src="./images/find_store_texture1.png" alt="" class="texture1">
      <img src="./images/find_store_texture2.png" alt="" class="texture2">
      <img src="./images/find_store_picture1.jpg" alt="" class="picture picture1 back-to-position to-right delay-0">
      <img src="./images/find_store_picture2.jpg" alt="" class="picture picture2 back-to-position to-right delay-1">

      <div class="text-group">
        <img src="./images/find_store_text1.png" alt="" class="title back-to-position to-left delay-0">
        <img src="./images/find_store_text2.png" alt="" class="description back-to-position to-left delay-1">
        <div class="more back-to-position to-left delay-2">
          <a href="javascript:void(0)" class="btn">매장찾기</a>
        </div>
      </div>

    </div>
  </section>

  <!--FOOTER-->
  <footer>
    <div class="inner">

      <ul class="menu">
        <li><a href="javascript:void(0)" class="green">개인정보처리방침</a></li>
        <li><a href="javascript:void(0)">홈페이지 이용약관</a></li>
        <li><a href="javascript:void(0)">위치정보 이용약관</a></li>
      </ul>

      <p class="copyright">
        &copy; <span class="this-year"></span> 2024 WOODO COFFEE. All Rights Reserved.
      </p>

    </div>
  </footer>

  <div id="to-top">
    <div class="material-icons">arrow_upward</div>
  </div>
</body>
</html>