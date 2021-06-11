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
<link rel="stylesheet" href="../resources/css/member/memberKeep.css">


<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<!-- tab -->
<link rel="stylesheet" href="../resources/css/mypage/tab.css"> 

<!-- 회원정보 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="../resources/css/member/mypage.css">



</head>
 <style>
@import
	url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900,900italic)
	;

body {
	/* font-family: 'Source Sans Pro', sans-serif; */
	line-height: 1.5;
	color: #323232;
	font-size: 15px;
	font-weight: 400;
	text-rendering: optimizeLegibility;
	-webkit-font-smoothing: antialiased;
	-moz-font-smoothing: antialiased;
}

.page-content {
	/*  padding: 100px 0; */
	display: inline-block;
	width: 100%;
}

.tab-parallax {
	background-image:
		url("http://massive.markup.themebucket.net/img/pattern-2.png");
	/*background-size: cover; */
	background-attachment: fixed;
	background-repeat: repeat;
}
/* .icon-box-tabs .nav-pills {
    display: inline-block;
} */

#nav {
	flex-direction: inherit;
	justify-content: space-evenly;
}

/* .keepnav {
	flex-direction: inherit;
	justify-content: space-evenly;
} */

.icon-box-tabs .nav-pills>li>a {
	border-radius: 0;
	background: rgba(34, 34, 34, .05);
	color: #434343;
	position: relative;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.icon-box-tabs .nav-pills>li>a:hover:after, .icon-box-tabs .nav-pills>li.active>a:after,
	.icon-box-tabs .nav-pills>li.active>a:focus:after, .icon-box-tabs .nav-pills>li.active>a:hover:after
	{
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	transition: all 0.3s ease;
	opacity: 1;
}

.icon-box-tabs .nav-pills>li>a:after {
	opacity: 0;
	bottom: -10px;
	content: "";
	left: 50%;
	margin-left: -10px;
	position: absolute;
	width: 0;
	height: 0;
	border-style: solid;
	border-width: 10px 10px 0 10px;
	border-color: #fff transparent transparent transparent;
	-webkit-transition: all 0.3s ease;
	-moz-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.icon-box-tabs .nav-pills>li>a i {
	font-size: 36px;
}

.icon-box-tabs .nav-pills>li+li {
	margin-left: 20px;
}

.icon-box-tabs .nav>li>a {
	position: relative;
	display: block;
	padding: 35px 70px;
}

.icon-box-tabs .nav-pills>li>a:hover, .icon-box-tabs .nav-pills>li.active>a,
	.icon-box-tabs .nav-pills>li.active>a:focus, .icon-box-tabs .nav-pills>li.active>a:hover
	{
	color: #222;
	background: rgba(255, 255, 255, 1);
}

@media screen and (max-width:991px) and (min-width: 768px) {
	.icon-box-tabs .nav>li>a {
		padding: 35px 40px;
	}
}

@media screen and (max-width: 767px) {
	.icon-box-tabs .nav>li>a {
		padding: 35px 30px;
	}
}

.item {
	background-color: #ffffff;
}

#keep-img {
	width: 200px;
	height: 200px;
	border-radius: 50%;
	position: relative;
	margin-top: -75px;
	margin-left: 40px;
}

#exTab3 .nav-pills>li>a {
	border-radius: 4px;
	font-size: 18px;
}

#exTab3 .nav-pills>li>a:hover {
	color: #fff;
}

#exTab3 .tab-content {
	color: white;
	background-color: #428bca;
	padding: 5px 15px;
}

.nav-pills>li+li {
	margin-left: 0px !important;
	margin-bottom: 30px;
}

#exTab3 .nav-pills>li>a>i {
	display: block;
	font-size: 55px;
	margin-bottom: 15px;
	-webkit-transition-duration: 0.7s;
	-moz-transition-duration: 0.7s;
	-o-transition-duration: 0.7s;
	transition-duration: 0.7s;
}

#exTab3 .nav-pills>li>a:hover i {
	-webkit-transform: scale(1.1, 1.1) rotate(360deg);
	-moz-transform: scale(1.1, 1.1) rotate(360deg);
	-o-transform: scale(1.1, 1.1) rotate(360deg);
	transform: scale(1.1, 1.1) rotate(360deg);
}

.nav-pills>li.color-blue>a, .nav-pills>li.color-blue>a:hover, .nav-pills>li.color-blue>a:focus
	{
	background-color: #337ab7 !important;
}

