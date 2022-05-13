<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
body {
	background-color: lightgray;
}
table {
	font-weight: bold;
	font-size: 14pt;
	margin: 0 auto;
	border-spacing: 2px;
}
#btnLogin {
	width: 150px;
	text-align: center;
}
h1 {
	text-align: center;
}
</style>
</head>
<body>
	<h1>회원가입</h1>
	<section class="signin">
	    <h1>로그인</h1>
	    <div class="signin__card">
	      <h2>
	        <strong>Welcome!</strong> 스타벅스에 오신 것을 환영합니다.
	      </h2>
			<form action="../user/create">
		        <input type="text" name="UserID" placeholder="아이디를 입력하세요." />
		        <input type="password" placeholder="비밀번호를 입력하세요." />
		        <input type="submit" value="로그인" />
		        <p>
		          * 비밀번호를 타 사이트와 같이 사용할 경우 도용 위험이 있으니,<br />
		          	정기적으로 비밀번호를 변경하세요!
		        </p>
		     </form>
	      <div class="actions">
	        <button>회원가입</button>
	        <a href="javascript:void(0)">아이디 찾기</a>
	        <a href="javascript:void(0)">비밀번호 찾기</a>
	      </div>
	    </div>
	  </section>
</body>
</html>