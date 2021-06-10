<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=bclass"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐, 새로운 나 ! - Class</title>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=juwreae5tk"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=juwreae5tk&submodules=geocoder"></script>
<link rel="stylesheet" href="resources/css/bClass-custom/bClassListView.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/bClass-custom/bClassDetailView.css">
<style>

 	 #top-icon {
 		color:grey;
 	} 
	 
 	#top-icon:hover {
 			cursor : pointer;
 			color : blue;
 		/* 	수정중 */
 	
 		}
 		
 	/* 리뷰 이미지 */	
 	.testimony-wrap .user-img {
 		width : 180px;
 		height:180px;
 	}
 

</style>
</head>

<body>
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">CLASS DETAILS</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home 
						<i class="ion-ios-arrow-forward"></i></a></span> 
						<span>Class Details <i class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->

	<!-- Class detail section-->

	<!-- ================ Class Detail ================ -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">CLASS DETAILS</h2>
				</div>
			</div>
			<div class="row">
				<!-- 클래스 분류 -->
				<div class="col-lg-12 ftco-animate">
					<ul id="type-ul">
						<li><h3 class="act-type">[&nbsp;</h3></li>
						<li><h3 id="act-type">${bukkeClass.classType}</h3></li>
						<li><h3 class="act-type">&nbsp;>&nbsp;</h3></li>
						<li><h3 id="act-type">${bukkeClass.classTypedetails}</h3></li>
						<li><h3 class="act-type">&nbsp;]</h3></li>
					</ul>
				</div>
				
				<!-- URL 링크 -->
				<!-- <div style="float:right" >
				<a href="#"><span id="top-icon"><i class="far fa-paper-plane fa-2x"></i></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div> -->
				
				<div class="col-lg-7 ftco-animate">
					<p>
						<img src="../resources/bClassFiles/${bukkeClass.cRenameFilename }"
							alt="class photo" class="img-fluid">
					</p>
					<h2 class="mb-3 mt-5" style="font-family: 'KOTRA_BOLD-Bold';">강좌명
						: ${bukkeClass.className }</h2>
					<hr>

					<div style="padding: 30px;">
						<h5>${bukkeClass.classInfo }</h5>
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

				<!-- ================  Detail END================ -->


				<!-- =============== side bar =============== -->

				<div class="col-lg-4 sidebar ftco-animate">
					<div
						class="media block-6 services services-2 d-block bg-light p-4 mb-4 ">
						<div class="sidebar-box ftco-animate">
							<h2 align="center">
								<i class="fas fa-list fa-lg"></i>&nbsp;Information
							</h2>
							<hr>
							<br>
							<div class="block-21 mb-4 d-flex">
								<ul id="type-ul">
									<li><h3 class="act-type">
											<b>시작일</b>&nbsp;&nbsp;<i class="far fa-calendar-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.classStartDate }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>종료일</b>&nbsp;&nbsp;<i class="fas fa-calendar-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.classEndDate }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>시간</b>&nbsp;&nbsp;<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.classStartTime } - ${bukkeClass.classEndTime }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>업체명</b>&nbsp;&nbsp;<i class="fas fa-id-card-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.shopId }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>가격</b>&nbsp;&nbsp;<i class="fas fa-won-sign"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.classPrice }</h3></li>
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
									<li><h3 id="act-type">찜 개수 들어오기</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b> 주소 </b>&nbsp;&nbsp;<i class="fas fa-map-marked-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.classAddr }</h3></li>
								</ul>
							</div>
							
						<!-- 사용자만 버튼 누를 시 기능 적용 -->	
						<!-- <div class="event-btns">
							
							<button id="keep-btn" class="buy-button button--big"><i class="far fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기</button>
							<button id="reservation-btn" class="buy-button button--big"><i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기</button>
							
							
						<br><br>
						</div>  -->
						
							<!-- 사업자에게만 버튼 보이게 하기 -->
							<div align="center">
								<c:url var="cModify" value="bukkeClassModify.com">
									<c:param name="classNo" value="${bukkeClass.classNo }"></c:param>
								</c:url>
								<!-- renameFilename 은 실제 저장된 파일 이름  -->
								<c:url var="cDelete" value="bukkeClassDelete.com">
									<c:param name="classNo" value="${bukkeClass.classNo }"></c:param>
									<c:param name="cRenameFilename"
										value="${bukkeClass.cRenameFilename }"></c:param>
								</c:url>
								<a href="${cModify }"><input class="btn btn-lg btn-warning"
									type="submit" value="수정"></a> <a href="${cDelete }"><input
									class="btn btn-lg btn-danger" type="submit" value="삭제"></a>
							</div>
						</div>
					</div>

					<div class="ftco-animate">
						<input type="submit" class="btn btn-lg btn-primary" value="예약하기">
						<button class="btn btn-lg btn-primary" type="submit">선물하기</button>
						<a href="#" onclick="window.open('chatRoom.com', '_blank', 'width=600 height=600')"><button class="btn btn-lg btn-primary" type="submit">채팅하기</button></a>
					</div>
					<br> <br>

					<!--=========== 클래스 상위 TOP 3 (수업 종강일 최신기준) =========== -->
					<div class="sidebar-box ftco-animate">

						<h4 style="font-family: 'KOTRA_BOLD-Bold';" align="center">
							<i class="fas fa-tasks fa-lg"></i>&nbsp;${bukkeClass.shopId }&nbsp;의
							또 다른 강좌
						</h4>
						<hr>

						<c:forEach items="${bList }" var="bukkeClass">
							<div class="block-21 mb-4 d-flex">
								<a class="blog-img mr-4"
									style="background-image: url(resources/bClassFiles/${bukkeClass.cRenameFilename});"></a>
								<div class="text">

									<h3 id="top-actname" class="heading">
										<c:url var="cDetail" value="bukkeClassDetailView.com">
											<c:param name="classNo" value="${bukkeClass.classNo }"></c:param>
										</c:url>
										<a href="${cDetail}">[${bukkeClass.classType}]&nbsp;${bukkeClass.className}</a>
									</h3>
									<div class="meta">
										<div>
											<i class="far fa-calendar-alt fa-lg"></i>&nbsp;${bukkeClass.classStartDate}
										</div>
										<div>
											<i class="fas fa-calendar-alt fa-lg"></i>&nbsp;${bukkeClass.classEndDate}
										</div>
										<div>
											<i class="fas fa-arrow-circle-right fa-lg"></i>&nbsp;${bukkeClass.classTypedetails}
										</div>
									</div>
								</div>
							</div>
							<hr>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!-- END COL -->

	</section>
	
	<!-- ========= 클래스 주소 지도로 표시 -->
	
	<section class="ftco-section bg-light">
		<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-white">BUKKE</small></span>
				<h2 class="mb-4">CLASS ADDRESS</h2>
			</div>
		</div>
			<div id="class-map" class="ftco-animate"
				style="width: 100%; height: 550px;"></div>

		<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ea547584290f909f07a0c6b761312f2d&libraries=services"></script>
			<script>
						var mapContainer = document.getElementById('class-map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701,
									126.570667), // 지도의 중심좌표
							level : 3
						// 지도의 확대 레벨
						};

						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer, mapOption);

						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();

						// 주소로 좌표를 검색합니다
						geocoder
								.addressSearch(
										'${ bukkeClass.classAddr }',
										function(result, status) {

											// 정상적으로 검색이 완료됐으면 
											if (status === kakao.maps.services.Status.OK) {

												var coords = new kakao.maps.LatLng(
														result[0].y,
														result[0].x);

												// 결과값으로 받은 위치를 마커로 표시합니다
												var marker = new kakao.maps.Marker(
														{
															map : map,
															position : coords
														});

												// 인포윈도우로 장소에 대한 설명을 표시합니다
												var infowindow = new kakao.maps.InfoWindow(
														{
															content : '<div style="width:250px;text-align:center;padding:6px 0;"><b>${ bukkeClass.className}</b></div>'
														});
												infowindow.open(map, marker);

												// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
												map.setCenter(coords);

											}
										});
			</script> 
		</div>
	</section>
	<!-- 클래스 주소 지도로 표시 END -->
	
	<!-- 후기 보기 -->
	<section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading subheading-with-line"><small class="pr-2 bg-light">CLASS REVIEW</small></span>
            <h2 class="mb-4">Class Review</h2>
            <p>후기들을 볼 수 있습니다.</p>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
            <c:forEach items="${rList }" var="review">
	              <div class="item">
	                <div class="testimony-wrap p-4 pb-5">
	                  <div class="user-img mb-5" style="background-image: url(../resources/reviewFiles/${review.rRenameFilename })"><!-- 리뷰 사진 넣을 예정 -->
	                    <span class="quote d-flex align-items-center justify-content-center">
	                      <i class="icon-quote-left"></i>
	                    </span>
	                  </div>
	                  <c:url var="rDetail" value="bukkeClassDetailView.com">
                     		<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
                  	  </c:url>
		              <div class="text">
		                    <p class="mb-5 pl-4 line">${review.reviewContents }</p>
			                  <div class="pl-5">
				                <p class="name">${review.memberId }</p>
				                <a href="${rDetail }"><span class="position">${review.reviewTitle }</span></a>
			                  </div>
		              </div>
	                </div>
	              </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 후기 끝 -->


	<!--  detail section END-->

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>