<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<form id="frm">
	<div class="myMemory_wrap">
       <h1 class="title" style="margin-top: 150px; margin-bottom: 50px;">카드 추가/삭제</h1>
       <div class="title" id='result'>0</div>
       <button id="number" style="margin-bottom: 50px;" onclick="fnAdd()" type="button">+ 추가</button>
   </div>
   <div id="sumbit">
   		<button onclick="fnSave()" type="button">단어 등록하기</button>
   </div>
</form>
<!-- script -->
<script type="text/javascript">
	//단어 카드 추가
	var card_number = ($(".memoryRow").length)+1;
	function fnAdd() {
		var tags = '';
		tags += '<div class="memoryRow" id="row_'+card_number+'">';
		tags += '<div class="memoryCard boxIdx">'+card_number+'</div>';
		tags += '<div class="memoryCard">';
		tags += '<input name="question1" class="textInput"/>';
		tags += '</div>'
		tags += '<div class="memoryCard">';
		tags += '<input class="textInput"/>';
		tags += '</div>';
		tags += '<div class="memoryCard">';
		tags += '<button onclick="fnDelete(this);" type="button">삭제</button>';
		tags += '</div>';
		tags += '</div>';
        $(".myMemory_wrap").append(tags);
        $("#result").html($(".memoryRow").length);
        card_number++;
        let cnt = 1;
		$(".boxIdx").each(function(){			
			$(this).html(cnt);
			cnt++;
		});
	};
	
	function fnDelete(element) {		
		element.closest(".memoryRow").remove();				
		$("#result").html($(".memoryRow").length);
		let cnt = 1;
		$(".boxIdx").each(function(){			
			$(this).html(cnt);
			cnt++;
		});
	};
	
	function fnSave(){
		console.log("등록함수");
		
		let ques1 = "";
		$("input[name=question1]").each(function (){
			ques1 += $(this).val()+",";
		});
		ques1 = ques1.split()
		
		let data = {
				question1 : ques1
		};
		console.log(data);
		/*
		$.ajax({
			url: '/user/myMemoryEdit',
			type: "post",
			data: data,
			success: function(rst){
				
			}		
		});
		*/
		
	};
</script>
