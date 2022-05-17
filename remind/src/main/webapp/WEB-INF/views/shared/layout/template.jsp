<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible"  content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Remind</title>
 <!-- 외부에서 정보를 빠르게 파악해야 함으로 위쪽에 적어준다. -->
 <!-- 오픈그래프 -->
 <meta property="og:type" content="website" />
 <meta property="og:site_name" content="Starbucks" />
 <meta property="og:title" content="Starbucks Coffee Korea" />
 <meta property="og:description" content="당신의 기억을 조금이나마 연장하기 위해 만들어진 사이트입니다." />
 <meta property="og:image" content="./resources/img/remind_logo.jpg" />
 <meta property="og:url" content="https://remind.co.kr" />
 <!-- 트위터 카드 -->
 <meta property="twitter:card" content="summary" />
 <meta property="twitter:site" content="Starbucks" />
 <meta property="twitter:title" content="Starbucks Coffee Korea" />
 <meta property="twitter:description" content="당신의 기억을 조금이나마 연장하기 위해 만들어진 사이트입니다." />
 <meta property="twitter:image" content="./resources/img/remind_logo.jpg" />
 <meta property="twitter:url" content="https://remind.co.kr" />
<!--파비콘 해상도를 다른 것으로 작성하려한다.-->
 <link rel="icon" href="./favicon.png" />
 <!--브라우저 스타일 초기화-->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
 <link rel="preconnect" href="https://fonts.gstatic.com" />
 <!-- 구글 폰트 적용 -->
 <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
 <!-- 구글 머테리얼 아이콘 적용 -->
 <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<!-- css -->
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" />
<!-- script -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

</head>
<body>
    <tiles:insertAttribute name="header" />
    
    <tiles:insertAttribute name="body" />
    
    <tiles:insertAttribute name="footer" />
</body>
</html>