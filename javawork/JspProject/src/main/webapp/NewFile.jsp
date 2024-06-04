<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

  <!-- 타이틀 지정 -->
  <title>WOODO COFFEE</title> 

  <!-- favicon을 루트경로에 놓으면 index에 자동으로 들어가짐 -->
  <!-- link로 파비콘 삽입하는 방법도 있음 -->
  <link rel="icon" href="./images/favicon.png"/> 

  <!-- 브라우저에서 기본적으로 제공하는 스타일 삭제 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"> 

  <!-- 폰트 적용 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">

  <!-- 아이콘 적용 -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

  <!-- <link rel="stylesheet" href="./css/common.css">
  <link rel="stylesheet" href="./css/main.css"> -->

  <!-- gsap -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js" integrity="sha512-H6cPm97FAsgIKmlBA4s774vqoN24V5gSQL4yBTDOY2su2DeXZVhQPxFK4P6GPdnZqM9fg1G3cMv5wD7e6cFLZQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollToPlugin.min.js" integrity="sha512-agNfXmEo6F+qcj3WGryaRvl9X9wLMQORbTt5ACS9YVqzKDMzhRxY+xjgO45HCLm61OwHWR1Oblp4QSw/SGh9SA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  
  <!-- SWIPER -->
  <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
  <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

  <!-- scrollMagic -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js" integrity="sha512-8E3KZoPoZCD+1dgfqhPbejQBnQfBXe8FuwL4z/c8sTrgeDMFEnoyTlH3obB4/fV+6Sg0a0XF+L/6xS4Xx1fUEg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- 
  <script defer src="./js/youtube.js"></script>
  <script defer src="./js/common.js"></script>
  <script defer src="./js/main.js"></script> -->
</head>
<script>
    const badgeEl = document.querySelector('header .badges');
const toTopEl = document.querySelector('#to-top');

window.addEventListener('scroll', _.throttle(function(){
  // lodash  _.throttle(함수, 시간)
  console.log(window.scrollY);
  if(window.scrollY > 500) {  // scroll 위치가 500 보다 크면?
    // 배지 숨기기
        //gsap.to(요소, 지속시간, 옵션) - gsap 애니메니션 라이브러리 사용
        gsap.to(badgeEl, 0.6, {
          opacity: 0,
          display: 'none'   // 시각적으로뿐 아니라 실제로도 없어야 해서
        });
    // 버튼 보이기
        gsap.to(toTopEl, .2, {
          x: 0
        });
  } else{
    // 배지 보이기        
        gsap.to(badgeEl, 0.6, {
          opacity: 1,
          display: 'block' 
        });
    // 버튼 숨기기!
        gsap.to(toTopEl, .2, {
          x: 100
        });
  }
}, 300));


// 맨위로
toTopEl.addEventListener('click', function(){
  gsap.to(window, .7, {
    scrollTo: 0   // 0.7초 동안 맨위로 올려준다.
  });
});


// 음료 사진 fade-in
const fadeEls = document.querySelectorAll('.visual .fade-in'); 
fadeEls.forEach(function(fadeEl, index) {
  //gsap.to(요소, 지속시간, 옵션) - gsap 애니메니션 라이브러리 사용
  gsap.to(fadeEl, 1, {
    delay: (index + 1) * .7,  // 첫번째 사진 0.7초 뒤에, 두번째 사진 1.4초 뒤에, 세번째 사진 2.1초 뒤에
    opacity: 1
  });
});



/**
 * 슬라이드 요소 관리
 */
 new Swiper('.notice-line .swiper-container', {
  direction: 'vertical', // 수직 슬라이드
  autoplay: true, // 자동 재생 여부
  loop: true // 반복 재생 여부
})
new Swiper('.promotion .swiper-container', {
  // direction: 'horizontal', // 수평 슬라이드
  autoplay: { // 자동 재생 여부
    delay: 5000 // 5초마다 슬라이드 바뀜
  },
  loop: true, // 반복 재생 여부
  slidesPerView: 3, // 한 번에 보여줄 슬라이드 개수
  spaceBetween: 10, // 슬라이드 사이 여백
  centeredSlides: true, // 1번 슬라이드가 가운데 보이기
  pagination: { // 페이지 번호 사용 여부
    el: '.promotion .swiper-pagination', // 페이지 번호 요소 선택자
    clickable: true // 사용자의 페이지 번호 요소 제어 가능 여부
  },
  navigation: { // 슬라이드 이전/다음 버튼 사용 여부
    prevEl: '.promotion .swiper-prev', // 이전 버튼 선택자
    nextEl: '.promotion .swiper-next' // 다음 버튼 선택자
  }
});
new Swiper('.awards .swiper-container', {
  // direction: 'horizontal', // 수평 슬라이드
  autoplay: true, // 자동 재생 여부
  loop: true, // 반복 재생 여부
  spaceBetween: 30, // 슬라이드 사이 여백
  slidesPerView: 5, // 한 번에 보여줄 슬라이드 개수
  // slidesPerGroup: 5, // 한 번에 슬라이드 할 개수(전체 개수로 나뉘어야 함)
  navigation: { // 슬라이드 이전/다음 버튼 사용 여부
    prevEl: '.awards .swiper-prev', // 이전 버튼 선택자
    nextEl: '.awards .swiper-next' // 다음 버튼 선택자
  }
});


