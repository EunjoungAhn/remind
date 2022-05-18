<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
		<!-- css -->
		<link href="${pageContext.request.contextPath}/resources/css/jquery.fullPage.css" rel="stylesheet" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
		
		<style>
			video { width: 1920px; height:1080px; display: block; margin: 20px auto; }
			.animate__animated.animate__bounceInDown {
			  --animate-duration: 2s;
			}
			
			.animate__animated animate__zoomInDown{
			  --animate-duration: 2s;
			  --animate-delay: 1s;
			}
			
			.animate__animated.animate__heartBeat.active {
			  --animate-duration: 2s;
			  --animate-delay: 3s;
			}
		</style>
		
		<div id="fullpage">
			<div class="section">
				<!--VIDEO-->
				<video muted autoplay loop id="vid">
			      <source src="${pageContext.request.contextPath}/resources/img/video.mp4" type="video/mp4">
			    </video>
			</div>
			<div class="section" id="section2">
				<h5 class="animate__animated bounceInDown">Remind</h5>
				<h5 class="animate__animated zoomInDown">으아아아아!</h5>
				<h5 class="animate__animated heartBeat">머리 지끈</h5>
			</div>
			<div class="section">
				<h5>Remind</h5>
				<h5 class="animate__animated jackInTheBox">머리 지끈</h5>
			</div>
			<div class="section">
				<h5>Remind</h5>
				<h5 class="animate__animated slideOutUp">머리 지끈</h5>
			</div>
		</div>
		
		<script>
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
					//options here
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
							animateCSS('.bounceInDown', 'animate__bounceInDown')
							animateCSS('.zoomInDown', 'animate__zoomInDown')
							animateCSS('.heartBeat', 'animate__heartBeat')
						}else if(index == 3){
							console.log('3번째 인덱스');
							animateCSS('.jackInTheBox', 'animate__jackInTheBox')
						}else if(index == 4){
							console.log('4번째 인덱스');
							animateCSS('.slideOutUp', 'animate__slideOutUp')
						}
					},	
					/*
					// 페이지 이동할 때
					'onLeave' : function (index, nextIndex, direction){
						if (index == 3 && direction == 'down'){
							alert ('3번에서 4번으로');
						} else if (index == 3 && direction == 'up'){
							alert ('3번에서 2번으로');
						}
					}
					*/
				});
			});
		</script>
		<!-- script -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.fullPage.js"></script>
