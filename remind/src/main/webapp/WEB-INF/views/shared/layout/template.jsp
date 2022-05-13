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
<link rel="alternate" hreflang="ko" href="" />
<link rel="canonical" href="" />
<meta name="apple-mobile-web-app-title" content="" />
<meta name="robots" content="noindex,nofollow"/>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<link rel="alternate" hreflang="x-default" href=""/>
<link rel="alternate" hreflang="ko-kr" href=""/>
<link rel="icon" type="image/x-icon" href="/favicon.png" />

<script src="${pageContext.request.contextPath}/resources/scripts/base.js"></script>

</head>
<body>
    <tiles:insertAttribute name="header" />
    <div id="container">
       <tiles:insertAttribute name="body" />
    </div>
    
    <tiles:insertAttribute name="footer" />
</body>
</html>