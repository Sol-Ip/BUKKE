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
					<div style="float: right">
						<span id="top-icon"><i class="far fa-paper-plane fa-2x"></i></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>

					<script>
				//(크롬에서) url복사하기
				$(document).on("click", "#top-icon", function(e) { // 링크복사 시 화면 크기 고정 
					$('html').find('meta[name=viewport]').attr('content', 
									'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'); 
					var html = "<input id='act_target' type='text' value='' style='position:absolute;top:-9999em;'/>"; //style을 주어 보이지 않게 설정
																														
					$(this).append(html); //공유하기 버튼이 클릭될 때 화면에 보이게 함.
					
					var input_clip = document.getElementById("act_target"); 
						//현재 url 가져오기 
						var _url = $(location).attr('href'); 
					$("#act_target").val(_url); //input태그에 복사가 되어 질 url값을 넣는다.
						
					if (navigator.userAgent.match(/(iPod|iPhone|iPad)/)) { //해당 기기에서 열릴 때 설정
						var editable = input_clip.contentEditable; 
						var readOnly = input_clip.readOnly; 
						
						input_clip.contentEditable = true; 
						input_clip.readOnly = false; 
						
						var range = document.createRange(); 
						range.selectNodeContents(input_clip); 
						
						var selection = window.getSelection(); 
						selection.removeAllRanges(); 
						selection.addRange(range); 
						input_clip.setSelectionRange(0, 999999); 
						
						input_clip.contentEditable = editable; 
						input_clip.readOnly = readOnly; 
					} else { 									
						input_clip.select(); 	// 해당 태그의 text를 선택(select).
					} 
					
					try { 
						var successful = document.execCommand('copy'); //copy 라는 명령어로 선택되어진 택스트를 복사
						input_clip.blur(); // 다시 input 태그를 화면에 보이지 않게 처리.
						if (successful) { 				
							swal("URL이 복사 되었습니다. \n원하시는 곳에 붙여넣기 해 주세요!🌺");
							// 링크복사 시 화면 크기 고정 
							$('html').find('meta[name=viewport]').attr('content', 
										'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=yes'); 
						} else { 				
							swal("URL이 복사에 실패했습니다. \n이 브라우저는 지원하지 않습니다.💦");
							} 
						} catch (err) { 
							swal("URL이 복사에 실패했습니다. \n이 브라우저는 지원하지 않습니다.💦");
							} 
						}); // 클립보드 복사 기능 끝
				
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

					<div style="padding: 30px; height: 500px;">
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

							<!-- 사용자만 버튼 누를 시 기능 적용 -->
							<input type="hidden" id="activityNo" name="activityNo" value="${activity.activityNo }">
								<!-- 사용자 로그인 할 때 -->
							<c:if test="${empty loginShopper && !empty loginMember}">
								<%-- <c:if test="${keep.keepStatus == null }"> --%>
								<div class="event-btns">
									<button id="keep-btn1" class="buy-button button--big"
										onclick="keep()">
										<i class="far fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기
									</button>
									<button id="reservation-btn1" class="buy-button button--big">
										<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기
									</button>
									<br>
									<br>
								</div>
								<%-- </c:if> --%>
								<%-- <c:if test="${keep.keepStatus == '1' }"> 
								<div class="event-btns">
									<button id="keep-btn1" class="buy-button button--big"
										onclick="keep()">
										<i class="far fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기취소
									</button>
									<button id="reservation-btn1" class="buy-button button--big">
										<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기
									</button>
									<br>
									<br>
								</div>
							 </c:if> --%>
							</c:if>

							<c:if test="${empty loginShopper && empty loginMember}">
								<!-- 사용자 로그인 안 할 때 -->
								<div class="event-btns">
									<button id="keep-btn2" class="buy-button button--big"
										onclick="alert('로그인 후 이용 가능합니다.')">
										<i class="far fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기
									</button>
									<button id="reservation-btn2" class="buy-button button--big"
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
								<c:if test="${!empty loginShopper}">
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

	<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-white">BUKKE</small></span>
				<h2 class="mb-4">ACTIVITY ADDRESS</h2>
			</div>
		</div>
	</div>

	<section class="ftco-section bg-light">
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

	<section class="ftco-section">
		<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
			<div class="col-md-7 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-white">BUKKE</small></span>
				<h2 class="mb-4">ACTIVITY REVIEW</h2>
			</div>
		</div>
		
		</div>
	</section>



</body>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> -->
<script type="text/javascript" src="../resources/js/activity/activityDetailView.js"></script>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>
