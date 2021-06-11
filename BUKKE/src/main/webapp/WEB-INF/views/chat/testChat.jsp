<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
	<title>Chatting</title>
	<style>
		*{
			margin:0;
			padding:0;
		}
		.container{
			width: 500px;
			margin: 0 auto;
			padding: 25px
		}
		.container h1{
			text-align: left;
			padding: 5px 5px 5px 15px;
			color: #FFBB00;
			border-left: 3px solid #FFBB00;
			margin-bottom: 20px;
		}
		.chatting{
			background-color: #000;
			width: 500px;
			height: 500px;
			overflow: auto;
		}
		.chatting .me{
			color: #F6F6F6;
			text-align: right;
		}
		.chatting .others{
			color: #FFE400;
			text-align: left;
		}
		input{
			width: 330px;
			height: 25px;
		}
		/* #yourMsg{
			display: block;
		} */
	</style>
</head>

<script type="text/javascript">
	$( document ).ready(function() {
		wsOpen();
		chatLog();
	});
	
	var ws;
	
	function chatLog() {
		   var roomNumber = $("#roomNumber").val();
		      $.ajax({
		         url : "/chatLogDate.com",
		         type : "post",
		         data : {
		            "roomNumber" : roomNumber
		         },
		         dataType : "json",
		         success : function(data) {
		            const $chatingTag = $("#chatting");
		            console.log(data);
		            for(var i in data) {
		               var html = "";
		               if(data[i].memberId == memberId ){
		            	  html += $("#chatting").append("<p class='me'>"+$("#memberNick").val()+" :" +data[i].msg+ "</p>");	
		                  $("#chating").append(html);   
		               }else {
		            	  html += $("#chatting").append("<p class='others'>"+$("#shopId").val()+" :" +data[i].msg+ "</p>");
		                  $("#chating").append(html);
		               }
		               
		            }
		         }
		         
		      });
		   }

	function wsOpen(){
		console.log($("#roomNumber").val());
		// 웹 소켓 전송 시 현재 방의 번호를 넘겨서 보냄
		ws = new WebSocket("ws://" + location.host + "/chatting/" + $("#roomNumber").val() + ".com");
		wsEvt();
	}
		
	function wsEvt() {
		ws.onopen = function(data){
			//소켓이 열리면 동작
		}
		
		ws.onmessage = function(data) {
			console.log(data);
			//메시지를 받으면 동작
			var msg = data.data;
			if(msg != null && msg.trim() != ''){
				console.log(msg);
				var d = JSON.parse(msg);  // 서버에서도 데이터응 JSON 형태로 전달해주기 때문에 JSON.parse 메소드 활용
				if(d.type == "getId"){ // type 값을 확인하여 sessionId 값 세팅
					var si = d.sessionId != null ? d.sessionId : "";
					if(si != ''){
						$("#sessionId").val(si); 
					}
				}else if(d.type == "message"){
					if(d.sessionId == $("#sessionId").val()){ // sessionId 값을 비교해서 같으면 내가 발신한 메세지이므로 오른쪽으로 정렬
						$("#chatting").append("<p class='me'>"+$("#memberNick").val()+" :" + d.msg + "</p>");
					}else{ // 아니면 상대방 발신 메세지이므로 왼쪽 정렬
						$("#chatting").append("<p class='others'>"+$("#shopId").val()+" :" + d.msg + "</p>");
					}
						
				}else{
					console.warn("unknown type!")
				}
			}
		}

		document.addEventListener("keypress", function(e){
			if(e.keyCode == 13){ //enter press
				send();
			}
		});
	}

	/* function chatName(){
		var userName = $("#userName").val();
		if(userName == null || userName.trim() == ""){
			alert("사용자 이름을 입력해주세요.");
			$("#userName").focus();
		}else{
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}  */

	function send() {
		alert("send 작동됨..")
		var option ={
			type : "message",
			roomNumber : $('#roomNumber').val(),
			sessionId : $("#sessionId").val(),
			userName : $("#userName").val(),
			msg : $("#chatting2").val()
		}
		var roomNumber = $("#roomNumber").val();
		var roomName = $("#roomName").val();
		var memberId = $("#memberId").val();
		var shopId = $("#shopId").val();
		var memberNick = $("#memberNick").val();
		ws.send(JSON.stringify(option));
		/* $('#chatting2').val(""); */
		
		$.ajax({
			url : "/chatRegister.com",
			type : "get",
			dataType : "json",
			data : {"roomNumber":roomNumber, "roomName":roomName, "memberId":memberId, "shopId":shopId, "memberNick":memberNick, "msg":$("#chatting2").val()},
			success : function(data) {
				
			}
		});
		
		$("#chatting2").val("");
	}
</script>
<body>
	<div id="container" class="container">
		<h1>${roomName }의 채팅</h1>
		<input type="hidden" id="sessionId" value="">
		<input type="hidden" id="roomNumber" value="${roomNumber }">
		<input type="hidden" id="roomName" value="${roomName}">
		<input type="hidden" id="memberId" value="${loginMember.memberId}">
		<input type="hidden" id="shopId" value="${room.shopId}">
		<input type="hidden" id="memberNick" value="${loginMember.memberNick}">
		
		<div id="chatting" class="chatting">
		</div>
		
		<!-- <div id="yourName">
			<table class="inputTable">
				<tr>
					<th>사용자명</th>
					<th><input type="text" name="userName" id="userName"></th>
					<th><button onclick="chatName()" id="startBtn">이름 등록</button></th>
				</tr>
			</table>
		</div>  -->
		<div id="yourMsg">
			<table class="inputTable">
				<tr>
					<th>메시지</th>
					<th><input id="chatting2" placeholder="보내실 메시지를 입력하세요."></th>
					<th><button onclick="send()" id="sendBtn">보내기</button></th>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>