/**
 * Promotion 슬라이드 토글 기능
 */
// 슬라이드 영역 요소 검색!
const promotionEl = document.querySelector('.promotion')
// 슬라이드 영역를 토글하는 버튼 검색!
const promotionToggleBtn = document.querySelector('.toggle-promotion')
// 슬라이드 영역 숨김 여부 기본값!
let isHidePromotion = false
// 토글 버튼을 클릭하면,
promotionToggleBtn.addEventListener('click', function () {
  // 슬라이드 영역 숨김 여부를 반댓값으로 할당!
  isHidePromotion = !isHidePromotion
  // 요소를 숨겨야 하면,
  if (isHidePromotion) {
    promotionEl.classList.add('hide')
  // 요소가 보여야 하면,
  } else {
    promotionEl.classList.remove('hide')
  }
});


// 범위 랜덤 함수(소수점 2자리까지)
function random(min, max) {
  // `.toFixed()`를 통해 반환된 문자 데이터를,
  // `parseFloat()`을 통해 소수점을 가지는 숫자 데이터로 변환
  return parseFloat((Math.random() * (max - min) + min).toFixed(2))
}
// 유튜브 영상에 떠있는 공 애니메이션
function floatingObject(selector, delay, size) {
  // gsap.to(요소, 시간, 옵션); https://greensock.com/docs/v3/GSAP/gsap.to()
  gsap.to(
    selector, // 선택자
    random(1.5, 2.5), // 애니메이션 동작 시간
    { // 옵션
      y: size,
      repeat: -1,
      yoyo: true, 
      ease: Power1.easeInOut,
      delay: random(0, delay)
    }
  );
}
floatingObject('.floating1', 1, 15);
floatingObject('.floating2', .5, 15);
floatingObject('.floating3', 1.5, 20);

// ScrollMagic
const spyEls = document.querySelectorAll('section.scroll-spy')
spyEls.forEach(function(spyEls){
  new ScrollMagic
    .Scene({
      triggerElement: spyEls,  // 보여짐 여부를 감시할 요소를 지정
      triggerHook: .8          // 뷰포트 0.8 지점에 걸리면 어떠한 내용이 실행됨
    })          
    .setClassToggle(spyEls, 'show')
    .addTo(new ScrollMagic.Controller());         // 메소드 체이닝
});

//common

const searchEl = document.querySelector('.search'); // 클래스가 search인 요소를 검색해서 그것을 searchEl에 담는다
// const searchInputEl = document.querySelector('.search input'); 
const searchInputEl = searchEl.querySelector('input'); // 위에 코드랑 똑같은 기능이지만 더 효율적임

searchEl.addEventListener('click', function(){
  searchInputEl.focus();  // searchEl를 클릭하면 searchInputEl를 focus하는 함수를 실행한다.
});

searchInputEl.addEventListener('focus', function(){
  searchEl.classList.add('focused'); // searchEl를 가지고 있는 요소에 focused 를 추가하겠다. 
  searchInputEl.setAttribute('placeholder', '통합검색'); // html속성을 attribute라고 한다 -> setAttribute : searchInputEl에 어떤 html 속성을 지정한다.
}); 

searchInputEl.addEventListener('blur', function(){    // focus 반대개념 : blur(focus가 해제되면)
  searchEl.classList.remove('focused'); // searchEl를 가지고 있는 요소에 focused 를 삭제하겠다. 
  searchInputEl.setAttribute('placeholder', ''); // html속성을 attribute라고 한다 -> setAttribute : searchInputEl에 어떤 html 속성을 지정한다.
}); 




