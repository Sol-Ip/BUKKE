<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 
<title>My Page</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<!-- 채팅 -->
<link rel="stylesheet" href="../resources/css/chat/chat.css">
</head>
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
		//var resJson = JSON.parse(res);
		if(res != null){
			var tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>";
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
</script>
<!-- <body id="body-pd"> -->
<body id="">

   <!-- fixed section -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">OPEN MYPAGE</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="home.com">Home <i class="ion-ios-arrow-forward"></i></a></span> 
                  <span>MyPage <i class="ion-ios-arrow-forward"></i></span>
               </p>
            </div>
         </div>
      </div>
      <!-- ======================= 사이드 바 시작 =============================== -->
         <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">BUKKE</a>
                </div>
                <div class="nav__list">
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="calendar-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">부캐 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="memberScheduleView.com" class="collapse__sublink">부캐 일정보기</a>
                            <a href="#" class="collapse__sublink">좋아요 목록</a>
                            <a href="#" class="collapse__sublink">찜 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="heart-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">작성한 게시글</a>
                            <a href="#" class="collapse__sublink">작성한 댓글</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="cube-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">선물함</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">받은 선물</a>
                            <a href="#" class="collapse__sublink">보낸 선물</a>
                        </ul>
                    </div>

                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="alarm-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">알림</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">예약 알림</a>
                        </ul>
                    </div>
                </div>
                
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">Log out</span>
                </a>
            </div>
        </nav>
    </div>
   </section>
   <br><br>
   <!-- ======================= 사이드 바 끝 =============================== -->

	<section>
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">MODIFIED</h2>
				</div>
			</div>
			<!-- ================== 채팅 시작 ======================= -->
			<!-- ================== 채팅 목록 시작 =================== -->
			<div class="row">
				<div class="col-sm-12">
					<div class="container py-5 px-4">
						<!-- For demo purpose-->
						<div class="row rounded-lg overflow-hidden shadow">
							<!-- Users box-->
							<div class="col-5 px-0">
								<div class="bg-white">
									<div class="bg-gray px-4 py-2 bg-light">
										<p class="h5 mb-0 py-1">채팅 목록</p>
									</div>
									<div class="messages-box">
										<div class="list-group rounded-0">
											<a class="list-group-item list-group-item-action active text-white rounded-0">
												<div class="media">
													<!-- <img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle"> -->
													<div class="media-body ml-4">
														<div class="d-flex align-items-center justify-content-between mb-1">
															<!-- <h6 class="mb-0">찬희</h6> 채팅한 멤버 아이디
															<small class="small font-weight-bold">[채팅 날짜]</small> -->
															<table id="roomList" class="roomList"></table>
														</div>
														<p class="font-italic mb-0 text-small"> 뭘 넣지..?</p>
													</div>
												</div>
											</a> 
										</div>
									</div>
								</div>
							</div>
							<!-- ====================== 채팅 목록 끝 ==================== -->
							<!-- Chat Box-->
							<div class="col-7 px-0">
								<div class="px-4 py-5 chat-box bg-white">
									<!-- Sender Message-->
									<div class="media w-50 mb-3">
										<img
											src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
											alt="user" width="50" class="rounded-circle">
										<div class="media-body ml-3">
											<div class="bg-light rounded py-2 px-3 mb-2">
												<p class="text-small mb-0 text-muted">Test which is a
													new approach all solutions</p>
											</div>
											<p class="small text-muted">12:00 PM | Aug 13</p>
										</div>
									</div>

									<!-- Reciever Message-->
									<div class="media w-50 ml-auto mb-3">
										<div class="media-body">
											<div class="bg-primary rounded py-2 px-3 mb-2">
												<p class="text-small mb-0 text-white">Test which is a
													new approach to have all solutions</p>
											</div>
											<p class="small text-muted">12:00 PM | Aug 13</p>
										</div>
									</div>

									<!-- Sender Message-->
									<div class="media w-50 mb-3">
										<img
											src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
											alt="user" width="50" class="rounded-circle">
										<div class="media-body ml-3">
											<div class="bg-light rounded py-2 px-3 mb-2">
												<p class="text-small mb-0 text-muted">Test, which is a
													new approach to have</p>
											</div>
											<p class="small text-muted">12:00 PM | Aug 13</p>
										</div>
									</div>

									<!-- Reciever Message-->
									<div class="media w-50 ml-auto mb-3">
										<div class="media-body">
											<div class="bg-primary rounded py-2 px-3 mb-2">
												<p class="text-small mb-0 text-white">Apollo University,
													Delhi, India Test</p>
											</div>
											<p class="small text-muted">12:00 PM | Aug 13</p>
										</div>
									</div>

									<!-- Sender Message-->
									<div class="media w-50 mb-3">
										<img
											src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
											alt="user" width="50" class="rounded-circle">
										<div class="media-body ml-3">
											<div class="bg-light rounded py-2 px-3 mb-2">
												<p class="text-small mb-0 text-muted">Test, which is a
													new approach</p>
											</div>
											<p class="small text-muted">12:00 PM | Aug 13</p>
										</div>
									</div>

									<!-- Reciever Message-->
									<div class="media w-50 ml-auto mb-3">
										<div class="media-body">
											<div class="bg-primary rounded py-2 px-3 mb-2">
												<p class="text-small mb-0 text-white">Apollo University,
													Delhi, India Test</p>
											</div>
											<p class="small text-muted">12:00 PM | Aug 13</p>
										</div>
									</div>

								</div>

								<!-- Typing area -->
								<form action="#" class="bg-light">
									<div class="input-group">
										<input type="text" placeholder="Type a message"
											aria-describedby="button-addon2"
											class="form-control rounded-0 border-0 py-4 bg-light">
										<div class="input-group-append">
											<button id="button-addon2" type="submit" class="btn btn-link">
												<i class="fa fa-paper-plane"></i>
											</button>
										</div>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 마이페이지 사이드바 -->
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include> 