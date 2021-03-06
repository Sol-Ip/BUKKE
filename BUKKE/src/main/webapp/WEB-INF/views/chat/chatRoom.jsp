<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
	<title>Room</title>
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
	width: 430px;
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

.roomContainer {
	background-color: #ffffff;
	width: 430px;
	height: 100%;
	overflow: auto;
}

.roomList {
	border: none;
}

.roomList th {
	border: 1px solid #560bad;
	background-color: #fff;
	color: #560bad;
}

.roomList td {
	border: 1px solid #560bad;
	background-color: #fff;
	text-align: left;
	color: #560bad;
}

.roomList .num {
	width: 35px;
	text-align: center;
}

.roomList .room {
	width: 350px;
}

.roomList .go {
	width: 71px;
	text-align: center;
}

button {
	background-color: #560bad;
	font-size: 14px;
	color: #000;
	border: 1px solid #000;
	border-radius: 5px;
	padding: 3px;
	margin: 3px;
}

.room:hover {
	color: #1409c5;
    background-color: #f1f1e5;
}

button:hover {
	background-color: #b5179e;
	font-size: 14px;
	color: #000;
	border: 1px solid #000;
	border-radius: 5px;
	padding: 3px;
	margin: 3px;
}

.inputTable th {
	padding: 5px;
}

.inputTable input {
	width: 330px;
	height: 25px;
}

table * {
	background-color : #bdb2ff;
	font-family: 'S-CoreDream-3Light';
}
</style>
</head>

<script type="text/javascript">
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
			console.log("roonName ????" +$('#roomName').val());
			//console.log("memberId???: ? "+memberId);
			commonAjax('/createRoom.com', msg, 'post', function(result){
				console.log("??????????????? ????????? ??? : " + result.toString());
				createChattingRoom(result);
			});

			$("#roomName").val("");
		});
	}

	function goRoom(number, name){
		location.href="/moveChatting.com?roomName="+name+"&"+"roomNumber="+number;
		console.log(number, name);
	}

	// ?????? ????????? ???????????? ?????????
	// res??? {roomNumber: ?, roomName : "createRoom ?????? ????????? ????????? ??????"}
	function createChattingRoom(res){
		console.log("createChattingRoom ??????");
		console.log(res);
		//var resJson = JSON.parse(res);
		if(res != null){
			var tag = "<tr><th class='room'>??? ??????</th><th class='go'></th></tr>";
			// d : {roomNumber: ?, roomName : "createRoom ?????? ????????? ????????? ??????"}
			// idx : ?????????
			res.forEach(function(d, idx){
				console.log(d, idx)
				var rn = d.roomName.trim();
				var roomNumber = d.roomNumber;
				console.log("roomNumber" + roomNumber);
				tag += "<tr>"+
							/* "<td class='num'>"+(idx+1)+"</td>"+ */
							"<td class='room'>&nbsp;&nbsp;????&nbsp;"+ rn +"</td>"+
							"<td class='go'><button type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>&nbsp;&nbsp;????&nbsp;&nbsp;</button></td>" +
						"</tr>";
			});
			$("#roomList").empty().append(tag);
		}
	}
	
	/* function createChattingRoom(res){
		var obj = JSON.parse(res);
	      console.log("?????????" + obj);
	      if(obj != null){
	         var tag = "<tr><th class='num'>??????</th><th class='room'>??? ??????</th><th class='go'></th></tr>";
	         console.log(obj.length);
	         for(var i = 0; i < obj.size; i++) {
	            var rn = obj[i].roomName;
	            var roomNumber = obj[i].roomNumber;
	            console.log("roomNumber: " + roomNumber);
	            tag += "<tr>"+
	                     "<td class='num'>"+(i+1)+"</td>"+
	                     "<td class='room'>"+ rn +"</td>"+
	                     "<td class='go'><button type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>??????</button></td>" +
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
<body>
	<div class="container">
		<h1>?????????</h1>
		<div id="roomContainer" class="roomContainer">
			<table id="roomList" class="roomList"></table>
		</div>
		<div>
			
		</div>
	</div>
</body>
</html>