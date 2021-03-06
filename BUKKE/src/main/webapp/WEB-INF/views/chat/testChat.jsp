<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
crossorigin="anonymous">
<meta charset="UTF-8">
	<title>Chatting</title>
	<style>
@font-face {
	font-family: 'S-CoreDream-3Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	background-color: #fff2dcfc;
	margin: 0;
	padding: 0;
}

.container {
	width: 500px;
	margin: 0 auto;
	padding: 25px
}

.container h1 {
	text-align: left;
	padding: 5px 5px 5px 15px;
	color: #gray;
	font-family: 'S-CoreDream-3Light';
	border-left: 3px solid #560bad;
	margin-bottom: 20px;
}

.chatting {
	background-color: #fff2dcfc;
	width: 500px;
	height: 500px;
	overflow: auto;
}

.chatting .me {
	font-family: 'S-CoreDream-3Light';
	font-weight: bold;
	color: #9705a0;
	text-align: right;
	font-size : 1.5em;
}

.chatting .others {
	font-family: 'S-CoreDream-3Light';
	font-weight: bold;
	color: #47454c;
	text-align: left;
	font-size : 1.5em;
}

input {
	background-color: #fff;
	width: 330px;
	height: 25px;
}

button {
	background-color: #e0c5ff;
	font-size: 14px;
	color: #000;
	border: 1px solid #000;
	border-radius: 5px;
	padding: 3px;
	margin: 3px;
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
		   var memberNick2 = '${loginMember.memberNick}';
		   var shopId2 = '${loginShopper.shopId}';
			
		  
		      $.ajax({
		         url : "/chatLogDate.com",
		         type : "post",
		         data : {
		            "roomNumber" : roomNumber
		         },
		         dataType : "json",
		         success : function(data) {
		            const $chatingTag = $("#chatting");
		            
		            for(var i in data) {
		               var html = "";
		               if(memberNick2 != ""){
		            		if(data[i].memberNick == memberNick2){
		            		  	html += $("#chatting").append("<p class='me'>"+$("#memberNick").val()+" : " +data[i].msg+ "</p>");	
		              		    $("#chating").append(html);   
		               		}else {
		               			
		            	 		html += $("#chatting").append("<p class='others'>"+"classjoa : " +data[i].msg+ "</p>");
		                		 $("#chating").append(html);
		              		} 
		               }else{
		            	   if(data[i].memberNick == null){
		            		  	html += $("#chatting").append("<p class='me'>"+" classjoa :" +data[i].msg+ "</p>");	
		              		    $("#chating").append(html);   
		               		}else {
		               			
		            	 		html += $("#chatting").append("<p class='others'>"+" ????????????"+" :" +data[i].msg+ "</p>");
		                		 $("#chating").append(html);
		              		} 
		               }
		             
		            	
		            
		            	 
		            
		             		               
		            }
		         }
		         
		      });
		   }

	function wsOpen(){
		console.log($("#roomNumber").val());
		// ??? ?????? ?????? ??? ?????? ?????? ????????? ????????? ??????
		ws = new WebSocket("ws://" + location.host + "/chatting/" + $("#roomNumber").val() + ".com");
		wsEvt();
	}
		
	function wsEvt() {
		ws.onopen = function(data){
			//????????? ????????? ??????
		}
		
		ws.onmessage = function(data) {
			console.log(data);
			//???????????? ????????? ??????
			var msg = data.data;
			if(msg != null && msg.trim() != ''){
				console.log(msg);
				var d = JSON.parse(msg);  // ??????????????? ???????????? JSON ????????? ??????????????? ????????? JSON.parse ????????? ??????
				if(d.type == "getId"){ // type ?????? ???????????? sessionId ??? ??????
					var si = d.sessionId != null ? d.sessionId : "";
					if(si != ''){
						$("#sessionId").val(si); 
					}
				}else if(d.type == "message"){
					if(d.sessionId == $("#sessionId").val()){ // sessionId ?????? ???????????? ????????? ?????? ????????? ?????????????????? ??????????????? ??????
						$("#chatting").append("<p class='me'>"+$("#memberNick").val()+" :" + d.msg + "</p>");
					}else{ // ????????? ????????? ?????? ?????????????????? ?????? ??????
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
			alert("????????? ????????? ??????????????????.");
			$("#userName").focus();
		}else{
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}  */

	function send() {
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
		<h1>${roomName }??? ??????</h1>
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
					<th>????????????</th>
					<th><input type="text" name="userName" id="userName"></th>
					<th><button onclick="chatName()" id="startBtn">?????? ??????</button></th>
				</tr>
			</table>
		</div>  -->
		<div id="yourMsg">
			<table class="inputTable">
				<tr>
					<th>?????????</th>
					<th><input id="chatting2" placeholder="????????? ???????????? ???????????????."></th>
					<th><button onclick="send()" id="sendBtn">&nbsp;&nbsp;????&nbsp;&nbsp;</button></th>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>