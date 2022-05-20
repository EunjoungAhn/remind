<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!-- css -->
<link href="${pageContext.request.contextPath}/resources/css/signin.css" rel="stylesheet" />
<style>
	.title{
		font-size: 50px;
		font-family: 'Black Han Sans', sans-serif;
	}
	.myMemory_wrap{
		margin-top: 120px;
		text-align: center;
	}
	.memoryRow{
		display: flex;
		justify-content: space-evenly;
		margin-bottom: 50px;
	}
	.memoryCard{
		border-lcolor: solid, 2px, black;
		width: 35px;
		height: 35px;
	}
	.textInput{ 
		background: #fff;
		border-radius: 4px;
		cursor: pointer;
		width: 230px;
        height: 50px;
        margin-right: 15px;
        border-top: 1px solid black;
        border-left: 1px solid black;
        border-right: 1px solid black;
        border-bottom : 3px solid black;
	}
	button{
		border: 1px solid #92B4EC; 
		background-color: rgba(0,0,0,0); 
		color: #92B4EC; 
		padding: 5px;
		border-top-left-radius: 5px; 
		border-bottom-left-radius: 5px;
		border-top-right-radius: 5px;
		border-bottom-right-radius: 5px;
	}
	button:hover{ 
		color:white; 
		background-color: #92B4EC;
	}
	#sumbit{
		margin-top: 50px;
		margin-bottom: 50px;
		text-align: center;
	}

</style>
</head>
	<div class="myMemory_wrap">
       <h1 class="title" style="margin-top: 150px; margin-bottom: 50px;">카드 추가/삭제</h1>
       <div class="title" id='result'>0</div>
       <button id="number" style="margin-bottom: 50px;" onclick="fnAdd()" type="button">+ 추가</button>
   </div>
   <div id="sumbit">
   		<button onclick="fnSave()" type="submit">단어 등록하기</button>
   </div>
<!-- script -->
<script type="text/javascript">
	//단어 카드 추가
	var card_number = 0;
	var card_num = 0;
	var card_list = document.getElementsByClassName("memoryRow");
	var resultElement = document.getElementById('result');
	function fnAdd() {
		//카드 개수 증가
		for(var i=0; i < card_list.length; i++){
			card_num++;
		};
		card_number = resultElement.innerText = card_list.length+1;
		console.log("카드 갯수:",card_number);

		card_num++;
		
		var tags = `<div class='memoryRow' id="row_`+card_number+`">
						<div class='memoryCard'>`+card_number+`</div>
						<div class='memoryCard'>
							<input class="textInput"/>
						</div>
						<div class='memoryCard'>
							<input class="textInput"/>
						</div>
						<div class='memoryCard'>
							<button onclick="fnDelete(`+card_number+`)" type="button">삭제</button>
						</div>
					</div>`;
        $(".myMemory_wrap").append(tags);
        card_num++;
	};
	
	function fnDelete(card_number) {
		console.log("삭제한 번호:",card_number);
		$("#row_"+card_number).remove();
		resultElement.innerText = card_list.length;
		//번호 재배열
		for(var i=0; i < card_list.length; i++){
			card_num++;
		};
	};
	
	function fnSave(){
		console.log("등록함수");
	};
</script>
</html>