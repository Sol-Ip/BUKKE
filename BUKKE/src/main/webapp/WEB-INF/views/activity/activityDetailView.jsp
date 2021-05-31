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
<link rel="stylesheet" href="resources/css/activity-custom/activityDetailView.css">
</head>
<style>

 	 #bookmark {
 		color:green;
 	} 
	
 	#bookmark:hover {
 			cursor : pointer;
 			color : red;
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
					<h1 class="mb-2 bread">ACTIVITY DETAILS</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="activityList.com">ACTIVITY <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Activity Details <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->

	<!-- Activity detail section-->

	<!-- ================ Activity Detail ================ -->
	<section class="ftco-section">
		<div class="container">

			<!-- <div class="container"> -->
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">ACTIVITY DETAILS</h2>
				</div>
			</div>
			
			<div class="row">
				<!-- 클래스 분류 -->
				<div class="col-lg-12 ftco-animate">
					<ul id="type-ul">
						<li><h3 class="act-type">[&nbsp;</h3></li>
						<li><h3 id="act-type">${activity.activityType}</h3></li>
						<li><h3 class="act-type">&nbsp;>&nbsp;</h3></li>
						<li><h3 id="act-type">${activity.activityTypeDetails}</h3></li>
						<li><h3 class="act-type">&nbsp;]</h3></li>
					</ul>
				</div>
				<div class="col-lg-8 ftco-animate">
					<p>
						<img src="resources/images/activityImageFiles/${activity.aRenameFilename}" alt="강좌이미지" class="img-fluid">
					</p>
					<h2 class="mb-3 mt-5" style="font-family: 'KOTRA_BOLD-Bold';">강좌명: ${activity.activityName }</h2>
					<hr>

					<!-- <H6>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio
						perferendis et doloribus unde architecto optio laboriosam porro
						adipisci sapiente officiis nemo accusamus ad praesentium? Esse
						minima nisi et. Dolore perferendis, enim praesentium omnis, iste
						doloremque quia officia optio deserunt molestiae voluptates soluta
						architecto tempora.</H6> -->

					<div style="padding: 30px;">
						<h5>${activity.activityInfo }</h5>
					</div>
					<hr>

					<div class="tag-widget post-tag-container mb-5 mt-5">
						<div class="meta">
							<div>
								<button class="btn btn-outline-danger">
									<span class="icon-heart icon-large"></span> 찜하기
								</button>
								<button class="btn btn-outline-warning">
									<span class="icon-smile icon-large"></span> 찜하기
								</button>
								<button class="btn btn-outline-danger">❤</button>
								<button class="btn btn-outline-danger">
									<i class="fas fa-bookmark fa-2x"></i>
								</button>

								<span class="icon-eye-open"></span>
							</div>

						</div>
					</div>


				</div>

				<!-- ================ Activity Detail END================ -->


				<!-- =============== SIDE bar =============== -->

				<!-- 액티비티 정보 -->
				<div class="col-lg-4 sidebar ftco-animate">
					<div
						class="media block-6 services services-2 d-block bg-light p-4 mb-4 ">
						<div class="sidebar-box ftco-animate">
							<h2 align="center">
								<i class="fas fa-list fa-lg"></i>&nbsp;Information&nbsp;
								<span id="bookmark"><i class="fas fa-bookmark fa-md bookmark"></i></span>
							</h2>
							<hr>
							<br>
							<div class="block-21 mb-4 d-flex">
								<ul id="type-ul">
									<li><h3 class="act-type">
											<b>시작일</b>&nbsp;&nbsp;<i class="far fa-calendar-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${activity.activityStartdate }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>종료일</b>&nbsp;&nbsp;<i class="fas fa-calendar-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${activity.activityEnddate }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>업체명</b>&nbsp;&nbsp;<i class="fas fa-id-card-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${activity.shopId }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>조회 수</b>&nbsp;&nbsp;<i class="far fa-eye"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">조회수 들어오기</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>찜 갯수</b>&nbsp;&nbsp;<i class="fas fa-heartbeat"></i></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">찜 갯수 들어오기</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b> 주소 </b>&nbsp;&nbsp;<i class="fas fa-map-marked-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${activity.activityAddr }</h3></li>
								</ul>

							</div>

							<!-- 사업자에게만 버튼 보이게 하기 -->
							<div align="center">
								<c:url var="aModify" value="activityUpdateForm.com">
									<c:param name="activityNo" value="${activity.activityNo }"></c:param>
								</c:url>
								<!-- renameFilename 은 실제 저장된 파일 이름  -->
								<c:url var="aDelete" value="activityDelete.com">
									<c:param name="activityNo" value="${activity.activityNo }"></c:param>
									<c:param name="aRenameFilename" value="${activity.aRenameFilename }"></c:param>
								</c:url>
								<a href="${aModify }"><input class="btn btn-lg btn-warning" type="button" value="수정"></a> 
									<a href="${aDelete }"><input class="btn btn-lg btn-danger" id="delete-btn" type="button" value="삭제"></a>
							</div>
						</div>
					</div>
					<div class=ftco-animate>
	
					</div>
					
					<div class="ftco-animate">
						<input type="submit" class="btn btn-lg btn-primary" value="버튼 1">
						<button class="btn btn-lg btn-primary" type="submit">버튼 1</button>
						<button class="btn btn-lg btn-primary" type="submit">버튼 1</button>
					</div>
					<br>
					<br>
					
					<!-- ========== 액티비티 상위TOP(수업 종강일 최신기준=늦게끝나는 것) ========== -->
					<div class="sidebar-box ftco-animate">
						<h4 style="font-family: 'KOTRA_BOLD-Bold';" align="center">
							<i class="fas fa-tasks fa-lg"></i>&nbsp;${activity.shopId }&nbsp;의
							또 다른 강좌
						</h4>
						<hr>
						<c:forEach items="${aList }" var="activity">
							<div class="block-21 mb-4 d-flex">
								<a class="blog-img mr-4"
									style="background-image: url(resources/images/activityImageFiles/${activity.aRenameFilename});"></a>
								<div class="text">

									<h3 id="top-actname" class="heading">
										<c:url var="aDetail" value="activityDetail.com">
											<c:param name="activityNo" value="${activity.activityNo }"></c:param>
										</c:url>
										<a href="${aDetail}">[${activity.activityType}]&nbsp;${activity.activityName}</a>
									</h3>
									<div class="meta">
										<div>
											<i class="far fa-calendar-alt fa-lg"></i>&nbsp;${activity.activityStartdate}
										</div>
										<div>
											<i class="fas fa-calendar-alt fa-lg"></i>&nbsp;${activity.activityEnddate}
										</div>
										<div>
											<i class="fas fa-arrow-circle-right fa-lg"></i>&nbsp;${activity.activityTypeDetails}
										</div>
									</div>
								</div>
							</div>
							<hr>
						</c:forEach>
					</div>
					<!-- ========== 액티비티 상위TOP(수업 종강일 최신기준=늦게끝나는 것) END ========== -->
				</div>
			</div>
		</div>
		<!-- END COL -->

				<!-- =============== SIDE bar END =============== -->

			
		
	</section>


	<!-- Activity detail section END-->

<script>
$(document).ready(function() {

	 $("#delete-btn").on("click",function(){
		 consol.log("삭제완료");
		/*  if (!confirm("삭제하시겠습니까?")) {
			 // 취소
					return false;
		 		} else {
		     // 확인
		 		}
	 		}); */

});
</script>
</body>
</html>

<jsp:include page="../common/footer.jsp"></jsp:include>
