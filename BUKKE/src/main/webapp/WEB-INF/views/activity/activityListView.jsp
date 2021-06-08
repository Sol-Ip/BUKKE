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
<style>

.button-group {
	padding : 30px;
 }	
 .btn {
display: inline-block;
}
/* #exTab1 .tab-content {
  color : white;
  background-color: #428bca;
  padding : 5px 15px;
}

#exTab2 h3 {
  color : white;
  background-color: #428bca;       
  padding : 5px 15px;
}

/* remove border radius for the tab */

/* #exTab1 .nav-pills > li > a {
  border-radius: 0;
} */

/* change border radius for the tab , apply corners on top*/
/* 
#exTab3 .nav-pills > li > a {
  border-radius: 4px 4px 0 0 ;
}

#exTab3 .tab-content {
  color : white;
  background-color: #428bca;
  padding : 5px 15px; */ */
}
</style>
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

		
		
		<!-- ========================= 리스트 시작 =========================  -->
		
	<section class="ftco-section">
				<!-- ========================= 액티비티 탭  =========================  -->
		<section class="ftco-services">
<%-- 			<c:if test="${type eq '0' }"> --%>
<!-- 			<input type="hidden" id="type-choice" value="0"> -->
<%-- 		</c:if> --%>
<%-- 		<c:if test="${type ne '0' }"> --%>
<%-- 		<input type="hidden" id="type-choice" value="${type }"> --%>
<%-- 		</c:if> --%>
<%-- 		<c:if test="${detail eq '0' }"> --%>
<!-- 			<input type="hidden" id="detail-choice" value="0"> -->
<%-- 		</c:if> --%>
<%-- 		<c:if test="${detail ne '0' }"> --%>
<%-- 		<input type="hidden" id="detail-choice" value="${detail }"> --%>
<%-- 		</c:if> --%>
			<div class="container">
					<!-- TYPE -->
				<div class="row type-form" id="type-form">
					<div class="col-md-4 d-flex align-self-stretch ftco-animate">
						<div class="media block-6 services d-block">
							<div class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-idea"></span>
							</div>
							<div class="media-body p-2 mt-3">
								<h2 class="mb-4">ACTIVITY</h2>
							</div> 
						</div>
					</div>
					<div class="col-md-8 d-flex align-self-stretch ftco-animate" >
						<div class="button-group btn-group-toggle" data-toggle="buttons">
							<button class="btn btn-secondary btn-lg" onclick="resetSelect()"><i class="fas fa-redo-alt fa-lg"></i></button>&nbsp;&nbsp;
							<label class="btn btn-primary btn-lg <c:if test="${type eq '1' }">active</c:if>" for="acti-type1" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-type" id="acti-type1" value="아웃도어"> 아웃도어
							</label>&nbsp;&nbsp; 
							<label class="btn btn-primary btn-lg <c:if test="${type eq '2' }">active</c:if>" for="acti-type2" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-type" id="acti-type2" value="서핑"> 서핑
							</label>&nbsp;&nbsp; 
							<label class="btn btn-primary btn-lg <c:if test="${type eq '3' }">active</c:if>" for="acti-type3" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-type" id="acti-type3" value="스포츠"> 스포츠
							</label>&nbsp;&nbsp; 
							<label class="btn btn-primary btn-lg <c:if test="${type eq '4' }">active</c:if>" for="acti-type4" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-type" id="acti-type4" value="수상레저"> 수상레저
							</label>
						</div>
					</div>
				</div>
				
				<br>

				<div class="row"  id="detail-form">
<!-- 				<div class="col-md-4 d-flex align-self-stretch ftco-animate"> -->
<!-- 						<div class="media block-6 services d-block"> -->
<!-- 							<div class="icon d-flex justify-content-center align-items-center"> -->
<!-- 								<span class="flaticon-compass-symbol"></span> -->
<!-- 							</div> -->
<!-- 							 <div class="media-body p-2 mt-3"> -->
<!-- 								<h2 class="mb-4">DETAILS</h2> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-8 d-flex align-self-stretch ftco-animate"> -->
<!-- 					<div class="button-group btn-group-toggle" data-toggle="buttons"> -->
<!-- 							<label -->
<%-- 								class="btn btn-primary btn-lg <c:if test="${detail eq '1' }">active</c:if>" --%>
<!-- 								for="acti-detail1" onclick="getActivitySelectList(this)">  -->
<!-- 								<input type="radio" name="acti-detail" id="acti-detail1" value="1"> 등산 및 트래킹 -->
<!-- 							</label>&nbsp;&nbsp;  -->
<!-- 							<label -->
<%-- 								class="btn btn-primary btn-lg <c:if test="${detail eq '2' }">active</c:if>" --%>
<!-- 								for="acti-detail2" onclick="getActivitySelectList(this)">  -->
<!-- 								<input type="radio" name="acti-detail" id="acti-detail2" value="2"> 낚시 -->
<!-- 							</label>&nbsp;&nbsp; -->
<!-- 					</div> -->
				 	<!-- DETAIL TYPE -->
