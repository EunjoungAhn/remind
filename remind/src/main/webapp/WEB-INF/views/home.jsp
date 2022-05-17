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
					licenseKey: 'OPEN-SOURCE-GPLV3-LICENSE',
					autoScrolling:true,
					scrollHorizontally: true,
					//navigationPosition: 'right',
					//navigationTooltips: ['1','2','3','4'],
					//sectionColor: ['#ffcccc', '#ffffcc', '#ffeecc', '#ffeeaa'],
					//sectionSelector:'.section'
				});
			});
		</script>
		<!-- script -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.fullPage.js"></script>
