<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
		<!-- css -->
		<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet" />
		
		<div id="fullpage">
			<div class='quick'><ul></ul></div>
			<div class="fullsection full1" pageNum="1"><span>Rmind</span></div>
			<div class="fullsection full2" pageNum="2"><span>2 PAGE</span></div>
			<div class="fullsection full3" pageNum="3"><span>3 PAGE</span></div>
			<div class="fullsection full4" pageNum="4"><span>4 PAGE</span></div>
			<div class="fullsection full5" pageNum="5"><span>5 PAGE</span></div>
		</div>
		
		<script>
			$(document).ready(function(){
				fullset();
				quickClick();
			});
		</script>
		<!-- script -->
		<script src="${pageContext.request.contextPath}/resources/js/fullpage.js"></script>
