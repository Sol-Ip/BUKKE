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
<link rel="stylesheet" href="../resources/css/mypage/banner.css">


</head>
<style>

.myinfo {
    text-align: -webkit-center;
}

</style>
<!-- <body id="body-pd"> -->
<body id="">

    <!-- fixed section -->
	<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/mypageuser_1.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">MY PAGE</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="memberMyPage.com">MY INFORMATION</a></span>
					</p>
				</div>
			</div>
		</div>
      <jsp:include page="../member/memberMySideBar.jsp"></jsp:include>
   </section>
    
      <!--===================== 회원 정보 관리 시작 =========== -->
	<section class="ftco-section">
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