// FOOTER 연도 출력
const thisYear = document.querySelector('.this-year');
thisYear.textContent = new Date().getFullYear();    //  getFullYear : 2021
    // textContent : 값을 지정하거나 글자 내용들의 값을 알아내줌


// youtube

// Youtube IFrame API를 비동기로 로드합니다.
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// onYouTubePlayerAPIReady 함수 이름은,
// Youtube IFrame Player API에서 사용하는 이름이기 때문에,
// 다르게 지정하면 동작하지 않습니다!
// 그리고 함수는 전역(Global) 등록해야 합니다!
function onYouTubePlayerAPIReady() {
  // <div id="player"></div>
  new YT.Player('player', {
    videoId: 'An6LvWQuj_8', // 최초 재생할 유튜브 영상 ID
    playerVars: {
      autoplay: true, // 자동 재생 유무
      loop: true, // 반복 재생 유무
      playlist: 'An6LvWQuj_8' // 반복 재생할 유튜브 영상 ID 목록
    },
    events: {
      // 영상이 준비되었을 때,
      onReady: function (event) {
        event.target.mute() // 음소거!
      }
    }
  })
}


</script>
<style>
    /* COMMON */
body{
  color: #333; 
  font-size: 16px;
  font-weight: 400;   /* 글자두께 100~900 */
  line-height: 1.4;   /* 줄의 높이(행간) */
  font-family: 'Nanum Gothic', sans-serif;
}
img {
  display: block;   /* 이제부터 이미지를 인라인요소(글자)로 취급하지 않고 하나의 레이아웃으로 취급하겠다. */
}
a {
  text-decoration: none;  /* 이 프로젝트에서 a태그의 밑줄을 모두 삭제 */
}
.inner {
  width: 1100px;
  margin: 0 auto;   /* 가운데 정렬 */
  position: relative;  /* 위치상의 부모요소가 되도록 */
}
.btn {
  width: 130px;
  padding: 10px;
  border: 2px solid #333;
  border-radius: 4px;
  color: #333;
  font-size: 16px;
  font-weight: 700;
  text-align: center;
  cursor: pointer;
  box-sizing: border-box;   /* 요소가 커지지 않도록 */
  display: block;
  transition: .4s;  /* 전환효과 자연스럽게 */ 
}
.btn:hover {
  background-color: #333;
  color: #fff;
}
.btn.btn--reverse {   /* 상태가 다음과 같은 클래스는? */
  background-color: #333;
  color: #fff;
}
.btn.btn--reverse:hover {
  background-color: transparent;    /* 마우스 떼면 원래대로 돌아오기 transparent(투명) */
  color: #333;
}
.btn.btn--brown {   
  border-color: #592B18;
  color: #592B18;
}
.btn.btn--brown:hover {
  color: #fff;
  background-color: #592B18;
}
.btn.btn--gold {
  color: #D9AA8A;
  border-color: #D9AA8A;
}
.btn.btn--gold:hover {
  color: #fff;
  background-color: #D9AA8A;
}
.btn.btn--white {
  color: #fff;
  border-color: #fff;
}
.btn.btn--white:hover {
  color: #333;
  background-color: #fff;
}
.back-to-position {
  opacity: 0;
  transition: 1s;
}
.back-to-position.to-right {
  transform: translateX(-150px);
} 
.back-to-position.to-left {
  transform: translateX(150px);
} 
.show .back-to-position {
  opacity: 1;
  transform: translateX(0);
}
.show .back-to-position.delay-0 {
  transition-delay: 0s;
}
.show .back-to-position.delay-1 {
  transition-delay: .3s;
}
.show .back-to-position.delay-2 {
  transition-delay: .6s;
}
.show .back-to-position.delay-3 {
  transition-delay: .9s;
}

/* HEADER */
header {
  width: 100%;
  background-color: #ffad41;
  border-bottom: 1px solid #c8c8c8;
  position: fixed;
  top: 0;
  z-index: 9;
}
header > .inner {     /* > 헤더안에 있는 inner에만 적용하라는 것 */
  height: 120px;
  width: 1350px;
}
header .logo {
  height: 87px;
  position: absolute;   /* 자식요소에 포지션 지정 : 수직 가운데 정렬 absolute  */
  top: 0;
  bottom: 0;
  margin: auto;
  /* 수직가운데 정렬 할 때 필요한 것들
      1. height
      2. top
      3. bottom
      4. margin: auto
      5. position: absolute(자식에)
      6. position: relative(부모에) */

  left: 0;
  /* 수평가운데 정렬 할 때 필요한 것들
      1. left
      2. right
      3. margin: auto
      4. width */
}