<%-- 					 <div class="col-md-4 d-flex align-self-stretch ftco-animate">
						<div class="media block-6 services d-block">
							<div class="icon d-flex justify-content-center align-items-center">
								<span class="flaticon-compass-symbol"></span>
							</div>
							 <div class="media-body p-2 mt-3">
								<h2 class="mb-4">DETAILS</h2>
							</div>
						</div>
					</div>
					<div class="col-md-8 d-flex align-self-stretch ftco-animate">
					<div class="button-group btn-group-toggle" data-toggle="buttons">
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '1' }">active</c:if>"
								for="acti-detail1" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail1" value="1"> 등산 및 트래킹
							</label>&nbsp;&nbsp; 
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '2' }">active</c:if>"
								for="acti-detail2" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail2" value="2"> 낚시
							</label>&nbsp;&nbsp;
							 <label
								class="btn btn-primary btn-lg <c:if test="${detail eq '3' }">active</c:if>"
								for="acti-detail3" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail3" value="3"> 당일치기
							</label>&nbsp;&nbsp; 
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '4' }">active</c:if>"
								for="acti-detail4" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail4" value="4"> 1박2일
							</label>
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '5' }">active</c:if>"
								for="acti-detail5" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail5" value="5"> 강습 및 렌탈권
							</label>
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '6' }">active</c:if>"
								for="acti-detail6" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail6" value="6"> 익스트림 스포츠
							</label>
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '7' }">active</c:if>"
								for="acti-detail7" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail7" value="7"> 구기 스포츠
							</label>
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '8' }">active</c:if>"
								for="acti-detail8" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail8" value="8"> 라켓 스포츠
							</label>
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '9' }">active</c:if>"
								for="acti-detail9" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail9" value="9"> 스노쿨링 및 다이빙
							</label>
							<label
								class="btn btn-primary btn-lg <c:if test="${detail eq '10' }">active</c:if>"
								for="acti-detail10" onclick="getActivitySelectList(this)"> 
								<input type="radio" name="acti-detail" id="acti-detail10" value="10"> 낚시
							</label> 
						</div>
					</div> --%>
					</div>
				</div>
			
			
		</section>
		
		<!-- ========================= 액티비티 탭 END =========================  -->

		<!-- ========================= 검색란 =========================  -->

		<div class="container ftco-animate">
			<div class="row justify-content-center">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">SEARCH</h2><br>
					<!-- 검색결과 <span id="act-count">0</span>건 -->
				</div>
			
				<form class="col-md-8 card card-lg" action="activitySearch.com" method="get">
					<div class="card-body row no-gutters align-items-center">
						<div class="col-auto">
							<i class="fas fa-search h4 text-body"></i>
						</div>
						<!--end of col-->
						<div class="col">
							<input class="form-control form-control-borderless"
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
			
		</div>
			<!--end of col-->
	
		<!-- ========================= 검색란 END =========================  -->
		

		<!-- 액티비티 전체 수업 이미지 목록 -->
		<div class="container">
		<br><hr>
		<div class="row" id="acti-list">
		<!-- <div id="no-list"></div> -->
		
		
			
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
			</div>
			<br>
			<!-- 사업자용 등록 버튼 -->
			<div style="float: right" class="ftco-animate">
				<a href="activityWriteView.com"><button class="btn btn-lg btn-primary" type="submit">글쓰기</button></a>
			</div>
			
		
	 <!-- =============== 페이징 처리 =============== -->
		<div class="container">
		<div class="row no-gutters mt-5 ftco-animate">
          <div class="col text-center">
            <div class="block-27">
              	<!-- 이전 -->
              	<ul>
				<c:url var="before" value="activityListView.com">
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
					<c:url var="pagination" value="activityListView.com">
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
				<c:url var="after" value="activityListView.com">
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
	


<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="../resources/js/activity/activityListView.js"></script>
</html>