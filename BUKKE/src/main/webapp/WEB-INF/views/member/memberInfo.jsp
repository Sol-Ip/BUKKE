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
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="../resources/css/member/mypage.css">


</head>
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
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">부캐 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">부캐 일정보기</a>
                            <a href="#" class="collapse__sublink">좋아요 목록</a>
                            <a href="#" class="collapse__sublink">찜 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">작성한 게시글</a>
                            <a href="#" class="collapse__sublink">작성한 댓글</a>
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
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
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
   <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate">
               <span class="subheading subheading-with-line"><small
                  class="pr-2 bg-white">BUKKE</small></span>
               <h2 class="mb-4">(memberId)'S MY PAGE</h2>
            </div>
         </div>
         
         
         
   <div class="row">
      <div class="row col-lg-12" style="align:center;">
             <div class="col-lg-3"></div>
            <div class="col-lg-3 col-md-6 col-sm-6" >
               <div class="text-center feature-block"">
                  <span class="fb-icon color-info"> 
                     <i class="fa fa-user" aria-hidden="true"></i>
                  </span>
                  <h4 class="color-info">내 정보</h4>
                  <br>
                  <a href="javascript:void(0)" class="btn btn-info btn-custom">Click</a>
               </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
               <!-- <div class="text-center feature-block" style="width: 330px; margin-left: 130px"> -->
               <div class="text-center feature-block" style="width: 330px;">
                  <span class="fb-icon color-warning"> 
                     <i class="far fa-calendar-check " aria-hidden="true"></i>
                  </span>
                  <h4 class="color-warning">부캐 일정</h4>
                  <br>
                  <a href="javascript:void(0)" class="btn btn-warning btn-custom">Click</a>
               </div>
            </div>
            <div class="col-lg-3"></div>
         </div>
         <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6" style="margin-left: 150px;">
               <div class="text-center feature-block" style="width: 330px;">
                  <span class="fb-icon color-success"> 
                     <i class="fas fa-pen" aria-hidden="true"></i>
                  </span>
                  <h4 class="color-success">내 활동</h4>
                  <br>
                  <a href="javascript:void(0)" class="btn btn-success btn-custom">Click</a>
               </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
               <div class="text-center feature-block" style="width: 330px; margin-left: 130px">
                  <span class="fb-icon color-danger"> 
                     <i class="fas fa-user-slash" aria-hidden="true"></i>
                  </span>
                  <h4 class="color-danger">회원 탈퇴</h4>
                  <br>
                  <a href="javascript:void(0)" class="btn btn-danger btn-custom">Click</a>
               </div>
            </div>
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