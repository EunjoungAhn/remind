<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단어 등록완료!</title>
<style>
	.addSuccess{
		background: url('${pageContext.request.contextPath}/resources/img/signin_bg.jpg');
		margin-top: 99px;
	  	padding: 15% 0 22%;
	  	background-repeat: no-repeat;
	  	background-position: center;
	  	background-attachment: fixed;
	  	background-size: cover;
	  	text-align: center;
	  	font-size: 50px;
	}
</style>
</head>
<body>
	<h1>단어를 등록하였습니다!</h1>
    <div class="addSuccess">
      <h2 style="color: #FFFFFF; font-family: 'Black Han Sans', sans-serif;">
        <strong>Remind!</strong> 이제 기억을 다시 되짚어볼까요?
      </h2>
      <br/>
		<a class="btn btn--white" style="margin: 0 auto;" href="../home">Home</a>
    </div>
</body>
</html>