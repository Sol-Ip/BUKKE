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


<!-- 회원정보 -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<link rel="stylesheet" href="../resources/css/shop/shopMyPage.css">


</head>
<!-- <body id="body-pd"> -->
<body id="">

   <!-- fixed section -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_1.jpg');"
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
   <br><br>
   <!-- ======================= 사이드 바 끝 =============================== -->
   <!-- ======================= 마이페이지 인포 ================= -->
	<div class="container">
		<div class="row justify-content-start mb-5 pb-2">
			<div class="col-md-4 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-light">BUKKE</small></span>
				<h2 class="mb-4">MY PAGE</h2>
			</div>
			<div class="col-md-8 pl-md-5 heading-section ftco-animate">
				<div class="pl-md-4 border-line">
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in. A small river named Duden flows by their
						place and supplies it with the necessary regelialia. It is a
						paradisematic country, in which roasted parts of sentences fly
						into your mouth.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- ================ 마이페이지 인포 끝 ===================== -->
   
      <!--===================== 회원 정보 관리 시작 =========== -->
	<section id="what-we-do">
		<div class="container">
			<div class="row">
				<div class="col-xs-9 col-sm-6 col-md-6 col-lg-6 col-xl-6">
					<div class="card">
						<div class="card-block block-3">
							<h3 class="card-title">내 정보</h3>
							<p class="card-text"></p>
							<a href="javascript:void();" title="Read more" class="read-more">더보기<i
								class="fa fa-angle-double-right ml-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-xs-9 col-sm-6 col-md-6 col-lg-6 col-xl-6">
					<div class="card">
						<div class="card-block block-3">
							<h3 class="card-title">내 일정</h3>
							<p class="card-text"></p>
							<a href="javascript:void();" title="Read more" class="read-more">더보기<i
								class="fa fa-angle-double-right ml-2"></i></a>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-9 col-sm-6 col-md-6 col-lg-6 col-xl-6">
					<div class="card">
						<div class="card-block block-3">
							<h3 class="card-title">내 활동</h3>
							<p class="card-text"></p>
							<a href="javascript:void();" title="Read more" class="read-more">더보기<i
								class="fa fa-angle-double-right ml-2"></i></a>
						</div>
					</div>
				</div>
				<div class="col-xs-9 col-sm-6 col-md-6 col-lg-6 col-xl-6">
					<div class="card">
						<div class="card-block block-3">
							<h3 class="card-title">업체 탈퇴</h3>
							<p class="card-text"></p>
							<a href="javascript:void();" title="Read more" class="read-more">더보기<i
								class="fa fa-angle-double-right ml-2"></i></a>
						</div>
					</div>
				</div>
			</div>

		</div>
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