header .sub-menu{
  position: absolute;
  top: 10;
  right: 0;
  display: flex; /* 요소들이 수평정렬됨 */ 
}
header .sub-menu ul.menu {
  font-family: Arial, sans-serif;
  display: flex;
}
header .sub-menu ul.menu li {
  position: relative;
}
header .sub-menu ul.menu li::before { /* :: 가상요소 선택자 */
  /* 메뉴 구분선 */
  content: "";
  display: block;
  width: 1px;
  height: 12px;
  background-color: #e5e5e5;
  position: absolute;
  top: 0;
  bottom: 0;
  margin: auto;
}
header .sub-menu ul.menu li:first-child::before { 
  /* 첫번째 요소를 삭제, 가장 왼쪽의 구분선 삭제 */
  display: none;
}
header .sub-menu ul.menu li a {
  font-size: 12px;
  padding: 11px 16px;
  display: block;     /* a태그를 인라인요소가 아닌 블록요소로 지정해줌 */ 
  color: #656565;
}
header .sub-menu ul.menu li a:hover { /* hover : a부분에 마우스 올리면 어떻게 처리하겠다 지정 */
  color: #000;  /* 마우스 올리면 글자 검정색으로 바뀜 */
}
header .sub-menu .search {
  height: 34px;
  position: relative; /* search icon 부모요소라서 */
}
header .sub-menu .search input {
  /* 검색창 */
  width: 36px;
  height: 34px;
  padding: 4px 10px;
  border: 1px solid #ccc;
  box-sizing: border-box;
  border-radius: 5px;   /* 테두리 둥글게 */
  outline: none;        /* 클릭할 때 테두리선 색 바뀌는 거 삭제 */ 
  background-color: #fff;
  color: #777; 
  transition: width .4s; /* 전환효과 지정 */
  font-size: 12px;
}
header .sub-menu .search input:focus { /* input이 focus되면 어떻게 할 건지 지정 */ 
  width: 190px;
  border-color: #ffad41;
}
header .sub-menu .search .material-icons {
  /* search 아이콘 */
  height: 24px; 
  position: absolute;
  top: 0;
  bottom: 0;
  right: 5px;
  margin: auto;
  transition: .4s;
}
header .sub-menu .search.focused .material-icons {
  /* search icon이 focused 됐을 때 아이콘 안 보이게 하기 */ 
  opacity: 0;  /* 완전히 투명하게 */
}

header .main-menu {
  display: flex;    /* flex : 각각의 메뉴들을 수평 정렬 */
  position: absolute;
  bottom: 0;
  right: 0;
  z-index: 1;
}
header .main-menu .item {
  
}
header .main-menu .item .item__name {
  padding: 10px 20px 34px 20px; 
  font-family: Arial, sans-serif;
  font-size: 13px;
}
header .main-menu .item:hover .item__name { /* hover를 item__name 말고 item에 직접 부여한다. */
  background-color: #2c2a29;
  color: #ffad41;
  border-radius: 6px 6px 0 0;  /* 좌상단, 우상단만 모서리 깎기 */
}
header .main-menu .item .item__contents {
  width: 100%;
  position: fixed;  /* 뷰포트 기준으로 고정 */
  left: 0;
  display: none;
}
header .main-menu .item:hover .item__contents {
  display: block;
}
header .main-menu .item .item__contents .contents__menu {
  background-color: #2c2a29;
}
header .main-menu .item .item__contents .contents__menu > ul {    /* > 자식선택자로 정확하게 지정 */
  display: flex;    /* 요소들이 수평으로 정렬 되도록 */
  padding: 20px 0;
}
header .main-menu .item .item__contents .contents__menu > ul > li {    
  width: 220px;
}
header .main-menu .item .item__contents .contents__menu > ul > li h4 {    
  padding: 3px 0 12px 0; 
  font-size: 14px;
  color: #fff;
}
header .main-menu .item .item__contents .contents__menu > ul > li ul li {    
  padding: 5px 0;
  font-size: 12px;
  color: #999;
  cursor: pointer;
}
header .main-menu .item .item__contents .contents__menu > ul > li ul li:hover { 
  /* 드롭다운 메뉴 글자 위에 마우스 올리면 글자색 변하게 */
  color: #ffad41;

}
/* header .main-menu .item .item__contents .contents__texture {
  padding: 26px 0;
  font-size: 12px;
  background-image: url("../images/main_menu_pattern.jpg");
} */
header .main-menu .item .item__contents .contents__texture h4 {
  color: #999;
  font-weight: 700;
}
header .main-menu .item .item__contents .contents__texture p {
  color: #ffad41;
  margin: 4px 0 14px;
}

