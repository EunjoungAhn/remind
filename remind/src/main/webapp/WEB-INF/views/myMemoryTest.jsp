<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- css -->
<link href="${pageContext.request.contextPath}/resources/css/signin.css" rel="stylesheet" />
<style>
	.myMemory_wrap{
		margin-top: 120px;
		text-align: center;
	}
	.memoryRow{
		display: flex;
		justify-content: space-evenly;
	}
	.memoryCard{
		border-lcolor: solid, 2px, black;
		width: 635px;
		height: 635px;
	}
</style>
</head>
	<div class="myMemory_wrap">
       <h6 class="myMemory_wrap_title">카드 추가/삭제</h6>
       <button onclick="fnInsert()" type="button">+ 추가</button>
       <button onclick="fnDelete()" type="button">- 삭제</button>
   </div>
	<div class="memoryRow">
		<div class="memoryCard">
			<input/>
		</div>
		<div class="memoryCard">
			<input/>
		</div>
	</div>
<!-- script -->
<script type="text/javascript">
	function fnInsert() {
		console.log("추가 함수 들어옴");
		var tags = `<div class="memoryRow">
			    		<div class="memoryCard">
			    			<input/>
			    		</div>
			    		<div class="memoryCard">
			    			<input/>
			    		</div>
			    	</div>`;
        $(".myMemory_wrap").append(tags);
	};
</script>
</html>