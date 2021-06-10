<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐 채팅 방</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/chat/chat.css">

<script type="text/javascript">
	var ws;
	window.onload = function(){
		getRoom();
		createRoom();
	}

	function getRoom(){
		commonAjax('/getRoom.com', "", 'post', function(result){
			createChattingRoom(result);
		});
	}
	
	function createRoom(){
		$("#createRoom").click(function(){
			var msg = {	roomName : $('#roomName').val()	};

			commonAjax('/createRoom.com', msg, 'post', function(result){
				console.log("스프링에서 받아온 값 : " + result.toString());
				createChattingRoom(result);
			});

			$("#roomName").val("");
		});
	}

	function goRoom(number, name){
		location.href="/moveChatting.com?roomName="+name+"&"+"roomNumber="+number;
		console.log(number, name);
	}

	function createChattingRoom(res){
		console.log("createChattingRoom 실행");
		console.log(res);
		var tag = $('#roomContainer');
		//var resJson = JSON.parse(res);
		if(res != null){
			/* var tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>"; */
			res.forEach(function(d, idx){
				var html="";
				var rn = d.roomName.trim();
				var roomNumber = d.roomNumber;
				/* console.log("roomNumber" + roomNumber); */
				/* tag += "<tr>"+
							"<td class='num'>"+(idx+1)+"</td>"+
							"<td class='room'>"+ rn +"</td>"+
							"<td class='go'><button type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
						"</tr>"; */
						
				html += "<ul class='friend-list'>"+
				html +=	"<li>"+
				html +=	"<a href='#' class='clearfix' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>" +
				html +=	"<img src='https://bootdey.com/img/Content/user_2.jpg' alt='' class='img-circle'>" +
				html +=	"<div class='friend-name'>" + 
				html +=	"<strong>" + "채팅 방 이름" + "</strong>" + 
				html +=	"</div>" + 
				html +=	"<div class='last-message text-muted'>" + "채팅 최근 내용" + "</div>" + 
				html +=	"<small class='time text-muted'>" + "채팅 최근 시간" + "</small>" +
				html +=	"</a>" + 
				html +=	"</li>" +
				html +=	"</ul>";
				
				$('#roomContainer').append(html);
			});
			/* $("#roomList").empty().append(tag); */
		}
	}
	
	/* function createChattingRoom(res){
		var obj = JSON.parse(res);
	      console.log("결과값" + obj);
	      if(obj != null){
	         var tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>";
	         console.log(obj.length);
	         for(var i = 0; i < obj.size; i++) {
	            var rn = obj[i].roomName;
	            var roomNumber = obj[i].roomNumber;
	            console.log("roomNumber: " + roomNumber);
	            tag += "<tr>"+
	                     "<td class='num'>"+(i+1)+"</td>"+
	                     "<td class='room'>"+ rn +"</td>"+
	                     "<td class='go'><button type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
	                  "</tr>";  
	         }
	         $("#roomList").empty().append(tag);
	      }
	} */

	
	function commonAjax(url, parameter, type, calbak, contentType){
		$.ajax({
			url: url,
			data: parameter,
			type: type,
			contentType : contentType!=null?contentType:'application/x-www-form-urlencoded; charset=utf-8',
			dataType : "json",
			success: function (res) {
				console.log(res);
				calbak(res);
			},
			error : function(err){
				console.log('error');
				calbak(err);
			}
		});
	}
</script>
</head>
<body>
	<div class="container bootstrap snippets bootdey" id="roomContainer">
		<div class="row">
			<div class="col-md-4 bg-white ">
				<div class=" row border-bottom padding-sm" style="height: 40px;">BUKKE</div>

				<!-- ============================ 채팅방 목록 =================================== -->
				<c:forEach items="${chatList }" var="chatList">
				<ul class="friend-list">
					<li><a href="#" class="clearfix"> 
					<img src="https://bootdey.com/img/Content/user_2.jpg" alt="" class="img-circle">
							<div class="friend-name">
								<strong>${chatList.memberId }</strong>
							</div>
							<div class="last-message text-muted">
							${chatList.lastChatMsg }
							</div> 
							<small class="time text-muted">${chatList.lastChatTime }</small> 
					</a></li>
				</ul>
				</c:forEach>
			</div>
		</div>
	</div>
	<!--=========================================================-->
        <!-- selected chat -->
    	<!-- <div class="col-md-8 bg-white ">
            <div class="chat-message">
                <ul class="chat">
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
                    			Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    		</p>
                    	</div>
                    </li>
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
                    			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. 
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
                    			Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    		</p>
                    	</div>
                    </li>
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
                    			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. 
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
                    			Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    		</p>
                    	</div>
                    </li>
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
                    			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. 
                    		</p>
                    	</div>
                    </li>
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
                    			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at. 
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
            	</div>/input-group	
            </div>            
		</div> --> 
	
</body>
</html>