/* 사이드 뱃지 */
header .badges {
  position: absolute;
  top: 132px; 
  right: 12px; 
}
header .badges .badge {
  border-radius: 10px;
  overflow: hidden;     /* 둥근 모서리 밖으로 이미지가 넘치지 않도록 숨기기  */
  margin-bottom: 12px;  /* 아래쪽 바깥 여백을 줘서 뱃지 사이에 공백주기 */  
  box-shadow: 4px 4px 10px rgba(0,0,0,.15);   /* 박스에 그림자 주기 */
  cursor: pointer;
}





/* FOOTER */
footer {
  background-color: #272727;
  border-top: 1px solid #333;
}
footer .inner {
  padding: 40px 0 60px 0;
}
footer .menu {
  display: flex;
  justify-content: center;
}
footer .menu li {
  position: relative;
}
footer .menu li::before {
  content: "";    /* before 쓰면 무조건 content 있어야됨 */ 
  width: 3px;
  height: 3px;
  background-color: #555;
  position: absolute;
  top: 0;
  bottom: 0;
  right: -1px;
  margin: auto;
}
footer .menu li:last-child::before {
  display: none;
}
footer .menu li a {
  color: #ccc;
  font-size: 12px;
  font-weight: 700;
  padding: 15px;
  display: block;
}
footer .menu li a.green {
  color: #ffad41;
}

footer .copyright {
  color: #999;
  font-size: 12px;
  text-align: center;
  margin-top: 12px;
}

/* VISUAL */
.visual {
  margin-top: 120px;
  background-image: url("../images/visual_bg.jpg");
  background-position: center;
}
.visual .inner {
  height: 646px;
}
.visual .title {
  position: absolute;
  top: 88px;
  left: -10px;
}
.visual .title .btn {
  position: absolute;
  top: 259px;
  left: 173px;
}
.visual .cup1.image {
  position: absolute;
  bottom: 0px;
  right: -47px;
}
.visual .cup1.text {
  position: absolute;
  top: 38px;
  right: 171px;
}
.visual .cup2.image {
  position: absolute;
  bottom: 0;
  right: 162px;
}
.visual .cup2.text {
  position: absolute;
  top: 321px;
  right: 416px;
}
.visual .spoon {
  position: absolute;
  bottom: 0;
  left: 275px;
}
.visual .fade-in {
  opacity: 0;
}


