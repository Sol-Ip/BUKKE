<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Page</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">


<!-- 회원정보 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="../resources/css/member/mypage.css">


</head>
<style>
.banner {
	background: linear-gradient(270deg, rgba(41, 206, 140, 1) 0%,
		rgba(40, 189, 168, 1) 100%);
}

.banner * {
	color: white;
}
nav>* {
	width: 100%;
}
</style>
<!-- <body id="body-pd"> -->
<body id="">

   <!-- fixed section -->
	<section class="banner hero-wrap hero-wrap-2">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">마이페이지</h1>
					<p class="mr-2"></p>
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
                    	<ion-icon name="person-sharp" class="nav__icon"></ion-icon>
                        <!-- <ion-icon name="folder-outline" class="nav__icon"></ion-icon> -->
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="memberModifyView.com" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                   		<ion-icon name="calendar-sharp" class="nav__icon"></ion-icon>
                        <span class="nav_name">부캐 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="memberCAList.com" class="collapse__sublink">부캐 일정보기</a>
                            
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="reviewListbyId.com" class="collapse__sublink">작성한 후기</a>
                            <a href="commentListbyId.com" class="collapse__sublink">작성한 댓글</a>
                            <a href="reviewLikeList.com" class="collapse__sublink">좋아요 목록</a>
                            <a href="KeepListbyId.com" class="collapse__sublink">찜 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">선물 내역</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">받은 선물</a>
                            <a href="#" class="collapse__sublink">보낸 선물</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="chatbubbles-sharp" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                         <ul class="collapse__menu">
                        	<c:url var="chatRoomForMember" value="chatRoomForMember.com">
							<c:param name="roomList" value="${roomList }"></c:param>
							</c:url>
                            <a href="${chatRoomForMember }" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="notifications-sharp" class="nav__icon"></ion-icon>
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
   <!-- ======================= 사이드 바 끝 =============================== -->
   
      <!--===================== 회원 정보 관리 시작 =========== -->
	<section class="ftco-section">
		<div class="container">
			 <%-- <div class="row justify-content-center mb-5 pb-3">
			< 	<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">${loginMember.memberNick }'S BUKKE PAGE</h2>
				</div>
			</div> --%> 
			
			<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white" style="font-size: 30px">BUKKE My page</small></span>
			<hr>				
			<!-- 상단 프로필 설정 -->
			<div class="container">
				<div class="my-summary-wrap">
					<div class="profile-wrap">
						<div class="profile-thumb-wrap">
							<img src="https://cdn.crowdpic.net/list-thumb/thumb_l_F177CD671C5AAFC4A48F08FF710D6DAB.png"
								class="thumb-profile" alt="프로필사진" />
						</div>
						<div class="profile-info-wrap">
							안녕하세요.
							<div class="profile-name cut-txt" >${loginMember.memberNick } 님</div>
							<!--a href="javascript:;" title="프로필 사진 편집" class="btn-profile-thumb">프로필 사진 편집</a-->
							<label for="upload" class="btn-profile-thumb" style="font-family: 'Chosunilbo_myungjo';"><a href="memberModifyView.com">내 정보 수정</a></label>
						</div>
					</div>
					<div class="my-info-wrap">
						<ul class="my-info-list">
							<li class="my-info"><span class="my-info-tit" id="sub1">내 액티비티<a
									title="보기" class="view-grade"
									onclick="showPopup2();"></a></span> <strong
								class="my-info-txt my-level" id="sub1">${myActCount }개</strong></li>
							<li class="my-info"><span class="my-info-tit" id="sub1">내 클래스</span> <a
								><strong class="my-info-txt my-class" id="sub1">${myClassCount }개</strong></a>
							</li>
							<li class="my-info"><span class="my-info-tit" id="sub1">내가 쓴 후기</span> <a><strong
									class="my-info-txt cut-txt my-point"
									id="sub1">${listCount }개</strong></a>
							</li>
							<li class="my-info"><span class="my-info-tit" id="sub1">내가 쓴 댓글</span> <a
								><strong class="my-info-txt my-coupon"
									id="sub1">${colistCount }개</strong></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
				<hr>
				<br><br><br>
			<!-- 정보들 -->
			
			<div class="row">
				<div class="row col-lg-12" style="align: center;">
					<div class="col-lg-2"></div>
					<div class="col-lg-4 col-md-6 col-sm-6 info">
						<div class="text-center feature-block" >
							<span class="fb-icon color-info"> <i class="fa fa-user"
								aria-hidden="true"></i>
							</span>
							<h4 class="color-info" id="mypage">
								<b >내 정보</b>
							</h4>
							<br> <a href="memberModifyView.com"
								class="btn btn-info btn-custom" id="sub1">Click</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-6 info">
						<!-- <div class="text-center feature-block" style="width: 330px; margin-left: 130px"> -->
						<div class="text-center feature-block" >
							<span class="fb-icon color-warning"> <i
								class="far fa-calendar-check " aria-hidden="true"></i>
							</span>
							<h4 class="color-warning" id="mypage">
								<b>부캐 일정</b>
							</h4>
							<br> <a href="javascript:void(0)"
								class="btn btn-warning btn-custom" id="sub1">Click</a>
						</div>
					</div>
					<div class="col-lg-2"></div>
				</div>


				<div class="row col-lg-12" style="align: center;">
					<div class="col-lg-2"></div>
					<div class="col-lg-4 col-md-6 col-sm-6 info">
						<div class="text-center feature-block" >
							<span class="fb-icon color-success"> <i class="fas fa-pen"
								aria-hidden="true"></i>
							</span>
							<h4 class="color-success" id="mypage">
								<b>내 활동</b>
							</h4>
							<br> <a href="javascript:void(0)"
								class="btn btn-success btn-custom" id="sub1">Click</a>
						</div>
					</div>



					<div class="col-lg-4 col-md-6 col-sm-6 info">
						<div class="text-center feature-block">
							<span class="fb-icon color-danger"> <i
								class="fas fa-user-slash" aria-hidden="true"></i>
							</span>
							<h4 class="color-danger" id="mypage">
								<b>회원 탈퇴</b>
							</h4>
							<br> <a href="javascript:void(0)"
								class="btn btn-danger btn-custom" id="sub1">Click</a>
						</div>
					</div>
					<div class="col-lg-2"></div>
				</div>

			</div>
		</div>

	</section>
	<br>
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>