.nav-pills>li.color-green>a, .nav-pills>li.color-green>a:hover,
	.nav-pills>li.color-green>a:focus {
	background-color: #33b7a3 !important;
}

.color-green a, .color-red a, .color-blue a {
	color: #fff;
}

.nav-pills>li.color-red>a, .nav-pills>li.color-red>a:hover, .nav-pills>li.color-red>a:focus
	{
	background-color: #b73346 !important;
}

.nav>li>a:hover, .nav>li>a:focus {
	background-color: inherit;
}

#exTab3 .tab-content {
	background-color: inherit;
}

.tab-pane {
	padding: 5px 15px;
}

.text-uppercase {
	height: 170px;
	text-align: center;
}

.active {
	background-color: #0c5df4;
}

#active {
	background-color: #fff;
}

.tab-pane:nth-child(1) {
	background-color: #fff !important;
}

.tab-pane:nth-child(2) {
	background-color: #fff !important;
}

.tab-pane:nth-child(3) {
	background-color: #fff !important;
}
</style>
<body id="">

   <!-- fixed section -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">OPEN MYPAGE</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>BOOKMARK <i
							class="ion-ios-arrow-forward"></i></span>
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
                    	<ion-icon name="person-sharp" class="nav__icon"></ion-icon>
                        <!-- <ion-icon name="folder-outline" class="nav__icon"></ion-icon> -->
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                   		<ion-icon name="calendar-sharp" class="nav__icon"></ion-icon>
                        <span class="nav_name">부캐 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">부캐 일정보기</a>
                            
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
                            <a href="#" class="collapse__sublink">채팅 목록</a>
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
   
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">${loginMember.memberNick }'S BOOKMARK LIST</h2>
				</div>
			</div>
		</div>
	</section>