/*NOTICE*/
/*NOTICE LINE*/
.notice .notice-line {
  position: relative;
}
.notice .notice-line .bg-left {
  width: 50%;
  height: 100%;
  background-color: #333;
  position: absolute;
  top: 0;
  left: 0;
}
.notice .notice-line .bg-right {
  width: 50%;
  height: 100%;
  background-color: #f6f5ef;
  position: absolute;
  top: 0;
  right: 0;
}
.notice .notice-line .inner {
  height: 62px;
  z-index: 1;
  display: flex;
}
.notice .notice-line .inner__left {
  width: 60%;
  height: 100%;
  background-color: #333;
  display: flex;
  align-items: center;
}
.notice .notice-line .inner__left h2 {
  color: #fff;
  font-size: 17px;
  font-weight: 700;
  margin-right: 20px;
}
.notice .notice-line .inner__left .swiper-container {
  overflow: hidden;
  height: 62px;
  flex-grow: 1;
}
.notice .notice-line .inner__left .swiper-slide {
  height: 62px;
  display: flex;
  align-items: center;
}
.notice .notice-line .inner__left .swiper-slide a {
  color: #fff;
}
.notice .notice-line .inner__left .notice-line__more {
  width: 62px;
  height: 62px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.notice .notice-line .inner__left .notice-line__more .material-icons {
  color: #fff;
  font-size: 30px;
}
.notice .notice-line .inner__right {
  width: 40%;
  height: 100%;
  display: flex;
  justify-content: flex-end;
  align-items: center;
}
.notice .notice-line .inner__right h2 {
  font-size: 17px;
  font-weight: 700;
}
.notice .notice-line .inner__right .toggle-promotion {
  width: 62px;
  height: 62px;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
}
.notice .notice-line .inner__right .toggle-promotion .material-icons {
  font-size: 30px;
}
/*PROMOTION*/
.notice .promotion {
  /*width: auto;*/
  height: 693px;
  background-color: #f6f5ef;
  position: relative;
  overflow: hidden;
  transition: height .4s;
}
.notice .promotion img{
  width: 500px;
  height: 500px;
}
.notice .promotion.hide {
  /* promotion 숨기기 버튼 눌렀을 때 없어지도록 */
  height: 0;
}
.notice .promotion .swiper-container {
  /* 819px 슬라이드 3개와 그 사이 여백 10px씩 = 2477px */
  width: calc(970px * 3 + 20px);
  height: 553px;
  position: absolute;
  top: 40px;
  left: 50%;
  margin-left: calc((819px * 3 + 20px) / -2);
}
.notice .promotion .swiper-slide {
  position: relative;
  opacity: .5;      /* 가장자리에 있는 슬라이드는 투명하게 */
  transition: opacity 1s;
}
.notice .promotion .swiper-slide-active {
  opacity: 1;       /* 정가운데에 있는 슬라이드만 불투명하게 */
}
.notice .promotion .swiper-slide .btn {
  /*width: 130px;*/
  position: absolute;
  bottom: 0;
  left: -455px;
  right: 0;
  margin: auto;
}
.notice .promotion .swiper-pagination {
  bottom: 40px;
  left: 0;
  right: 0;
  z-index: 0;
}
.notice .promotion .swiper-pagination .swiper-pagination-bullet {
  background-color: transparent;
  background-image: url("../images/promotion_slide_pager.png");
  width: 13px;
  height: 12px;
  margin-right: 6px;
  outline: none;
}
.notice .promotion .swiper-pagination .swiper-pagination-bullet:last-child {    
  margin-right: 0;    /* 가장 마지막 동그라미 옆에는 여백X */
}
.notice .promotion .swiper-pagination .swiper-pagination-bullet-active {
  background-image: url("../images/promotion_slide_pager_on.png");
}
.notice .promotion .swiper-prev,
.notice .promotion .swiper-next {
  width: 42px;
  height: 42px;
  outline: none;
  border: 2px solid #333;
  border-radius: 50%;
  position: absolute;
  /* Swiper Container 높이의 절반만큼 끌어올림 */
  /* 버튼 높이의 절반만큼 추가로 끌어올림 */
  top: 300px;
  z-index: 1;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
  transition: .4s;
}
.notice .promotion .swiper-prev {
  left: 50%;
  margin-left: -480px;
}
.notice .promotion .swiper-next {
  right: 50%;
  margin-right: -480px;
}
.notice .promotion .swiper-prev:hover,
.notice .promotion .swiper-next:hover {
  background-color: #333;
  color: #fff;
}


/*REWARDS*/
.rewards {
  position: relative;
}
.rewards .bg-left {
  width: 50%;
  height: 100%;
  background-color: #272727;
  position: absolute;
  top: 0;
  left: 0;
}
.rewards .bg-right {
  width: 50%;
  height: 100%;
  background-color: #d5c798;
  position: absolute;
  top: 0;
  right: 0;
}
.rewards .inner {
  background-image: url("../images/rewards.jpg");
  height: 241px;
}
.rewards .btn-group {
  position: absolute;
  right: 0;
  bottom: 24px;
  width: 250px;
  display: flex;
  flex-wrap: wrap;    /* 넘치면 줄 바꿈 허용 */
}
.rewards .btn-group .btn.sign-up {
  /*width: 130px;*/
  margin-right: 10px;
}
.rewards .btn-group .btn.sign-in {
  width: 110px;
}
.rewards .btn-group .btn.gift {
  margin-top: 10px;
  flex: 1;
}

/*YOUTUBE VIDEO*/
.youtube {
  position: relative;
  height: 700px;
  background-color: #333;
  overflow: hidden;
}
.youtube .youtube__area {
  width: 1920px;
  position: absolute;
  /* 16비율 */
  left: 50%;
  margin-left: calc(1920px / -2);
  /* 9비율 */
  top: 50%;
  margin-top: calc(1920px * 9 / 16 / -2);
}
.youtube .youtube__area::before {
  content: "";
  display: block;
  /* 16:9 영상 비율로 요소 크기 만들기! */
  width: 100%;
  height: 0;
  padding-top: 56.25%;
}
.youtube .youtube__cover {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0,0,0,.3);
  background-image: url("../images/video_cover_pattern.png");
}
#player {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
}
.youtube .inner {
  height: inherit;
}
.youtube .floating1 {
  position: absolute;
  top: 50px;
  left: 0;
}
.youtube .floating2 {
  position: absolute;
  top: 350px;
  left: 150px;
}



