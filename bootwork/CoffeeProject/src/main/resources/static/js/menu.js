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





