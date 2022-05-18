# remind Java 공부를 위한 개인 프로젝트 셋팅입니다.

1. GCP를 이용한 클라우드 서버 연동.
2. MYSQL를 이용한 DB 관리.
3. 메인 home 화면을 fullPage 작업을 하였다.</br>
기존 간단한 소스를 적용후, 조금 더 이쁜 무료 라이브러리 fullpage.js 소스로 대체하였다.</br>
4.메인 home의 애니메이션은 https://animate.style/#usage 의 Animate.css cdn을 사용하였다.

### Animate.css 응용하기

```javascript
function animateCSS(element, animationName, callback) {
    const node = document.querySelector(element)
    node.classList.add('animated', animationName)

    function handleAnimationEnd() {
        node.classList.remove('animated', animationName)
        node.removeEventListener('animationend', handleAnimationEnd)

        if (typeof callback === 'function') callback()
    }

    node.addEventListener('animationend', handleAnimationEnd)
}
```
자바스크릅트 소스를 넣은 후</br>
실행하고자 하는 위치를 설정하면 됩니다.
```javascript
  animateCSS('.my-element', 'bounce')

  // or
  animateCSS('.my-element', 'bounce', function() {
    // Do something after animation
  })
```

[풀페이지 관련 소스]
```html
  <div class="box" style="background-color:red;">1</div>
  <div class="box" style="background-color:orange;">2</div>
  <div class="box" style="background-color:yellow;">3</div>
  <div class="box" style="background-color:green;">4</div>
  <div class="box" style="background-color:blue;">5</div>
  <div class="box" style="background-color:indigo;">6</div>
  <div class="box" style="background-color:violet;">7</div>
```

```css
  html,body{ margin:0; padding:0; width:100%; height:100%;}
  .box{ width:100%; height:100%; position:relative; color:#ffffff; font-size:24pt;}
```

```javascript
  // 적용할 클래스명
        //var className = "box";
        // 지금의 스크롤 위치를 담을 변수
        var currentScroll = 0;
        // 에니메이션 효과를 주기위한 function 명 선언
        var tim;
        window.onload = function () {
            /* Div Class 명 */
            // box클래스 추출
            var box = document.getElementsByClassName('box');
            // box클래스 개수만큼 실행
            for (var i = 0; i < box.length; i++) {
                // box 에 각각 마우스 휠 감지
                // 휠감지
                box[i].addEventListener("mousewheel", MouseWheelHandler, false);
                //box[i].onmousewheel = function(){MouseWheelHandler};
                // firefox 용 휠처리
                box[i].addEventListener("DOMMouseScroll", MouseWheelHandler, true);
            }
        }
        function MouseWheelHandler(e) {
            // 스크롤 취소시킴(이걸 안할경우 도중에 명령을 받아 화면이 덜덜 거릴수 있음)
            e.preventDefault();
            // 휠값처리
            var delta = 0;
            if (!event) {event = window.event;}
            if (event.wheelDelta) {
                delta = event.wheelDelta / 120;
                if (window.opera) {delta = -delta;}
            }
            else if (event.detail){
                delta = -event.detail / 3;
            }
 
            // 여러개일경우 다른 selector 을 확인하기위한 상위 dom 으로 이동
            var p = e.target.parentElement;
            // 몇번째 dom 인지 저장
            var index = Array.prototype.indexOf.call(p.children, e.target);
            // 같은 위치의 돔목록 을 저장
            var boxArr = e.target.parentElement.children;
            // 지금의 스크롤 위치 저장
            currentScroll = document.documentElement.scrollTop || document.body.scrollTop;
            // 다음위치의 좌표(기본이므로 현재의 Y 좌표 저장)
            var NextTarget = currentScroll;
            // 마우스휠 위로
            if (delta > 0) {
                // 맨처음 지점 제외
                if (index > 0) {
                    // 이전 dom 의 index 번호
                    var no = (index - 1);
                    // 좌표위치 저장
                    NextTarget = boxArr[no].offsetTop;
                }
            }
            // 마우스휠 아래로
            else if (delta < 0)
            {
                // 맨마지막 지점 제외
                if (index < boxArr.length - 1) {
                    // 다음 dom 의 index 번호
                    var no = (index + 1);
                    // 좌표위치 저장
                    NextTarget = boxArr[no].offsetTop;
                }
            }
            // 애니메이션
            // 필요없으면 바로 window.scrollTo(0, NextTarget);
            // 에니메이션 초기화
            clearInterval(tim);
            // 애니메이션 실행
            tim = setInterval(tran, 1);
            // 애니메이션 function
            function tran() {
                // 이동속도 숫자가 작아질수록 느려짐
                var speed = 5;
                // 현재 스크롤과 이동후 스크롤이 같으면 정지시킨다 
                if (currentScroll == NextTarget) {
                    clearInterval(tran);
                } else {
                    // 스크롤을 위로 올릴 경우
                    if (currentScroll - speed > NextTarget)
                    {
                        currentScroll -= speed;
                    }
                    // 스크롤을 내일 경우
                    else if (currentScroll + speed < NextTarget)
                    {
                        currentScroll += speed;
                    }
                    // 스크롤이 속도로 지정된 변수보다 작을 경우 강제적으로 맞춰준다
                    else
                    {
                        currentScroll = NextTarget;
                    }
                    // 스크롤위치 변경
                    window.scrollTo(0, currentScroll);
                }
            }
 
        }
```
위 소스의 출처: https://webty.tistory.com/106f
</br>
fullPage.js 출처: https://github.com/alvarotrigo/fullPage.js/

# 프로젝트 개요:
단어와 그 뜻을 적고 암기 테스트를 하는 사이트