/* SEASON PRODUCT */
.season-product {
  background-image: url("../images/season_product_bg.jpg")
}
.season-product .inner {
  height: 400px;
}
.season-product .floating3 {
  position: absolute;
  top: -200px;
  right: 0;
}
.season-product .text-group {
  position: absolute;
  top: 110px;
  right: 100px;
}
.season-product .text-group .title {
  margin-bottom: 10px;
}
.season-product .text-group .description {
  margin-bottom: 15px;
}
.season-product .text-group .more {

}

/* RESERVE COFFEE */
.reserve-coffee {
  background-image: url("../images/reserve_bg.jpg")
}
.reserve-coffee .inner {
  height: 400px;
}
.reserve-coffee .reserve-logo {
  position: absolute;
  top: 110px;
  left: 0;
}
.reserve-coffee .text-group {
  position: absolute;
  top: 124px;
  left: 208px;
}
.reserve-coffee .product {
  position: absolute;
  top: 0;
  right: 0;
}


/* PICK YOUR FAVORITE */
.pick-your-favorite {
  background-image: url("../images/favorite_bg.jpg");
  background-repeat: no-repeat;
  background-position: center;
  background-attachment: fixed;   /* 스크롤 될 때 같이 스크롤 되지 않고 뷰포트 부분에 고정되어서 움직이지 않음 */
  background-size: cover;         /* 배경 이미지를 요소에 더 넓은 너비에 맞춰서 출력 */
}
.pick-your-favorite .inner {
  padding: 110px 0;
}
.pick-your-favorite .text-group {
  margin-left: 100px;
  display: flex;
  width: 362px;
  flex-wrap: wrap;
  justify-content: flex-end;  /* 수평의 끝으로 정렬(오른쪽 정렬) */ 
}
.pick-your-favorite .text-group .title {
  margin-bottom: 40px;
}
.pick-your-favorite .text-group .description {
  margin-bottom: 40px;
}


