<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=activity"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐, 새로운 나 ! - Activity</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/activity-custom/activityListView.css">
</head>
<body>
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">ACTIVITY</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Activity <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->

	<section class="ftco-section">
		
	
<!-- 	</section>

	<section class="ftco-section bg-light"> -->
		
		<!-- ========================= 리스트 시작 =========================  -->
		
		<!-- ========================= 검색란 =========================  -->

		<div class="container ftco-animate">
			<div class="row justify-content-center">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">SEARCH</h2>
				</div>
			
				<form class="col-md-8 card card-lg" action="activitySearch.com" method="get">
					<div class="card-body row no-gutters align-items-center">
						<div class="col-auto">
							<i class="fas fa-search h4 text-body"></i>
						</div>
						<!--end of col-->
						<div class="col">
							<input class="form-control form-control-lg form-control-borderless"
								type="search" name="activityKeyword" value="${activitySearch.activityKeyword }" placeholder="검색어를 입력해주세요">
						</div>
						<!--end of col-->
						<div class="col-auto">
							<button class="btn btn-lg btn-primary" type="submit">Search</button>
						</div>
						<!--end of col-->
					</div>
				</form>
			</div>
			<!--end of col-->
			<hr>
		</div>
	
		<!-- ========================= 검색란 END =========================  -->
		
		
		<!-- ========================= 액티비티 탭  =========================  -->
		<div class="container">
			<ul class="nav nav-tabs">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle show" data-bs-toggle="dropdown"
					href="#" role="button" aria-haspopup="true" aria-expanded="true">Dropdown</a>
					<!-- div class = "dropdown-menu show" -->
					<div class="dropdown-menu" data-popper-placement="bottom-start"
						style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(0px, 43px);">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a> <a
							class="dropdown-item" href="#">Something else here</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Separated link</a>
					</div></li>
				<li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" href="#home">Home</a></li>
				<li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#profile">Profile</a></li>
				<li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#profile">Profile</a></li>
				<li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#profile">Profile</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade active show" id="home">
					<h1>전체</h1>
				</div>
				<div class="tab-pane fade" id="profile">
					<h1>분류탭1</h1>
				</div>
				<div class="tab-pane fade" id="dropdown1">
					<h1>분류탭2</h1>
				</div>
				<div class="tab-pane fade" id="dropdown2">
					<h1>분류탭3</h1>
				</div>
			</div>
		</div>
		<hr>
		<!-- ========================= 액티비티 탭 END =========================  -->



		<!-- 액티비티 전체 수업 이미지 목록 -->
		<div class="container">
			<div class="row">
				<!-- ============ 수업 이미지 목록 for-each문 ============ -->
				<c:forEach items="${aList}" var="activity">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/activityImageFiles/${activity.aRenameFilename}" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span style="font-family: 'TmoneyRoundWindExtraBold';" >[ ${activity.activityType} ]</span>
							<c:url var="aDetail" value="activityDetail.com">
                     		<c:param name="activityNo" value="${activity.activityNo }"></c:param>
                  		</c:url>
							<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
								<a href="${aDetail}">${activity.activityName}</a>
							</h3>
							<br>
							<span><b>${activity.shopId }</b></span>
						</div>
						<a href="resources/images/activityImageFiles/${activity.aRenameFilename}" class="icon image-popup d-flex justify-content-center align-items-center">
								<span class="icon-expand"></span>
							</a>
					</div>
				</div>
				</c:forEach>
				<!-- ============ 수업 이미지 목록 for-each문 END============ -->
			</div>
			<br>
			<!-- 사업자용 등록 버튼 -->
			<div style="float: right" class="ftco-animate">
				<a href="activityWriteView.com"><button class="btn btn-lg btn-primary" type="submit">글쓰기</button></a>
			</div>
			
		</div>
		
		<!-- =============== 페이징 처리 =============== -->
		<div class="container">
		<div class="row no-gutters mt-5 ftco-animate">
          <div class="col text-center">
            <div class="block-27">
              	<!-- 이전 -->
              	<ul>
				<c:url var="before" value="activityList.com">
					<c:param name="page" value="${pi.currentPage - 1 }"></c:param> <!-- controller의 param value값 -->
				</c:url>
				<c:if test="${pi.currentPage <= 1 }">
					<li><a href="#" onclick="firstPage()">&lt;</a></li>
				</c:if>
				<c:if test="${pi.currentPage > 1 }">
					<li><a href="${before}">&lt;</a></li>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
					<c:url var="pagination" value="activityList.com">
						<c:param name="page" value="${p}"></c:param>
					</c:url>
					<c:if test="${p eq pi.currentPage }">
						<li class="active"><span>${p }</span></li>
					</c:if>
					<c:if test="${p ne pi.currentPage }"> <!-- ne : not equal -->
						<li><a href="${pagination}">${p }</a></li>
					</c:if>
				</c:forEach>
				
				<!-- 다음 -->
				<c:url var="after" value="activityList.com">
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
		<!-- =============== 페이징 처리 END =============== -->

	</section>



</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script type="text/javascript" src="../resources/js/activity/activityListView.js"></script>