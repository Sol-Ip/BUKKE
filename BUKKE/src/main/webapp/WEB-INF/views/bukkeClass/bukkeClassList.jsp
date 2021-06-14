<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=bclass"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bukke Class</title> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/bClass-custom/bClassListView.css">
<style>
/* .banner {
      background-color: #8187dc;
   } */
.banner * {
   color: white;
}

.hero-wrap .overlay {
	background-color: #f0efeb;
}
.form-control-borderless {
    border: none;
}

.form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
    border: none;
    outline: none;
    box-shadow: none;
}

.project:after {
	background : #e9ecd1;
}

.block-27 ul li.active a, .block-27 ul li.active span {
	background:#ddbea9;
}

.block-27 ul li a, .block-27 ul li span {
	border : 1px solid #bdc5dd;
}

/* .project:hover:after, .project:focus:after {
	boder-radius : 30px;
} */

.btn.btn-primary {
	background: #e7cbb1;
	border: 1px solid #e7cbb1;
}



/* 탭 css */
@import url('https://fonts.googleapis.com/css?family=Roboto');


.tab{
    margin-top: 30px;
}
.tab .nav-tabs{
    border:none;
    border-bottom: 1px solid #e4e4e4;
}
.nav-tabs li a{
    padding: 15px 40px;
    border:1px solid #ededed;
    border-top: 2px solid #ededed;
    border-right: 0px none;
    background: #f4cd8d;
    color:#fff;
    border-radius: 0px;
    margin-right: 0px;
    font-weight: bold;
    transition: all 0.3s ease-in 0s;
}
.nav-tabs li a:hover{
    border-bottom-color: #ededed;
    border-right: 0px none;
    background: #00b0ad;
    color: #fff;
}
.nav-tabs li a i{
    display: inline-block;
    text-align: center;
    margin-right:10px;
}
.nav-tabs li:last-child{
    border-right:1px solid #ededed;
}
.nav-tabs li.active a,
.nav-tabs li.active a:focus,
.nav-tabs li.active a:hover{
    border-top: 3px solid #00b0ad;
    border-right: 1px solid #d3d3d3;
    margin-top: -15px;
    color: #444;
    padding: 22px 40px;
}
.tab .tab-content{
    padding: 20px;
    line-height: 22px;
    box-shadow:0px 1px 0px #808080;
}
.tab .tab-content h3{
    margin-top: 0;
}
@media only screen and (max-width: 767px){
    .nav-tabs li{
        width:100%;
        margin-bottom: 10px;
    }
    .nav-tabs li a{
        padding: 15px;
    }
    .nav-tabs li.active a,
    .nav-tabs li.active a:focus,
    .nav-tabs li.active a:hover{
        padding: 15px;
        margin-top: 0;
    }
}

