<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Page</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<link rel="stylesheet" href="resources/css/activity-custom/activityListView.css">

<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<!-- 채팅 -->
<link rel="stylesheet" href="../resources/css/chat/chat.css">
	

</head>
<!-- <body id="body-pd"> -->
<body id="">

   <!-- ============================================== MyPage fixed Section ==============================================-->
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
         <div class="l-navbar" id="navbar" style="height : 830px;">
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
                        <span class="nav_name">내 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">수업 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="bicycle-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">등록한 액티비티</a>
                            <a href="#" class="collapse__sublink">등록한 클래스</a>
                            <a href="#" class="collapse__sublink">작성한 댓글</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="close-circle-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">업체 탈퇴</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">탈퇴 신청</a>
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
                        <span class="nav_name">예약 관리</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">예약 목록</a>
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
   <!-- ======================= 사이드 바 끝 =============================== -->
   <!-- ============================================== MyPage fixed Section END ==============================================-->
   
   
   
      <!-- ===================== 페이지 내용 기입란 (페이지 상황 맞춰서 section/div 사용하기) ===================== -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">페이지 메뉴 기입</h2>
				</div>
			</div>
			

				<!-- 채팅시작 -->
					<div class="row">
				<div class="col-sm-12">
					<div class="container py-5 px-4">
						<!-- For demo purpose-->

						<div class="row rounded-lg overflow-hidden shadow">
							<!-- Users box-->
							<div class="col-5 px-0">
								<div class="bg-white">

									<div class="bg-gray px-4 py-2 bg-light">
										<p class="h5 mb-0 py-1">Recent</p>
									</div>

									<div class="messages-box">
										<div class="list-group rounded-0">
											<a
												class="list-group-item list-group-item-action active text-white rounded-0">
												<div class="media">
													<img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle">
													<div class="media-body ml-4">
														<div
															class="d-flex align-items-center justify-content-between mb-1">
															<h6 class="mb-0">Jason Doe</h6>
															<small class="small font-weight-bold">25 Dec</small>
														</div>
														<p class="font-italic mb-0 text-small">Lorem ipsum
															dolor sit amet, consectetur adipisicing elit, sed do
															eiusmod tempor incididunt ut labore.</p>
													</div>
												</div>
											</a> <a href="#"
												class="list-group-item list-group-item-action list-group-item-light rounded-0">
												<div class="media">
													<img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle">
													<div class="media-body ml-4">
														<div
															class="d-flex align-items-center justify-content-between mb-1">
															<h6 class="mb-0">Jason Doe</h6>
															<small class="small font-weight-bold">14 Dec</small>
														</div>
														<p class="font-italic text-muted mb-0 text-small">Lorem
															ipsum dolor sit amet, consectetur. incididunt ut labore.</p>
													</div>
												</div>
											</a> <a href="#"
												class="list-group-item list-group-item-action list-group-item-light rounded-0">
												<div class="media">
													<img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle">
													<div class="media-body ml-4">
														<div
															class="d-flex align-items-center justify-content-between mb-1">
															<h6 class="mb-0">Jason Doe</h6>
															<small class="small font-weight-bold">9 Nov</small>
														</div>
														<p class="font-italic text-muted mb-0 text-small">consectetur
															adipisicing elit, sed do eiusmod tempor incididunt ut
															labore.</p>
													</div>
												</div>
											</a> <a href="#"
												class="list-group-item list-group-item-action list-group-item-light rounded-0">
												<div class="media">
													<img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle">
													<div class="media-body ml-4">
														<div
															class="d-flex align-items-center justify-content-between mb-1">
															<h6 class="mb-0">Jason Doe</h6>
															<small class="small font-weight-bold">18 Oct</small>
														</div>
														<p class="font-italic text-muted mb-0 text-small">Lorem
															ipsum dolor sit amet, consectetur adipisicing elit, sed
															do eiusmod tempor incididunt ut labore.</p>
													</div>
												</div>
											</a> <a href="#"
												class="list-group-item list-group-item-action list-group-item-light rounded-0">
												<div class="media">
													<img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle">
													<div class="media-body ml-4">
														<div
															class="d-flex align-items-center justify-content-between mb-1">
															<h6 class="mb-0">Jason Doe</h6>
															<small class="small font-weight-bold">17 Oct</small>
														</div>
														<p class="font-italic text-muted mb-0 text-small">consectetur
															adipisicing elit, sed do eiusmod tempor incididunt ut
															labore.</p>
													</div>
												</div>
											</a> <a href="#"
												class="list-group-item list-group-item-action list-group-item-light rounded-0">
												<div class="media">
													<img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle">
													<div class="media-body ml-4">
														<div
															class="d-flex align-items-center justify-content-between mb-1">
															<h6 class="mb-0">Jason Doe</h6>
															<small class="small font-weight-bold">2 Sep</small>
														</div>
														<p class="font-italic text-muted mb-0 text-small">Quis
															nostrud exercitation ullamco laboris nisi ut aliquip ex
															ea commodo consequat.</p>
													</div>
												</div>
											</a> <a href="#"
												class="list-group-item list-group-item-action list-group-item-light rounded-0">
												<div class="media">
													<img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle">
													<div class="media-body ml-4">
														<div
															class="d-flex align-items-center justify-content-between mb-1">
															<h6 class="mb-0">Jason Doe</h6>
															<small class="small font-weight-bold">30 Aug</small>
														</div>
														<p class="font-italic text-muted mb-0 text-small">Lorem
															ipsum dolor sit amet, consectetur adipisicing elit, sed
															do eiusmod tempor incididunt ut labore.</p>
													</div>
												</div>
											</a> <a href="#"
												class="list-group-item list-group-item-action list-group-item-light rounded-0">
												<div class="media">
													<img
														src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg"
														alt="user" width="50" class="rounded-circle">
													<div class="media-body ml-4">
														<div
															class="d-flex align-items-center justify-content-between mb-3">
															<h6 class="mb-0">Jason Doe</h6>
															<small class="small font-weight-bold">21 Aug</small>
														</div>
														<p class="font-italic text-muted mb-0 text-small">Lorem
															ipsum dolor sit amet, consectetur adipisicing elit, sed
															do eiusmod tempor incididunt ut labore.</p>
													</div>
												</div>
											</a>

										</div>
									</div>
								</div>
							</div>
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
		
	</section>
	<!-- ===================== 페이지 내용 기입란 END ===================== -->
   
<br>
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>