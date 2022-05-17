<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
		<!-- css -->
		<link href="${pageContext.request.contextPath}/resources/css/jquery.fullPage.css" rel="stylesheet" />
		
		<div id="fullpage">
			<div class="section">Some section1</div>
			<div class="section">Some section2</div>
			<div class="section">Some section3</div>
			<div class="section">Some section4</div>
		</div>
		
		<script>
			$(document).ready(function(){
				$('#fullpage').fullpage({
					//options here
					autoScrolling:true,
					scrollHorizontally: true,
					sectionsColor: ['#FFE69A','#FFE69A','#FFE69A','#FFE69A'],
					navigation:true,
					navigationPosition: 'right',
					navigationTooltips: ['소개','의미','의도','마무리'],
					showActiveTooltip: true
				});
			});
		</script>
		<!-- script -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.fullPage.js"></script>
