<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
	<title>Room</title>
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
		.roomContainer{
			background-color: #F6F6F6;
			width: 500px;
			height: 500px;
			overflow: auto;
		}
		.roomList{
			border: none;
		}
		.roomList th{
			border: 1px solid #FFBB00;
			background-color: #fff;
			color: #FFBB00;
		}
		.roomList td{
			border: 1px solid #FFBB00;
			background-color: #fff;
			text-align: left;
			color: #FFBB00;
		}
		.roomList .num{
			width: 75px;
			text-align: center;
		}
		.roomList .room{
			width: 350px;
		}
		.roomList .go{
			width: 71px;
			text-align: center;
		}
		button{
			background-color: #FFBB00;
			font-size: 14px;
			color: #000;
			border: 1px solid #000;
			border-radius: 5px;
			padding: 3px;
			margin: 3px;
		}
		.inputTable th{
			padding: 5px;
		}
		.inputTable input{
			width: 330px;
			height: 25px;
		}
	</style>
</head>
<!-- <script type="text/javascript">
	var ws;
	window.onload = function(){
		getRoom();
		createRoom();
	}

	function getRoom(){
		commonAjax('/getRoom.com', 'memberId', 'post', function(result){
			createChattingRoom(result);
			
		});
	}
	
	function createRoom(){
		$("#createRoom").click(function(){
			var msg = {	roomName : '${classNo}'};
			console.log("roonName 은?" +$('#roomName').val());
			//console.log("memberId는: ? "+memberId);
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

	// 방을 만들고 채팅룸을 만들기
	// res에 {roomNumber: ?, roomName : "createRoom 에서 입력한 채팅방 이름"}
	function createChattingRoom(res){
		console.log("createChattingRoom 실행");
		console.log(res);
		//var resJson = JSON.parse(res);
		if(res != null){
			var tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>";
			// d : {roomNumber: ?, roomName : "createRoom 에서 입력한 채팅방 이름"}
			// idx : 인덱스
			res.forEach(function(d, idx){
				console.log(d, idx)
				var rn = d.roomName.trim();
				var roomNumber = d.roomNumber;
				console.log("roomNumber" + roomNumber);
				tag += "<tr>"+
							"<td class='num'>"+(idx+1)+"</td>"+
							"<td class='room'>"+ rn +"</td>"+
							"<td class='go'><button type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
						"</tr>";
			});
			$("#roomList").empty().append(tag);
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
</script> -->
<body>
	<div class="container">
		<div id="roomContainer" class="roomContainer">
			
		
		<table class="table table-hover" >
	<thread>
		<tr>
			<th class="col-md-4">순서</th>
			<th class="col-md-4">방 이름</th>
			<th class="col-md-4">참여</th>
		</tr>
	</thread>
	<!-- <h1>채팅방</h1> -->
	
			
				<tbody> 
					<tr>
						<c:forEach items="${roomList }" var="room">
						<td>${room.roomNumber }</td>
						<td>${room.roomName }</td>
						<td>
							<c:url var="rJoin" value="moveChattingForShop.com">
                     		<c:param name="roomName" value="${room.roomName }"></c:param>
                     		<c:param name="roomNumber" value="${room.roomNumber }"></c:param>
                  			</c:url>
                  			<a href="${rJoin}">참여</a>
						</td>
						</c:forEach> 
					</tr>
				</tbody>
			
		
		</table>
		</div>
	</div>
</body>
</html>