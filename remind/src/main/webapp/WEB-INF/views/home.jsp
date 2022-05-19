<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
		<!-- css -->
		<link href="${pageContext.request.contextPath}/resources/css/jquery.fullPage.css" rel="stylesheet" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
		<!-- 구글폰트 적용 -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
		<style>
			video { width: 1920px; height:1080px; display: block; margin: 20px auto; }
			#Introduction{
				display: flex;
				justify-content: space-evenly;
				margin-top: 155px;
			}
			#MainText1{
				width: 560px;
				height: 750px;
				font-size: 50px;
				font-family: 'Black Han Sans', sans-serif;
			}
			#Meaning{
				display: flex;
				justify-content: space-evenly;
				margin-top: 155px;
			}
			#MainText2{
				width: 560px;
				height: 750px;
				font-size: 50px;
				font-family: 'Black Han Sans', sans-serif;
				
			}
			#Ending{
				display: flex;
				justify-content: space-evenly;
				margin-top: 155px;
			}
			#MainText3{
				width: 560px;
				height: 750px;
				font-size: 50px;
				font-family: 'Black Han Sans', sans-serif;
			}
			#MainText3 .overflow {
			  position: relative;
			  margin: 0px auto;
			  width: 200px;
			  overflow: hidden;
			  text-align: right;
			}
			#MainText3 .overflow .text {
			  display: inline-block;
			  border-bottom: 5px solid #333;
			  overflow: hidden;
			  margin: 5px 0px;
			  text-align: center;
			  font-size: 30px;
			  font-weight: bold;
			}
			#MainText3 .overflow .text span {
			    display: inline-block;
			    padding: 0px 0px 0px 5px;
			    letter-spacing: 1px;
			}
			
			.zoomInLeft{
				justify-content: space-evenly;
			}
		</style>
		
		<div id="fullpage">
			<div class="section">
				<!--VIDEO-->
				<video muted autoplay loop id="vid">
			      <source src="${pageContext.request.contextPath}/resources/img/video.mp4" type="video/mp4">
			    </video>
			</div>
			<div class="section">
				<div id="Introduction">
					<div id="MainText1">
						아직도 종이에 적어가며 <br/>
						공부 중인가요?<br/>
						단어 공부를 할때마다 누군가 도와주셨나요?<br/>
						<br/>
						이젠 걱정마세요.
					</div>
					<div>
						<img class="animate__animated heartBeat" src="${pageContext.request.contextPath}/resources/img/heartBeat.jpg" alt="의미" />
					</div>
				</div>
			</div>
			<div class="section">
				<div id="Meaning">
					<div id="MainText2">
						Remind가 도와드립니다!<br/>
						<br/>
						단어 공부 <br/>
						Rmind와 함께하세요!<br/>
					</div>
					<div>
						<img class="animate__animated jackInTheBox" src="${pageContext.request.contextPath}/resources/img/jackInTheBox.jpg" alt="의도" />
					</div>
				</div>
			</div>
			<div class="section" >
				<div id="Ending">
					<div id="MainText3">
						<div class="overflow">
    						<div class="text"><span>당신의 시험</span></div><br/>
  						</div>
  						<div class="overflow">
    						<div class="text"><span>당신의 취업</span></div><br/>
  						</div>
  						<div class="overflow">
    						<div class="text"><span>당신의 기억력</span></div><br/>
  						</div>
  						<br/>
  						<div class="overflow">
    						<div class="text"><span>Remind와 함께해보세요!</span></div>
  						</div>
					</div>
					<div>
						<img class="animate__animated zoomInLeft" src="${pageContext.request.contextPath}/resources/img/zoomInLeft.jpg" alt="마무리" />
					</div>
				</div>
			</div>
		</div>
		
		<script>
			//animateCSS 설정을 위한 함수 적용
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
		
			$(document).ready(function(){
				$('#fullpage').fullpage({
					//fullpage options
					autoScrolling:true,
					scrollHorizontally: true,
					sectionsColor: ['#FFE69A','#FFE69A','#FFE69A','#FFE69A'],
					navigation:true,
					navigationPosition: 'right',
					navigationTooltips: ['소개','의미','의도','마무리'],
					showActiveTooltip: true,
					fixedElements: '#footer',
					// 특정 인덱스일 때
					'afterLoad': function (anchorLink, index) {
						if (index == 1){
							console.log('1번째 인덱스');
							document.getElementById('vid').play();
						}else if(index == 2){
							console.log('2번째 인덱스!');
							animateCSS('.heartBeat', 'animate__heartBeat')
						}else if(index == 3){
							console.log('3번째 인덱스');
							animateCSS('.jackInTheBox', 'animate__jackInTheBox')
						}else if(index == 4){
							console.log('4번째 인덱스');
							new Scene({
								  ".overflow .text span": i => ({
								    0: {
								      transform: {
								        translateY: "100%",
								      }
								    },
								    1: {
								      transform: {
								        translateY: "0%",
								      }
								    },
								    options: {
								      delay: i * 0.5,
								    }
								  }),
								}, {
								  easing: "ease-in-out",
								  selector: true,
								  direction: "alternate",
								  iterationCount: "infinite",
								}).play();
							animateCSS('.zoomInLeft', 'animate__zoomInLeft')
						}
					},	
				});
			});
		</script>
		<!-- script -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.fullPage.js"></script>
		<script src="//daybrush.com/scenejs/release/latest/dist/scene.min.js"></script>