<div class="page-content tab-parallax">
<div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <!--tabs square start-->
                            <section class="icon-box-tabs ">
                                <ul id ="nav" class="nav nav-pills">
                                	<!-- li class="active" -->
                                    <li id= "active" class="active">
                                        <a data-toggle="tab" href="#tab-15" aria-expanded="true">
                                          <i class="fas fa-border-all fa-2x"></i></a>
                                    </li> 
                                    <li class="">
                                        <a data-toggle="tab" href="#tab-18" aria-expanded="false">
                                          <i class="fas fa-hand-spock fa-2x"></i></a>
                                    </li>
                                    <li class="">
                                        <a data-toggle="tab" href="#tab-19" aria-expanded="false">
                                           <i class="far fa-hand-spock fa-2x"></i></a>
                                    </li>
                                </ul>
                                <div class="panel-body ftco-animate">
                                    <div class="tab-content">
								<div id="tab-15" class="tab-pane active">
									<div class="heading-title-alt">
										<!-- <span
											class="heading-sub-title-alt text-uppercase theme-color-">탭1</span> -->
										<h1 class="text-uppercase"><b>ALL</b></h1>
									</div>
									<!-- ======================== 북마크 리스트 전체 ======================== -->
									<c:if test="${kList.size() == 0 }">
										<section class="ftco-section">
											<div class="container">
												<!-- 찜 목록이 없는 경우 -->
												<h1>찜 목록이 없습니다.</h1>
											</div>
										</section>
									</c:if>


									<!-- 찜 목록이 있는 경우 (전체) -->
									<c:if test="${kList.size() > 0 }">
										<div class="container">
											<input type="hidden" class="keepNo" value="${ keep.keepNo }"
												name="keepNo">
											<div class="row ftco-animate">
												<div class="row col-md-12">
													<c:forEach items="${kList }" var="keep">
														<div class="col-md-4">
															<div class="item">
																<div class="testimony-wrap p-4 pb-5">
																	 <c:if
																		test="${keep.classNo == 0 && keep.activityNo != 0 }">
																		<c:url var="aDetail" value="activityDetail.com">
																			<c:param name="activityNo"
																				value="${keep.activity.activityNo }"></c:param>
																		</c:url>
																		<a href="${aDetail }"><div class="user-img mb-5" id="keep-img"
																				style="background-image: url(../resources/images/activityImageFiles/${keep.activity.aRenameFilename})">
																			</div></a>
																	</c:if> 
																	<c:if
																		test="${keep.classNo != 0 && keep.activityNo == 0 }">
																		<c:url var="cDetail" value="bukkeClassDetailView.com">
																			<c:param name="classNo"
																				value="${keep.bukkeClass.classNo }"></c:param>
																		</c:url>
																		<a href="${cDetail }"><div class="user-img mb-5" id="keep-img"
																				style="background-image: url(../resources/bClassFiles/${keep.bukkeClass.cRenameFilename })">
																			</div></a>
																	</c:if>

																 	<c:if
																		test="${keep.classNo == 0 && keep.activityNo != 0 }">
																		<div class="text">
																			<div class="pl-5">
																				<p class="name">${keep.activity.activityType }</p>
																				<span class="position">${keep.activity.shopId }</span>
																			</div>
																			<br>
																			<p class="mb-5 pl-4 line">
																				<b>${keep.activity.activityName}</b>
																			</p>
																		</div>
																		<br>
																	</c:if> 

																	<c:if
																		test="${keep.classNo != 0 && keep.activityNo == 0 }">
																		<div class="text">
																			<div class="pl-5">
																				<p class="name">${keep.bukkeClass.classType }</p>
																				<span class="position">${keep.bukkeClass.shopId }</span>
																			</div>
																			<br>
																			<p class="mb-5 pl-4 line">
																				<b>${keep.bukkeClass.className}</b>
																			</p>
																		</div>
																		<br>
																	</c:if>
																</div>
															</div>
														</div>
													</c:forEach>
												</div>
											</div>
										</div>


										<!-- =============== 페이징 처리 =============== -->
										<div class="container">
											<div class="row no-gutters mt-5 ftco-animate">
												<div class="col text-center">
													<div class="block-27">
														<!-- 이전 -->
														<ul>
															<c:url var="before" value="KeepListbyId.com">
																<c:param name="page" value="${pi.currentPage - 1 }"></c:param>
																<!-- controller의 param value값 -->
															</c:url>
															<c:if test="${pi.currentPage <= 1 }">
																<li><a href="#" onclick="firstPage()">&lt;</a></li>
															</c:if>
															<c:if test="${pi.currentPage > 1 }">
																<li><a href="${before}">&lt;</a></li>
															</c:if>

															<!-- 페이지 -->
															<c:forEach var="p" begin="${pi.startPage }"
																end="${pi.endPage }">
																<c:url var="pagination" value="KeepListbyId.com">
																	<c:param name="page" value="${p}"></c:param>
																</c:url>
																<c:if test="${p eq pi.currentPage }">
																	<li class="active"><span>${p }</span></li>
																</c:if>
																<c:if test="${p ne pi.currentPage }">
																	<!-- ne : not equal -->
																	<li><a href="${pagination}">${p }</a></li>
																</c:if>
															</c:forEach>

															<!-- 다음 -->
															<c:url var="after" value="KeepListbyId.com">
																<c:param name="page" value="${pi.currentPage + 1}"></c:param>
															</c:url>
															<c:if test="${pi.currentPage >= pi.maxPage }">
																<li><a href="#" onclick="lastPage()">&gt;</a></li>
															</c:if>
															<c:if test="${pi.currentPage < pi.maxPage }">
																<li><a href="${after}">&gt;</a></li>
															</c:if>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</c:if>
									<!-- =============== 페이징 처리 END =============== -->
									<!-- ======================== 북마크 리스트 전체 ======================== -->
									<br><br>
								</div>
								<!--   <div id="tab-16" class="tab-pane">
                                            <div class="heading-title-alt">
                                                <span class="heading-sub-title-alt text-uppercase theme-color-">탭2</span>
                                                <h2 class="text-uppercase">Massive UI collection</h2>
                                            </div>
                                            Leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam. In quis scelerisque velit. Proin pellentesque neque ut scelerisque dapibus. Praesent elementum feugiat dignissim. Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam. In quis scelerisque velit. Proin pellentesque neque ut scelerisque dapibus. Praesent elementum feugiat dignissim. Nunc placerat mi id nisi interdum mollis.
                                        </div>
                                        <div id="tab-17" class="tab-pane">
                                            <div class="heading-title-alt">
                                                <span class="heading-sub-title-alt text-uppercase theme-color-">탭3</span>
                                                <h2 class="text-uppercase">Huge possibilities</h2>
                                            </div>
                                            congue laoreet elit metus eget diam. Proin ac metus diam. In quis scelerisque velit. Proin pellentesque neque ut scelerisque dapibus. Praesent elementum feugiat dignissim. Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque mattis, leo quam aliquet diam, congue laoreet elit metus eget diam. Proin ac metus diam. In quis scelerisque velit. Proin pellentesque neque ut scelerisque dapibus. Praesent elementum feugiat dignissim. Nunc placerat mi id nisi interdum mollis.
                                        </div> -->
                                        <div id="tab-18" class="tab-pane">
                                            <div class="heading-title-alt">
                                                <!-- <span class="heading-sub-title-alt text-uppercase theme-color-">탭4</span> -->
                                                <h1 class="text-uppercase"><b>CLASS</b></h1>
                                            </div>
									<!-- ======================== 북마크 리스트 전체 ======================== -->
									<c:if test="${claList.size() == 0 }">
										<section class="ftco-section">
											<div class="container">
												<!-- 찜 목록이 없는 경우 -->
												<h1>클래스 찜 목록이 없습니다.</h1>
											</div>
										</section>
									</c:if>

									<!-- 찜 목록이 있는 경우 (클래스) -->
									<c:if test="${claList.size() > 0 }">
										<div class="container">
											<input type="hidden" class="keepNo" value="${ keep.keepNo }"
												name="keepNo">
											<div class="row ftco-animate">
												<div class="row col-md-12">
													<c:forEach items="${claList }" var="claKeep">
														<div class="col-md-4">
															<div class="item">
																<div class="testimony-wrap p-4 pb-5">
																		<c:url var="cDetail" value="bukkeClassDetailView.com">
																			<c:param name="classNo"
																				value="${claKeep.bukkeClass.classNo }"></c:param>
																		</c:url>
																		<a href="${cDetail }"><div class="user-img mb-5" id="keep-img"
																				style="background-image: url(../resources/bClassFiles/${claKeep.bukkeClass.cRenameFilename })">
																			</div></a>
																		<div class="text">
																			<div class="pl-5">
																				<p class="name">${claKeep.bukkeClass.classType }</p>
																				<span class="position">${claKeep.bukkeClass.shopId }</span>
																			</div>
																			<br>
																			<p class="mb-5 pl-4 line">
																				<b>${claKeep.bukkeClass.className}</b>
																			</p>
																		</div>
																		<br>
																</div>
															</div>
														</div>
													</c:forEach>
												</div>
											</div>
										</div>


										<!-- =============== 페이징 처리 =============== -->
										<div class="container">
											<div class="row no-gutters mt-5 ftco-animate">
												<div class="col text-center">
													<div class="block-27">
														<!-- 이전 -->
														<ul>
															<c:url var="before" value="KeepListbyId.com">
																<c:param name="page" value="${piCla.currentPage - 1 }"></c:param>
																<!-- controller의 param value값 -->
															</c:url>
															<c:if test="${piCla.currentPage <= 1 }">
																<li><a href="#" onclick="firstPage()">&lt;</a></li>
															</c:if>
															<c:if test="${piCla.currentPage > 1 }">
																<li><a href="${before}">&lt;</a></li>
															</c:if>

															<!-- 페이지 -->
															<c:forEach var="cla" begin="${piCla.startPage }"
																end="${piCla.endPage }">
																<c:url var="pagination" value="KeepListbyId.com">
																	<c:param name="page" value="${cla}"></c:param>
																</c:url>
																<c:if test="${cla eq piCla.currentPage }">
																	<li class="active"><span>${cla}</span></li>
																</c:if>
																<c:if test="${cla ne piCla.currentPage }">
																	<!-- ne : not equal -->
																	<li><a href="${pagination}">${cla }</a></li>
																</c:if>
															</c:forEach>

															<!-- 다음 -->
															<c:url var="after" value="KeepListbyId.com">
																<c:param name="page" value="${piCla.currentPage + 1}"></c:param>
															</c:url>
															<c:if test="${piCla.currentPage >= piCla.maxPage }">
																<li><a href="#" onclick="lastPage()">&gt;</a></li>
															</c:if>
															<c:if test="${piCla.currentPage < piCla.maxPage }">
																<li><a href="${after}">&gt;</a></li>
															</c:if>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</c:if>
									<!-- =============== 페이징 처리 END =============== -->
									<!-- ======================== 북마크 리스트 클래스 ======================== -->
									<br><br>
                                        </div>
                                        <div id="tab-19" class="tab-pane">
                                            <div class="heading-title-alt">
                                                <!-- <span class="heading-sub-title-alt text-uppercase theme-color-">탭5</span> -->
                                                <h1 class="text-uppercase"><b>ACTIVITY</b></h1>
                                            </div>
									<!-- ======================== 북마크 리스트 전체 ======================== -->
									<c:if test="${actList.size() == 0 }">
										<section class="ftco-section">
											<div class="container">
												<!-- 찜 목록이 없는 경우 -->
												<h1>찜 목록이 없습니다.</h1>
											</div>
										</section>
									</c:if>

									<c:if test="${actList.size() > 0 }">
										<div class="container">
											<input type="hidden" class="keepNo" value="${ keep.keepNo }"
												name="keepNo">
											<div class="row ftco-animate">
												<div class="row col-md-12">
													<c:forEach items="${actList }" var="actKeep">
														<div class="col-md-4">
															<div class="item">
																<div class="testimony-wrap p-4 pb-5">
																		<c:url var="aDetail" value="activityDetail.com">
																			<c:param name="activityNo"
																				value="${keep.activity.activityNo }"></c:param>
																		</c:url>
																		<a href="${aDetail }"><div class="user-img mb-5"
																				id="keep-img"
																				style="background-image: url(../resources/images/activityImageFiles/${actKeep.activity.aRenameFilename})">
																			</div></a>
																		<div class="text">
																			<div class="pl-5">
																				<p class="name">${actKeep.activity.activityType }</p>
																				<span class="position">${actKeep.activity.shopId }</span>
																			</div>
																			<br>
																			<p class="mb-5 pl-4 line">
																				<b>${actKeep.activity.activityName}</b>
																			</p>
																		</div>
																		<br>
																</div>
															</div>
														</div>
													</c:forEach>
												</div>
											</div>
										</div>



										<!-- =============== 페이징 처리 =============== -->
										<div class="container">
											<div class="row no-gutters mt-5 ftco-animate">
												<div class="col text-center">
													<div class="block-27">
														<!-- 이전 -->
														<ul>
															<c:url var="before" value="KeepListbyId.com">
																<c:param name="page" value="${piAct.currentPage - 1 }"></c:param>
																<!-- controller의 param value값 -->
															</c:url>
															<c:if test="${piAct.currentPage <= 1 }">
																<li><a href="#" onclick="firstPage()">&lt;</a></li>
															</c:if>
															<c:if test="${piAct.currentPage > 1 }">
																<li><a href="${before}">&lt;</a></li>
															</c:if>

															<!-- 페이지 -->
															<c:forEach var="p" begin="${piAct.startPage }"
																end="${piAct.endPage }">
																<c:url var="pagination" value="KeepListbyId.com">
																	<c:param name="page" value="${act}"></c:param>
																</c:url>
																<c:if test="${act eq piAct.currentPage }">
																	<li class="active"><span>${act}</span></li>
																</c:if>
																<c:if test="${act ne piAct.currentPage }">
																	<!-- ne : not equal -->
																	<li><a href="${pagination}">${act }</a></li>
																</c:if>
															</c:forEach>

															<!-- 다음 -->
															<c:url var="after" value="KeepListbyId.com">
																<c:param name="page" value="${piAct.currentPage + 1}"></c:param>
															</c:url>
															<c:if test="${piAct.currentPage >= piAct.maxPage }">
																<li><a href="#" onclick="lastPage()">&gt;</a></li>
															</c:if>
															<c:if test="${piAct.currentPage < piAct.maxPage }">
																<li><a href="${after}">&gt;</a></li>
															</c:if>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</c:if>
									<!-- =============== 페이징 처리 END =============== -->
									<!-- ======================== 북마크 리스트 액티비티 ======================== -->
									<br><br>
                                        </div>

                                    </div>
                                </div>
                            </section>
                            <!--tabs square end-->

                        </div>

                    </div>
                </div>
  </div>

	<%-- <!-- ======================== 북마크 리스트 전체 ======================== -->
	<c:if test="${kList.size() == 0 }">
		<section class="ftco-section">
			<div class="container">
				<!-- 찜 목록이 없는 경우 -->
				<h1>찜 목록이 없습니다.</h1>
			</div>
		</section>
	</c:if>
	<!-- <div class="tabset retable">

			<input type="radio" name="tabset" id="tab1" aria-controls="marzen"checked> 
			<label for="tab1">전체</label> 
			<input type="radio" name="tabset" id="tab2" aria-controls="rauchbier"> 
			<label for="tab2">액티비티</label> 
			<input type="radio" name="tabset" id="tab3" aria-controls="dunkles"> 
			<label for="tab3">클래스</label>
				
				 <div class="tab-panels"> 
					<section id="marzen" class="tab-panel">  -->

	<!-- 찜 목록이 있는 경우 (전체) -->
	<c:if test="${kList.size() > 0 }">
		<div class="container">
			<input type="hidden" class="keepNo" value="${ keep.keepNo }"name="keepNo">
			<div class="row ftco-animate">
				<div class="row col-md-12">
					<c:forEach items="${kList }" var="keep">
						<div class="col-md-4">
							<div class="item">
								<div class="testimony-wrap p-4 pb-5">
									<c:if test="${keep.classNo == 0 && keep.activityNo != 0 }">
										<c:url var="aDetail" value="activityDetail.com">
											<c:param name="activityNo"
												value="${keep.activity.activityNo }"></c:param>
										</c:url>
										<a href="${aDetail }"><div class="user-img mb-5"
												id="keep-img"
												style="background-image: url(../resources/images/activityImageFiles/${keep.activity.aRenameFilename})">
											</div></a>
									</c:if>
									<c:if test="${keep.classNo != 0 && keep.activityNo == 0 }">
										<c:url var="cDetail" value="bukkeClassDetailView.com">
											<c:param name="classNo" value="${keep.bukkeClass.classNo }"></c:param>
										</c:url>
										<a href="${cDetail }"><div class="user-img mb-5"
												id="keep-img"
												style="background-image: url(../resources/bClassFiles/${keep.bukkeClass.cRenameFilename })">
											</div></a>
									</c:if>

									<c:if test="${keep.classNo == 0 && keep.activityNo != 0 }">
										<div class="text">
											<div class="pl-5">
												<p class="name">${keep.activity.activityType }</p>
												<span class="position">${keep.activity.shopId }</span>
											</div>
											<br>
											<p class="mb-5 pl-4 line">
												<b>${keep.activity.activityName}</b>
											</p>
										</div>
										<br>
									</c:if>

									<c:if test="${keep.classNo != 0 && keep.activityNo == 0 }">
										<div class="text">
											<div class="pl-5">
												<p class="name">${keep.bukkeClass.classType }</p>
												<span class="position">${keep.bukkeClass.shopId }</span>
											</div>
											<br>
											<p class="mb-5 pl-4 line">
												<b>${keep.bukkeClass.className}</b>
											</p>
										</div>
										<br>
									</c:if>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>



		<!-- =============== 페이징 처리 =============== -->
		<div class="container">
			<div class="row no-gutters mt-5 ftco-animate">
				<div class="col text-center">
					<div class="block-27">
						<!-- 이전 -->
						<ul>
							<c:url var="before" value="KeepListbyId.com">
								<c:param name="page" value="${pi.currentPage - 1 }"></c:param>
								<!-- controller의 param value값 -->
							</c:url>
							<c:if test="${pi.currentPage <= 1 }">
								<li><a href="#" onclick="firstPage()">&lt;</a></li>
							</c:if>
							<c:if test="${pi.currentPage > 1 }">
								<li><a href="${before}">&lt;</a></li>
							</c:if>

							<!-- 페이지 -->
							<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
								<c:url var="pagination" value="KeepListbyId.com">
									<c:param name="page" value="${p}"></c:param>
								</c:url>
								<c:if test="${p eq pi.currentPage }">
									<li class="active"><span>${p }</span></li>
								</c:if>
								<c:if test="${p ne pi.currentPage }">
									<!-- ne : not equal -->
									<li><a href="${pagination}">${p }</a></li>
								</c:if>
							</c:forEach>

							<!-- 다음 -->
							<c:url var="after" value="KeepListbyId.com">
								<c:param name="page" value="${pi.currentPage + 1}"></c:param>
							</c:url>
							<c:if test="${pi.currentPage >= pi.maxPage }">
								<li><a href="#" onclick="lastPage()">&gt;</a></li>
							</c:if>
							<c:if test="${pi.currentPage < pi.maxPage }">
								<li><a href="${after}">&gt;</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	<!-- =============== 페이징 처리 END =============== -->
	<!-- ======================== 북마크 리스트 전체 ======================== -->
	<br>
	<br> --%>
	
</body>
<script src="../resources/js/member/memberKeep.js"></script>
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<script type="text/javascript" src="../resources/js/activity/activityListView.js"></script>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>