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
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<link rel="stylesheet" href="../resources/css/shop/shopMyPage.css">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="../resources/css/member/mypage.css">
<style type="text/css">
@font-face {
     font-family: 'DungGeunMo';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
	#myPage{
		padding: 0px;
	}
	#what-we-do{
		padding: 0px;
	}
	#fonts{
	 font-family: 'DungGeunMo';
	}
	.myinfo {
    text-align: -webkit-center;
}
</style>
</head>
<!-- <body id="body-pd"> -->
<body id="">

   <!-- fixed section -->
   <section class="hero-wrap hero-wrap-2"
       style="background-color: yellow;"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center" style="height:240px;">
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
         <div class="l-navbar" id="navbar" style="height : 800px;">
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
                            <a href="reservationList.com" class="collapse__sublink">수업 목록</a>
                            <a href="shopSchedule.com" class="collapse__sublink">수업 일정</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="bicycle-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="shopActivityList.com" class="collapse__sublink">등록한 액티비티</a>
                            <a href="shopClassList.com" class="collapse__sublink">등록한 클래스</a>
                        </ul>
                    </div>
                    
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>
						
						
						
                        <ul class="collapse__menu">
                        	<c:url var="chatRoomForShop" value="chatRoomForShop.com">
							<c:param name="roomList" value="${roomList }"></c:param>
							</c:url>
                            <a href="${chatRoomForShop }" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="alarm-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">예약 관리</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="reservationList.com" class="collapse__sublink">예약 목록</a>
                        </ul>
                    </div>
                </div>
                
                <div href="#" class="nav__link collapse1">
                        <ion-icon name="close-circle-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">업체 탈퇴</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">탈퇴 신청</a>
                        </ul>
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
   <!-- ======================= 마이페이지 인포 ================= -->
		<section class="ftco-section" id="myPage">
		<div class="container myinfo">
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
							<img src="https://img.icons8.com/nolan/452/shop.png"
								class="thumb-profile" alt="프로필사진" />
						</div>
						<div class="profile-info-wrap">
							안녕하세요.
							<div class="profile-name cut-txt" >${loginShopper.ceoName } 님</div>
							<!--a href="javascript:;" title="프로필 사진 편집" class="btn-profile-thumb">프로필 사진 편집</a-->
							<label for="upload" class="btn-profile-thumb" style="font-family: 'Chosunilbo_myungjo';"><a href="memberModifyView.com">내 정보 수정</a></label>
						</div>
					</div>
					<div class="my-info-wrap">
						<ul class="my-info-list">
							<li class="my-info"><span class="my-info-tit" id="sub1">내 클래스<a
									title="보기" class="view-grade"
									onclick="showPopup2();"></a></span> <strong
								class="my-info-txt my-level" id="sub1">${cCount }개</strong></li>
							<li class="my-info"><span class="my-info-tit" id="sub1">내 액티비티</span> <a
								><strong class="my-info-txt my-class" id="sub1">${aCount }개</strong></a>
							</li>
							<li class="my-info"><span class="my-info-tit" id="sub1">대기중 예약</span> <a><strong
									class="my-info-txt cut-txt my-point"
									id="sub1">${reTotalCount }개</strong></a>
							</li>
							<li class="my-info"><span class="my-info-tit" id="sub1">완료 예약</span> <a
								><strong class="my-info-txt my-coupon"
									id="sub1">${reWaitCount }개</strong></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
				<hr>
				<br><br><br>
			<!-- 정보들 -->
			


	<!-- ================ 마이페이지 인포 끝 ===================== -->
   
      <!--===================== 회원 정보 관리 시작 =========== -->
	<section id="what-we-do">
		<div class="container">
			<div class="row">
				<div class="col-xs-9 col-sm-6 col-md-6 col-lg-6 col-xl-6">
					<div class="card">
						<div class="card-block block-3">
							<h3 class="card-title" id=fonts>내 정보</h3>
							<p class="card-text"></p>
							<a href="javascript:void();" title="Read more" class="read-more">더보기<i
								class="fa fa-angle-double-right ml-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-xs-9 col-sm-6 col-md-6 col-lg-6 col-xl-6">
					<div class="card">
						<div class="card-block block-3">
							<h3 class="card-title" id=fonts>내 일정</h3>
							<p class="card-text"></p>
							<a href="reservationList.com" title="Read more" class="read-more">더보기<i
								class="fa fa-angle-double-right ml-2"></i></a>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-9 col-sm-6 col-md-6 col-lg-6 col-xl-6">
					<div class="card">
						<div class="card-block block-3">
							<h3 class="card-title" id=fonts>내 활동</h3>
							<p class="card-text"></p>
							<a href="javascript:void();" title="Read more" class="read-more">더보기<i
								class="fa fa-angle-double-right ml-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-xs-9 col-sm-6 col-md-6 col-lg-6 col-xl-6">
					<div class="card">
						<div class="card-block block-3">
							<h3 class="card-title" id=fonts>업체 탈퇴</h3>
							<p class="card-text"></p>
							<a href="javascript:void();" title="Read more" class="read-more">더보기<i
								class="fa fa-angle-double-right ml-2"></i></a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	</section>
	<br>
<!-- 사이드바 -->
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<!-- 업체 회원 정보 -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>