/* RESERVE STORE */
.reserve-store {
  background-image: url("../images/reserve_store_bg.jpg");
  background-repeat: no-repeat;
  background-position: center;
  background-attachment: fixed; 
  background-size: cover; 
}
.reserve-store .inner {
  height: 600px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.reserve-store .medal {
  width: 334px;
  height: 334px;
  perspective: 600px;
}
.reserve-store .medal .front,
.reserve-store .medal .back {
  width: 334px;
  height: 334px;
  position: absolute;
  backface-visibility: hidden;
  transition: 1s;
}
.reserve-store .medal .front {
  transform: rotateY(0deg);
}
.reserve-store .medal:hover .front {
  transform: rotateY(180deg);
}
.reserve-store .medal .back {
  transform: rotateY(-180deg);
}
.reserve-store .medal:hover .back {
  transform: rotateY(0deg);
}
.reserve-store .medal .back .btn {
  position: absolute;
  top: 240px;
  left: 0;
  right: 0;
  margin: auto;
}


/* FIND STORE */
.find-store {
  background-image: url(../images/find_store_bg.jpg);
}
.find-store .inner {
  height: 400px;
}
.find-store .texture1 {
  position: absolute;
  top: 0;
  left: 400px;
}
.find-store .texture2 {
  position: absolute;
  bottom: 0;
  right: 0px; 
}
.find-store .picture {
  border-radius: 50%;
  box-shadow: 2px 2px 8px rgba(0,0,0,.5);
  position: absolute;
}
.find-store .picture1 {
  top: -60px;
  left: 0;
}
.find-store .picture2 {
  top: 150px;
  left: 250px;
}
.find-store .text-group {
  position: absolute;
  top: 120px;
  left: 550px;
}
.find-store .text-group .title {
  margin-bottom: 20px;
}
.find-store .text-group .description {
  margin-bottom: 20px;
}
/* 맨위로 아이콘 */
#to-top {
  width: 42px;
  height: 42px;
  background-color: #333;
  color: #fff;
  border: 2px solid #fff;
  border-radius: 10px;
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
  position: fixed;
  bottom: 30px;
  right: 30px;
  z-index: 9;
}
</style>
<body>

    <!-- HEADER -->
  <header>
    <div class="inner">
      <a href="./mainpage.html" class="logo">
        <img src="./images/logo.png" alt="WOODO COFFEE" />
      </a>

      <div class="sub-menu">
        <ul class="menu">
          <!-- <li>
            <a>---님</a>
          </li> -->
          <li>
            <a href="signin/signin.html">Sign In</a>
          </li>
          <li>
            <a href="join.html">회원가입</a>
          </li>
          <!-- <li>
            <a href="javascript:void(0)">My Page</a>
          </li> -->
        </ul>
        <div class="search">
          <input type="text" />
          <div class="material-icons">search</div>
        </div>
      </div>

      <ul class="main-menu">
        <li class="item">
          <div class="item__name">MENU</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>커피 & 라떼</h4>
                  <ul>
                    <li>우도 땅콩 크림라떼</li>
                    <li>리얼 넛 라떼</li>
                    <li>아메리카노</li>
                    <li>카페라떼</li>
                    <li>바닐라라떼</li>
                    <li>에스프레소</li>
                    <li>카페모카</li>
                    <li>그린티라떼</li>
                    <li>호지차라떼</li>
                    <li>그린티라떼</li>
                    <li>피치라뗴</li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <h4>에이드 & 스무디</h4>
                  <ul>
                    <li>레몬 에이드</li>
                    <li>자몽 에이드</li>
                    <li>라임 에이드</li>
                    <li>핑크 베리 에이드</li>
                    <li>망고 바나나 스무디</li>
                    <li>딸기 피치 스무디</li>
                    <li>슈 크림 스무디</li>

                  </ul>
                </li>
                <li>
                  <h4>티</h4>
                  <ul>
                    <li>케멕스 블루베리 티</li>
                    <li>케멕스 베이지 라벤더 티</li>
                    <li>뱅쇼</li>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>
                </li>
                <li>
                  <h4>푸드</h4>
                  <ul>
                    <li>치킨샐러드</li>
                    <li>콥 & 요거트 샐러드</li>
                    <li>쿠스쿠스 버섯 샐러드</li>
                    <li>버터 프렌치 토스트</li>
                  </ul>
                </li>
                <li>
                  <h4>디저트</h4>
                  <ul>
                    <li>커스터드 크림 머핀</li>
                    <li>우도 땅콩 다쿠아즈</li>
                    <li>녹차 다쿠아즈</li>
                    <li>제주 감귤 다쿠아즈</li>
                    <li>현무암 러스크</li>
                    <li>당근 현무암 케이크</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">STORE</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>매장 찾기</h4>
                  <ul>
                    <li>퀵 검색</li>
                    <li>지역 검색</li>
                    <li>My 매장</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li class="item">
          <div class="item__name">ORDER</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>지역 사회 참여 활동</h4>
                  <ul>
                    <li>회망배달 캠페인</li>
                    <li>재능기부 카페 소식</li>
                    <li>커뮤니티 스토어</li>
                    <li>청년인재 양성</li>
                    <li>우리 농산물 사랑 캠페인</li>
                    <li>우리 문화 지키기</li>
                  </ul>
                </li>
                <li>
                  <h4>환경보호 활동</h4>
                  <ul>
                    <li>환경 발자국 줄이기</li>
                    <li>일회용 컵 없는 매장</li>
                    <li>커피 원두 재활용</li>
                  </ul>
                </li>
                <li>
                  <h4>윤리 구매</h4>
                  <ul>
                    <li>윤리적 원두 구매</li>
                    <li>공정무역 인증</li>
                    <li>커피 농가 지원 활동</li>
                  </ul>
                </li>
                <li>
                  <h4>글로벌 사회 공헌</h4>
                  <ul>
                    <li>윤리경영 보고서</li>
                    <li>스타벅스 재단</li>
                    <li>지구촌 봉사의 달</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
        
        <li class="item">
          <div class="item__name">WHAT'S NEW</div>
          <div class="item__contents">
            <div class="contents__menu">
              <ul class="inner">
                <li>
                  <h4>프로모션 & 이벤트</h4>
                  <ul>
                    <li>전체</li>
                    <li>2</li>
                    <li>3</li>
                  </ul>
                </li>
                <li>
                  <h4>새소식</h4>
                  <ul>
                    <li>전체</li>
                    <li>상품 출시</li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                  </ul>
                </li>
                <li>
                  <h4>매장별 이벤트</h4>
                  <ul>
                    <li>일반 매장</li>
                    <li>신규 매장</li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </li>
      </ul>
      
    </div>

    <!-- 사이드 뱃지 -->
    <!-- <div class="badges">
      <div class="badge">
        <img src="./images/badge3.jpg" alt="Badge">
      </div>
      <div class="badge">
        <img src="./images/badge2.jpg" alt="Badge">
      </div>
    </div> -->
  </header>
    
</body>
</html>