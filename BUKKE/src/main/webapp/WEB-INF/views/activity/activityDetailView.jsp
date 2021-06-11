<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=activity"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐, 새로운 나 ! - Activity</title>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=juwreae5tk"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=juwreae5tk&submodules=geocoder"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="resources/css/activity-custom/activityDetailView.css">

</head>

<style>

 	 #top-icon {
 		color:grey;
 	} 
	 
 	#top-icon:hover {
 			cursor : pointer;
 			color : blue;
 		
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
					<div style="float: left">
						<ul id="type-ul">
							<li><h3 class="act-type">[&nbsp;</h3></li>
							<li><h3 id="act-type">${activity.activityType}</h3></li>
							<li><h3 class="act-type">&nbsp;>&nbsp;</h3></li>
							<li><h3 id="act-type">${activity.activityTypeDetails}</h3></li>
							<li><h3 class="act-type">&nbsp;]</h3></li>
						</ul>
					</div>
					<!-- URL 링크 -->
					<div id = "ShareUrl" style="float: right">
						<span id="top-icon"  class="btn-type1" OnClick="javascript:CopyUrlToClipboard()"><i class="fas fa-info-circle fa-2x"></i></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>

					<script>
					function CopyUrlToClipboard(){
				        var dummy   = document.createElement("input");
				        var text    = location.href;
				        
				        document.body.appendChild(dummy);
				        dummy.value = text;
				        dummy.select();
				        document.execCommand("copy");
				        document.body.removeChild(dummy);
						alert("URL이 클립보드에 복사되었습니다"); 
					}
				</script>
				</div>
				<!-- URL 링크 END -->



				<div class="col-lg-7 ftco-animate">
					<p>
						<img
							src="resources/images/activityImageFiles/${activity.aRenameFilename}"
							alt="강좌이미지" class="img-fluid">
					</p>
					<h2 class="mb-3 mt-5" style="font-family: 'KOTRA_BOLD-Bold';">강좌명:
						${activity.activityName }</h2>
					<hr>

					<div style="padding: 30px; height: 100%;">
						<h5>${activity.activityInfo }</h5>
					</div>


					<!-- <div class="tag-widget post-tag-container mb-5 mt-5">
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
					</div> -->


				</div>

				<!-- ================ Activity Detail END================ -->


				<!-- =============== SIDE bar =============== -->

				<!-- 액티비티 정보 -->
				<div class="col-lg-5 sidebar ftco-animate">
					<div
						class="media block-6 services services-2 d-block bg-light p-4 mb-4 ">
						<div class="sidebar-box ftco-animate">
							<h2 align="center">
								<i class="fas fa-list fa-lg"></i>&nbsp;Information&nbsp;

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
											<b>시작시간</b>&nbsp;&nbsp;<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${activity.activityStartTime }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>종료시간</b>&nbsp;&nbsp;<i class="fas fa-clock fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${activity.activityEndTime }</h3></li>
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
										<c:if test="${keep.getActKeeps == 0 }">
									<li><h3 id="act-type">0</h3></li>
									</c:if>
									<c:if test="${ keep.getActKeeps != 0}">
									<li><h3 id="act-type">${keep.getActKeeps}</h3></li>
									</c:if>
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

										<!-- 사용자 로그인 할 때 -->
							<c:choose>
								<c:when
									test="${empty loginShopper && !empty sessionScope.loginMember}">
									<!-- 사용자만 버튼 누를 시 기능 적용 -->
									
									<div class="row">
									
									<div class="col-md-6 event-btns">
									
										<input type="hidden" id="activityNo" name="activityNo" value="${activity.activityNo }">
										<input type="hidden" id="keepNo" name="keepNo" value="${keep.keepNo }">
										<input type="hidden" id="reservationNo" name="reservationNo" value="${reservation.reservationNo }">
										
										<c:if test="${ keep.keepStatus == null || keep.keepStatus eq 'N'  }">
											<button id="keep-btn1" class="buy-button button--big">
												<i class="far fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기
											</button>
										</c:if>
										<c:if test="${keep.keepStatus eq 'Y'}">
											<button id="keep-btn2" class="buy-button button--big"
												onclick="keep()">
												<i class="fas fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기취소
											</button>
										</c:if>
									</div>
									
									<div class="col-md-6 event-btns">
										<c:if test="${reservation.reservationStatus == null }">
											<button id="reservation-btn1" class="buy-button button--big">
												<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기
											</button>
										</c:if>
										<c:if test="${ reservation.reservationStatus eq '대기'  }">
											<button id="reservation-btn2" class="buy-button button--big">
												<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약취소
											</button>
										</c:if>
										 <c:if test="${ reservation.reservationStatus eq '승인'  }">
											<button id="reservation-btn3" class="buy-button disabled button--big">
												<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약완료
											</button>
										</c:if> 
										 <c:if test="${ reservation.reservationStatus eq '거절'  }">
											<button id="reservation-btn4" class="buy-button button--big">
												<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기
											</button>
										</c:if>  
										
									</div>
									
									</div>									
								</c:when>
							</c:choose>

							<c:if test="${empty loginShopper && empty loginMember}">
								<!-- 사용자 로그인 안 할 때 -->
								<div class="event-btns">
									<button id="keep-btn3" class="buy-button button--big"
										onclick="alert('로그인 후 이용 가능합니다.')">
										<i class="far fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기
									</button>
									<button id="reservation-btn3" class="buy-button button--big"
										onclick="alert('로그인 후 이용 가능합니다.')">
										<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기
									</button>
									<br>
									<br>
								</div>
							</c:if>


							<!-- 사업자에게만 버튼 보이게 하기 -->
							<div align="center">
								<c:url var="aModify" value="activityUpdateForm.com">
									<c:param name="activityNo" value="${activity.activityNo }"></c:param>
								</c:url>
								<!-- renameFilename 은 실제 저장된 파일 이름  -->
								<c:url var="aDelete" value="activityDelete.com">
									<c:param name="activityNo" value="${activity.activityNo }"></c:param>
									<c:param name="aRenameFilename"
										value="${activity.aRenameFilename }"></c:param>
								</c:url>
								<%-- <c:if test="${sessionScope.loginShopper eq activity.shopId }"> --%>
								<c:if test="${loginShopper.shopId eq activity.shopId }">
									<!-- 사용자 아이디 x -->
									<a href="${aModify }"><input class="btn btn-lg btn-warning"
										type="button" value="수정"></a>
									<a href="${aDelete }"><input class="btn btn-lg btn-danger"
										id="delete-btn" type="button" value="삭제"></a>
								</c:if>
							</div>
						</div>
					</div>

					<br>

					<!-- ========== 액티비티 상위TOP(수업 종강일 최신기준=늦게끝나는 것) ========== -->
					<div class="sidebar-box ftco-animate">
						<h4 style="font-family: 'KOTRA_BOLD-Bold';" align="center">
							<i class="fas fa-tasks fa-lg"></i>&nbsp;${activity.shopId }&nbsp;의 또 다른 강좌</h4>
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
		<!-- =============== SIDE bar END =============== -->
				
	</section>
	<!-- Activity detail section END-->
	<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-white">BUKKE</small></span>
				<h2 class="mb-4">ACTIVITY ADDRESS</h2>
			</div>
		</div>
	</div>


		<div class="container">
			<!-- ========== 액티비티 주소 지도로 표시 ========== -->
			<div id="act-map" class="ftco-animate"
				style="width: 100%; height: 550px;"></div>

		<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ea547584290f909f07a0c6b761312f2d&libraries=services"></script>
			<script>
						var mapContainer = document.getElementById('act-map'), // 지도를 표시할 div 
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
										'${ activity.activityAddr }',
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
															content : '<div style="width:250px;text-align:center;padding:6px 0;"><b>${ activity.activityName}</b></div>'
														});
												infowindow.open(map, marker);

												// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
												map.setCenter(coords);

											}
										});
			</script> 
		</div>
	</section>
	<!-- 액티비티 주소 지도로 표시 END -->

	<!-- <section class="ftco-section">
		<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-white">BUKKE</small></span>
				<h2 class="mb-4">ACTIVITY REVIEW</h2>
			</div>
		</div>
		
		</div>
	</section> -->

<!-- 후기 보기 -->
	<section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading subheading-with-line"><small class="pr-2 bg-light">Activity REVIEW</small></span>
            <h2 class="mb-4">Activity Review</h2>
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
	                  <c:url var="rDetail" value="activityDetail.com">
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
<!-- 후기보기 END -->	


</body>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> -->
<script type="text/javascript" src="../resources/js/activity/activityDetailView.js"></script>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>