</style>
</head>
<body>
	<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/bukkeClassImg/banner.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread" style="color:#595959;">Class</h1>
					<p class="mr-2" style="color:#595959;">원하는 취미들을 마음껏 즐겨보세요</p>
				</div>
			</div>
		</div>
	</section>	
	
	<!-- ========================= 리스트 시작 =========================  -->
	
	<!-- ========================= 검색창 ==============================  -->
	<div class="container ftco-animate">
			<br>
			<div class="row justify-content-center">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">SEARCH</h2>
				</div>
				
				<form class="col-md-8 card card-lg" action="bukkeClassSearch.com" method="get">
					<div class="card-body row no-gutters align-items-center">
						<div class="col-auto">
							<i class="fas fa-search h4 text-body"></i>
						</div>
						<!--end of col-->
						<div class="col">
							<input class="form-control form-control-lg form-control-borderless" type="search" name="classKeyword" value="${search.classKeyword }" placeholder="검색어를 입력해주세요">
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
		<!-- ========================= 클래스 정보란 =========================  -->
		<div class="container">
			<div class="row justify-content-start mb-5 pb-2">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line">
					<small class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">CLASS</h2>
				</div>
				<div class="col-md-8 pl-md-5 heading-section ftco-animate">
					<div class="pl-md-4 border-line">
						<p>부캐의 클래스들을 한 눈에 볼 수 있어요 !</p>
					</div>
				</div>
			</div>
		</div>
		<!-- ========================= 클래스 정보란 END =========================  -->
		
		
		<!-- ========================= 클래스 탭  =========================  -->
		
		<!-- =============== 부캐 클래스 전체 보기 ================== -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="tab" role="tabpanel">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#Section1"
							aria-controls="home" role="tab" data-toggle="tab"> <i
								class="fa fa-user"></i>전체
						</a></li>
						<li role="presentation"><a href="#Section2"
							aria-controls="profile" role="tab" data-toggle="tab"> <i
								class="fa fa-envelope"></i>플라워
						</a></li>
						<li role="presentation"><a href="#Section3"
							aria-controls="messages" role="tab" data-toggle="tab"> <i
								class="fa fa-cube"></i>미술
						</a></li>
						<li role="presentation"><a href="#Section4"
							aria-controls="messages" role="tab" data-toggle="tab"> <i
								class="fa fa-comment"></i>뷰티
						</a></li>
						<li role="presentation"><a href="#Section5"
							aria-controls="messages" role="tab" data-toggle="tab"> <i
								class="fa fa-comment"></i>음악
						</a></li>
						<li role="presentation"><a href="#Section6"
							aria-controls="messages" role="tab" data-toggle="tab"> <i
								class="fa fa-comment"></i>사진
						</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content tabs">
						<div role="tabpanel" class="tab-pane active" id="Section1">
							<!-- <h3>부캐 클래스 전체</h3> -->
							<div class="container">
								<div class="row">
									<c:forEach items="${bList }" var="bukkeClass">
										<div class="col-md-6 col-lg-3 ftco-animate">
											<div class="project">
												<img
													src="../resources/bClassFiles/${bukkeClass.cRenameFilename }"
													id="class-img" class="img-fluid" alt="Colorlib Template">
												<div class="text">
													<span style="font-family: 'TmoneyRoundWindExtraBold';">[
														${bukkeClass.classType} ]</span>
													<c:url var="cDetail" value="bukkeClassDetailView.com">
														<c:param name="classNo" value="${bukkeClass.classNo }"></c:param>
													</c:url>
													<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
														<a href="${cDetail }">${bukkeClass.className }</a>
													</h3>
												</div>
												<a href="${cDetail }"></a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<br>

							<!-- 페이징 처리 -->
							<div class="container">
								<div class="row no-gutters mt-5">
									<div class="col text-center">
										<div class="block-27">
											<!-- 이전 -->
											<ul>
												<c:url var="before" value="bukkeClassList.com">
													<c:param name="page" value="${pi.currentPage - 1 }"></c:param>
												</c:url>
												<c:if test="${pi.currentPage <= 1 }">
													<li><a href="#" onclick="firstPage()">&lt;</a></li>
												</c:if>
												<c:if test="${pi.currentPage > 1 }">
													<li><a href="${before }">&lt;</a></li>
												</c:if>
												<!-- 페이지 -->
												<c:forEach var="p" begin="${pi.startPage }"
													end="${pi.endPage }">
													<c:url var="pagination" value="bukkeClassList.com">
														<c:param name="page" value="${p }"></c:param>
													</c:url>
													<c:if test="${p eq pi.currentPage }">
														<li class="active"><span>${p }</span></li>
													</c:if>
													<c:if test="${p ne pi.currentPage }">
														<li><a href="${pagination }">${p }</a></li>
													</c:if>
												</c:forEach>
												<!-- 다음 -->
												<c:url var="after" value="bukkeClassList.com">
													<c:param name="page" value="${pi.currentPage + 1 }"></c:param>
												</c:url>
												<c:if test="${pi.currentPage >= pi.maxPage }">
													<li><a href="#" onclick="lastPage()">&gt;</a></li>
												</c:if>
												<c:if test="${pi.currentPage < pi.maxPage }">
													<li><a href="${after }">&gt;</a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ============== 플라워 모아보기 ================== -->
						<div role="tabpanel" class="tab-pane fade" id="Section2">
							<!-- <h3>부캐 클래스 플라워</h3> -->
							<c:if test="${flowerList.size() > 0 }">
							<div class="container">
								<div class="row">
									<c:forEach items="${flowerList }" var="flowerList">
										<div class="col-md-6 col-lg-3 ftco-animate">
											<div class="project">
												<img
													src="../resources/bClassFiles/${flowerList.cRenameFilename }"
													id="class-img" class="img-fluid" alt="Colorlib Template">
												<div class="text">
													<span style="font-family: 'TmoneyRoundWindExtraBold';">[
														${flowerList.classType} ]</span>
													<c:url var="cDetail" value="bukkeClassDetailView.com">
														<c:param name="classNo" value="${flowerList.classNo }"></c:param>
													</c:url>
													<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
														<a href="${cDetail }">${flowerList.className }</a>
													</h3>
												</div>
												<a href="${cDetail }">
												</a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<br>

							<!-- 페이징 처리 -->
							<div class="container">
								<div class="row no-gutters mt-5">
									<div class="col text-center">
										<div class="block-27">
											<!-- 이전 -->
											<ul>
												<c:url var="before" value="bukkeClassList.com">
													<c:param name="page" value="${pi.currentPage - 1 }"></c:param>
												</c:url>
												<c:if test="${pi.currentPage <= 1 }">
													<li><a href="#" onclick="firstPage()">&lt;</a></li>
												</c:if>
												<c:if test="${pi.currentPage > 1 }">
													<li><a href="${before }">&lt;</a></li>
												</c:if>
												<!-- 페이지 -->
												<c:forEach var="p" begin="${piFlower.startPage }"
													end="${piFlower.endPage }">
													<c:url var="pagination" value="bukkeClassList.com">
														<c:param name="page" value="${p }"></c:param>
													</c:url>
													<c:if test="${p eq piFlower.currentPage }">
														<li class="active"><span>${p }</span></li>
													</c:if>
													<c:if test="${p ne piFlower.currentPage }">
														<li><a href="${pagination }">${p }</a></li>
													</c:if>
												</c:forEach>
												<!-- 다음 -->
												<c:url var="after" value="bukkeClassList.com">
													<c:param name="page" value="${piFlower.currentPage + 1 }"></c:param>
												</c:url>
												<c:if test="${piFlower.currentPage >= piFlower.maxPage }">
													<li><a href="#" onclick="lastPage()">&gt;</a></li>
												</c:if>
												<c:if test="${piFlower.currentPage < piFlower.maxPage }">
													<li><a href="${after }">&gt;</a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
							</c:if>
						</div>
						<!-- =============== 미술 모아보기 ================ -->
						<div role="tabpanel" class="tab-pane fade" id="Section3">
							<!-- <h3>부캐 클래스 미술</h3> -->
							<c:if test="${artList.size() > 0 }">
								<div class="container">
								<div class="row">
									<c:forEach items="${artList }" var="artList">
										<div class="col-md-6 col-lg-3 ftco-animate">
											<div class="project">
												<img
													src="../resources/bClassFiles/${artList.cRenameFilename }"
													id="class-img" class="img-fluid" alt="Colorlib Template">
												<div class="text">
													<span style="font-family: 'TmoneyRoundWindExtraBold';">[
														${artList.classType} ]</span>
													<c:url var="cDetail" value="bukkeClassDetailView.com">
														<c:param name="classNo" value="${artList.classNo }"></c:param>
													</c:url>
													<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
														<a href="${cDetail }">${artList.className }</a>
													</h3>
												</div>
												<a href="${cDetail }">
												</a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<br>

							<!-- 페이징 처리 -->
							<div class="container">
								<div class="row no-gutters mt-5">
									<div class="col text-center">
										<div class="block-27">
											<!-- 이전 -->
											<ul>
												<c:url var="before" value="bukkeClassList.com">
													<c:param name="page" value="${piArt.currentPage - 1 }"></c:param>
												</c:url>
												<c:if test="${piArt.currentPage <= 1 }">
													<li><a href="#" onclick="firstPage()">&lt;</a></li>
												</c:if>
												<c:if test="${piArt.currentPage > 1 }">
													<li><a href="${before }">&lt;</a></li>
												</c:if>
												<!-- 페이지 -->
												<c:forEach var="p" begin="${piArt.startPage }"
													end="${piArt.endPage }">
													<c:url var="pagination" value="bukkeClassList.com">
														<c:param name="page" value="${p }"></c:param>
													</c:url>
													<c:if test="${p eq piArt.currentPage }">
														<li class="active"><span>${p }</span></li>
													</c:if>
													<c:if test="${p ne piArt.currentPage }">
														<li><a href="${pagination }">${p }</a></li>
													</c:if>
												</c:forEach>
												<!-- 다음 -->
												<c:url var="after" value="bukkeClassList.com">
													<c:param name="page" value="${piArt.currentPage + 1 }"></c:param>
												</c:url>
												<c:if test="${piArt.currentPage >= piArt.maxPage }">
													<li><a href="#" onclick="lastPage()">&gt;</a></li>
												</c:if>
												<c:if test="${piArt.currentPage < piArt.maxPage }">
													<li><a href="${after }">&gt;</a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
							</c:if>
						</div>
						<!-- ================== 뷰티 모아보기 ================== -->
						<div role="tabpanel" class="tab-pane fade" id="Section4">
							<!-- <h3>부캐 클래스 뷰티</h3> -->
							<c:if test="${beautyList.size() > 0 }">
							<div class="container">
								<div class="row">
									<c:forEach items="${beautyList }" var="beautyList">
										<div class="col-md-6 col-lg-3 ftco-animate">
											<div class="project">
												<img
													src="../resources/bClassFiles/${beautyList.cRenameFilename }"
													id="class-img" class="img-fluid" alt="Colorlib Template">
												<div class="text">
													<span style="font-family: 'TmoneyRoundWindExtraBold';">[
														${beautyList.classType} ]</span>
													<c:url var="cDetail" value="bukkeClassDetailView.com">
														<c:param name="classNo" value="${beautyList.classNo }"></c:param>
													</c:url>
													<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
														<a href="${cDetail }">${beautyList.className }</a>
													</h3>
												</div>
												<a href="${cDetail }">
												</a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<br>

							<!-- 페이징 처리 -->
							<div class="container">
								<div class="row no-gutters mt-5">
									<div class="col text-center">
										<div class="block-27">
											<!-- 이전 -->
											<ul>
												<c:url var="before" value="bukkeClassList.com">
													<c:param name="page" value="${piBeauty.currentPage - 1 }"></c:param>
												</c:url>
												<c:if test="${piBeauty.currentPage <= 1 }">
													<li><a href="#" onclick="firstPage()">&lt;</a></li>
												</c:if>
												<c:if test="${piBeauty.currentPage > 1 }">
													<li><a href="${before }">&lt;</a></li>
												</c:if>
												<!-- 페이지 -->
												<c:forEach var="p" begin="${piBeauty.startPage }"
													end="${piBeauty.endPage }">
													<c:url var="pagination" value="bukkeClassList.com">
														<c:param name="page" value="${p }"></c:param>
													</c:url>
													<c:if test="${p eq piBeauty.currentPage }">
														<li class="active"><span>${p }</span></li>
													</c:if>
													<c:if test="${p ne piBeauty.currentPage }">
														<li><a href="${pagination }">${p }</a></li>
													</c:if>
												</c:forEach>
												<!-- 다음 -->
												<c:url var="after" value="bukkeClassList.com">
													<c:param name="page" value="${piBeauty.currentPage + 1 }"></c:param>
												</c:url>
												<c:if test="${piBeauty.currentPage >= piBeauty.maxPage }">
													<li><a href="#" onclick="lastPage()">&gt;</a></li>
												</c:if>
												<c:if test="${piBeauty.currentPage < piBeauty.maxPage }">
													<li><a href="${after }">&gt;</a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
							</c:if>
						</div>
						<!--==================== 음악 모아보기 ==================  -->
						<div role="tabpanel" class="tab-pane fade" id="Section5">
							<!-- <h3>부캐 클래스 음악</h3> -->
							<c:if test="${musicList.size() > 0 }">
							<div class="container">
								<div class="row">
									<c:forEach items="${musicList }" var="musicList">
										<div class="col-md-6 col-lg-3 ftco-animate">
											<div class="project">
												<img
													src="../resources/bClassFiles/${musicList.cRenameFilename }"
													id="class-img" class="img-fluid" alt="Colorlib Template">
												<div class="text">
													<span style="font-family: 'TmoneyRoundWindExtraBold';">[
														${musicList.classType} ]</span>
													<c:url var="cDetail" value="bukkeClassDetailView.com">
														<c:param name="classNo" value="${musicList.classNo }"></c:param>
													</c:url>
													<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
														<a href="${cDetail }">${musicList.className }</a>
													</h3>
												</div>
												<a href="${cDetail }">
												</a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<br>

							<!-- 페이징 처리 -->
							<div class="container">
								<div class="row no-gutters mt-5">
									<div class="col text-center">
										<div class="block-27">
											<!-- 이전 -->
											<ul>
												<c:url var="before" value="bukkeClassList.com">
													<c:param name="page" value="${piMusic.currentPage - 1 }"></c:param>
												</c:url>
												<c:if test="${piMusic.currentPage <= 1 }">
													<li><a href="#" onclick="firstPage()">&lt;</a></li>
												</c:if>
												<c:if test="${piMusic.currentPage > 1 }">
													<li><a href="${before }">&lt;</a></li>
												</c:if>
												<!-- 페이지 -->
												<c:forEach var="p" begin="${piMusic.startPage }"
													end="${piMusic.endPage }">
													<c:url var="pagination" value="bukkeClassList.com">
														<c:param name="page" value="${p }"></c:param>
													</c:url>
													<c:if test="${p eq piMusic.currentPage }">
														<li class="active"><span>${p }</span></li>
													</c:if>
													<c:if test="${p ne piMusic.currentPage }">
														<li><a href="${pagination }">${p }</a></li>
													</c:if>
												</c:forEach>
												<!-- 다음 -->
												<c:url var="after" value="bukkeClassList.com">
													<c:param name="page" value="${piMusic.currentPage + 1 }"></c:param>
												</c:url>
												<c:if test="${piMusic.currentPage >= piMusic.maxPage }">
													<li><a href="#" onclick="lastPage()">&gt;</a></li>
												</c:if>
												<c:if test="${piMusic.currentPage < piMusic.maxPage }">
													<li><a href="${after }">&gt;</a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
							</c:if>
						</div>
						<!-- ================ 사진 모아보기 ================== -->
						<div role="tabpanel" class="tab-pane fade" id="Section6">
							<!-- <h3>부캐 클래스 사진</h3> -->
							<c:if test="${musicList.size() > 0 }">
							<div class="container">
								<div class="row">
									<c:forEach items="${photoList }" var="photoList">
										<div class="col-md-6 col-lg-3 ftco-animate">
											<div class="project">
												<img
													src="../resources/bClassFiles/${photoList.cRenameFilename }"
													id="class-img" class="img-fluid" alt="Colorlib Template">
												<div class="text">
													<span style="font-family: 'TmoneyRoundWindExtraBold';">[
														${photoList.classType} ]</span>
													<c:url var="cDetail" value="bukkeClassDetailView.com">
														<c:param name="classNo" value="${photoList.classNo }"></c:param>
													</c:url>
													<h3 style="font-family: 'TmoneyRoundWindExtraBold';">
														<a href="${cDetail }">${photoList.className }</a>
													</h3>
												</div>
												<a href="${cDetail }">
												</a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<br>

							<!-- 페이징 처리 -->
							<div class="container">
								<div class="row no-gutters mt-5">
									<div class="col text-center">
										<div class="block-27">
											<!-- 이전 -->
											<ul>
												<c:url var="before" value="bukkeClassList.com">
													<c:param name="page" value="${piPhoto.currentPage - 1 }"></c:param>
												</c:url>
												<c:if test="${piPhoto.currentPage <= 1 }">
													<li><a href="#" onclick="firstPage()">&lt;</a></li>
												</c:if>
												<c:if test="${piPhoto.currentPage > 1 }">
													<li><a href="${before }">&lt;</a></li>
												</c:if>
												<!-- 페이지 -->
												<c:forEach var="p" begin="${piPhoto.startPage }"
													end="${piPhoto.endPage }">
													<c:url var="pagination" value="bukkeClassList.com">
														<c:param name="page" value="${p }"></c:param>
													</c:url>
													<c:if test="${p eq piPhoto.currentPage }">
														<li class="active"><span>${p }</span></li>
													</c:if>
													<c:if test="${p ne piPhoto.currentPage }">
														<li><a href="${pagination }">${p }</a></li>
													</c:if>
												</c:forEach>
												<!-- 다음 -->
												<c:url var="after" value="bukkeClassList.com">
													<c:param name="page" value="${piPhoto.currentPage + 1 }"></c:param>
												</c:url>
												<c:if test="${piPhoto.currentPage >= piPhoto.maxPage }">
													<li><a href="#" onclick="lastPage()">&gt;</a></li>
												</c:if>
												<c:if test="${piPhoto.currentPage < piPhoto.maxPage }">
													<li><a href="${after }">&gt;</a></li>
												</c:if>
											</ul>
										</div>
									</div>
								</div>
							</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br><br>
	<!-- ========================= 클래스 탭 END =========================  -->
	<!-- 글쓰기 버튼 (사업자용) -->
	<c:if test="${ !empty sessionScope.loginShopper && empty sessionScope.loginMember }">
	<div style="float: right; padding-right: 350px;" class="ftco-animate">
		<a href="bukkeClassWriteForm.com">
		<button class="btn btn-lg btn-primary" type="submit">글쓰기</button></a>
	</div>
	</c:if>
	</section>
	<br><br>
</body>
</html>
<br><br>
<!-- 리스트탭 -->
<script src="https://pagead2.googlesyndication.com/pagead/js/r20210607/r20190131/show_ads_impl_fy2019.js" id="google_shimpl"></script><script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<jsp:include page="../common/footer.jsp"></jsp:include>