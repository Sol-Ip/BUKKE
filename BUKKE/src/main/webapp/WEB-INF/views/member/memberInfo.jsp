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
<body id="body-pd">

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
	</section>
	<!-- fixed section END-->
		<!-- ============================== 사이드바 ====================================== -->
		<div class="col-sm-3">
			<div class="row">
	<div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">Bedimcode</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Dashboard</span>
                    </a>
                    <a href="#" class="nav__link">
                        <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Messenger</span>
                    </a>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Projects</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">Data</a>
                            <a href="#" class="collapse__sublink">Group</a>
                            <a href="#" class="collapse__sublink">Members</a>
                        </ul>
                    </div>

                    <a href="#" class="nav__link">
                        <ion-icon name="pie-chart-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Analytics</span>
                    </a>

                    <div href="#" class="nav__link collapse">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Team</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">Data</a>
                            <a href="#" class="collapse__sublink">Group</a>
                            <a href="#" class="collapse__sublink">Members</a>
                        </ul>
                    </div>

                    <a href="#" class="nav__link">
                        <ion-icon name="settings-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">Settings</span>
                    </a>
                </div>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">Log out</span>
                </a>
            </div>
        </nav>
    </div>
    </div>
    </div>

	<!-- ==================== 사이드 바 끝 ======================================= -->
		
		<!--===================== 회원 정보 관리 시작 =========== -->
		<div class="col-sm-9">
			<div class="row">
				<!-- <div class="col-lg-12 col-md-12 col-sm-12"> 
            <div class="service-heading-block">
                <h2 class="text-center text-primary title">Our amazing Service features</h2>
                <p class="text-center sub-title">Lorem ipsum dolor sit amet,<span class="text-primary">consectetur adipisicing</span> elit.<br/> Dolor alias provident excepturi eligendi, nam numquam iusto eum illum, ea quisquam.</p>
            </div>             
             </div>  -->
				<div class="col-lg-3 col-md-6 col-sm-6" style="margin-left: 150px;">
					<div class="text-center feature-block" style="width: 330px;">
						<span class="fb-icon color-info"> 
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
						<h4 class="color-info">내 정보</h4>
						<p class="">내 정보 수정을 할 수 있습니다.</p>
						<a href="javascript:void(0)" class="btn btn-info btn-custom">Click here</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="text-center feature-block" style="width: 330px; margin-left: 130px"">
						<span class="fb-icon color-warning"> 
							<i class="far fa-calendar-check " aria-hidden="true"></i>
						</span>
						<h4 class="color-warning">부캐 일정</h4>
						<p class="">클래스, 액티비티 일정 확인할 수 있습니다.</p>
						<a href="javascript:void(0)" class="btn btn-warning btn-custom">Click here</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6" style="margin-left: 150px;">
					<div class="text-center feature-block" style="width: 330px;">
						<span class="fb-icon color-success"> 
							<i class="fas fa-pen" aria-hidden="true"></i>
						</span>
						<h4 class="color-success">내 활동</h4>
						<p class="">작성한 게시글, 댓글을 확인할 수 있습니다.</p>
						<a href="javascript:void(0)" class="btn btn-success btn-custom">Click here</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="text-center feature-block" style="width: 330px; margin-left: 130px">
						<span class="fb-icon color-danger"> 
							<i class="fas fa-user-slash" aria-hidden="true"></i>
						</span>
						<h4 class="color-danger">회원 탈퇴</h4>
						<p class="">사이트 회원 탈퇴를 할 수 있습니다.</p>
						<a href="javascript:void(0)" class="btn btn-danger btn-custom">Click here</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
<br>
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>