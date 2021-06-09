<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BUKKE CHATTING</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/chat/chat.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	var ws;

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
						$("#chatting").append("<p class='me'>나 :" + d.msg + "</p>");	
					}else{ // 아니면 상대방 발신 메세지이므로 왼쪽 정렬
						$("#chatting").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
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

	function chatName(){
		var userName = $("#userName").val();
		if(userName == null || userName.trim() == ""){
			alert("사용자 이름을 입력해주세요.");
			$("#userName").focus();
		}else{
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}

	function send() {
		alert("send 작동됨..")
		var option ={
			type : "message",
			roomNumber : $('#roomNumber').val(),
			sessionId : $("#sessionId").val(),
			userName : $("#userName").val(),
			msg : $("#chatting2").val()
		}
		ws.send(JSON.stringify(option));
		$('#chatting2').val("");
	}
</script>
</head>
<body>
	<div class="container bootstrap snippets bootdey">
		<div class="row">
			<div class="col-md-4 bg-white ">
				<div class=" row border-bottom padding-sm" style="height: 40px;">BUKKE</div>
				<div class="col-md-8 bg-white ">
            <div class="chat-message">
                <ul class="chat">
                    
                    <li class="right clearfix">
                    	<span class="chat-img pull-right">
                    		<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">
                    	</span>
                    	<div class="chat-body clearfix">
                    		<div class="header">
                    			<strong class="primary-font">Sarah</strong>
                    			<small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 13 mins ago</small>
                    		</div>
                    		<p>
                    			내가(memberId) 보낸 내용 들어갈거야.. 나는 memberId야.. 우린 memberId가 shopId에게 채팅을 할꼬야 
                    		</p>
                    	</div>
                    </li>
                    <li class="left clearfix">
                        <span class="chat-img pull-left">
                    		<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">
                    	</span>
                    	<div class="chat-body clearfix">
                    		<div class="header">
                    			<strong class="primary-font">John Doe</strong>
                    			<small class="pull-right text-muted"><i class="fa fa-clock-o"></i> 12 mins ago</small>
                    		</div>
                    		<p>
                    			난 shopId야.. 아마도..?
                    		</p>
                    	</div>
                    </li>
                </ul>
            </div>
            <div class="chat-box bg-white">
            	<div class="input-group">
            		<input class="form-control border no-shadow no-rounded" placeholder="Type your message here">
            		<span class="input-group-btn">
            			<button class="btn btn-success no-rounded" type="button">Send</button>
            		</span>
            	</div>	
            </div>            
		</div>  
			</div>
		</div>
	</div>
</body>
</html>