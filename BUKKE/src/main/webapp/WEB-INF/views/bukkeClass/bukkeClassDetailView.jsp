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
 	
 	/* 버튼 css */
 	* {
  box-sizing: border-box;
}
*::before, *::after {
  box-sizing: border-box;
}

/* body {
  font-family: 'Rubik', sans-serif;
  font-size: 1rem;
  line-height: 1.5;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0;
  min-height: 100vh;
  background: #fff;
} */

button {
  position: relative;
  display: inline-block;
  cursor: pointer;
  outline: none;
  border: 0;
  vertical-align: middle;
  text-decoration: none;
  font-size: inherit;
  font-family: inherit;
}
button.learn-more {
  font-weight: 600;
  color: #382b22;
  text-transform: uppercase;
  padding: 1.25em 2em;
  background: #bcd4e6;
  border: 2px solid #b18597;
  border-radius: 0.75em;
  -webkit-transform-style: preserve-3d;
          transform-style: preserve-3d;
  transition: background 150ms cubic-bezier(0, 0, 0.58, 1), -webkit-transform 150ms cubic-bezier(0, 0, 0.58, 1);
  transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), background 150ms cubic-bezier(0, 0, 0.58, 1);
  transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), background 150ms cubic-bezier(0, 0, 0.58, 1), -webkit-transform 150ms cubic-bezier(0, 0, 0.58, 1);
}
button.learn-more::before {
  position: absolute;
  content: '';
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: #c5dedd;
  border-radius: inherit;
  box-shadow: 0 0 0 2px #b18597, 0 0.625em 0 0 #cddafd;
  -webkit-transform: translate3d(0, 0.75em, -1em);
          transform: translate3d(0, 0.75em, -1em);
  transition: box-shadow 150ms cubic-bezier(0, 0, 0.58, 1), -webkit-transform 150ms cubic-bezier(0, 0, 0.58, 1);
  transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), box-shadow 150ms cubic-bezier(0, 0, 0.58, 1);
  transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), box-shadow 150ms cubic-bezier(0, 0, 0.58, 1), -webkit-transform 150ms cubic-bezier(0, 0, 0.58, 1);
}
button.learn-more:hover {
  background: #f0efeb;
  -webkit-transform: translate(0, 0.25em);
          transform: translate(0, 0.25em);
}
button.learn-more:hover::before {
  box-shadow: 0 0 0 2px #b18597, 0 0.5em 0 0 #a2d2ff;
  -webkit-transform: translate3d(0, 0.5em, -1em);
          transform: translate3d(0, 0.5em, -1em);
}
button.learn-more:active {
  background: #ffe9e9;
  -webkit-transform: translate(0em, 0.75em);
          transform: translate(0em, 0.75em);
}
button.learn-more:active::before {
  box-shadow: 0 0 0 2px #b18597, 0 0 #ffe3e2;
  -webkit-transform: translate3d(0, 0, -1em);
          transform: translate3d(0, 0, -1em);
}
 

</style>
<script>
$(document).ready(function() {
	
	// 찜 하기
	var classNo = $("#classNo").val();
	$('#keep-btn1').click(function(){
		location.href='bukkeClassKeep.com?classNo=' + classNo;
		alert('찜 목록에 추가되었습니다!');
		
	});
	
	// 찜 하기 취소
	var keepNo = $("#keepNo").val();
	console.log("keepNo1 : " + keepNo);
	$('#keep-btn2').click(function(){
		console.log("keepNo2 : " + keepNo);
		location.href='deleteBukkeClassKeep.com?classNo=' + classNo;
		alert('찜하기가 취소되었습니다!');
		
	});
	
	
	// 예약하기
	//$('#reservation-btn1').click(function(){
		//location.href='ActivityReservation.com?activityNo=' + activityNo;
		//alert('예약 신청이 완료되었습니다!');
		
	//});
	
	// 예약하기 취소
	//var reservationNo = $("#reservationNo").val();
	//console.log("reservationNo1 : " + reservationNo);
	//$('#reservation-btn2').click(function(){
		//console.log("reservationNo2 : " + reservationNo);
		//location.href='deleteActivityReservation.com?activityNo=' + activityNo;
		//alert('예약 신청이 취소되었습니다!');
	//});
	
	// 거절 당한 것 다시 예약하기
	//$('#reservation-btn4').click(function(){
		//location.href='reActivityReservation.com?activityNo=' + activityNo;
		//alert('예약 신청이 완료되었습니다!');
		
	//});
	
	
	 //$("#delete-btn").on("click",function(){
		 //consol.log("삭제완료");
		 //if (!confirm("삭제하시겠습니까?")) {
			 // 취소
					//return false;
		 		//} else {
		     // 확인
		 		//}
	 		//}); 


});
</script>
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
						
						<!-- 사용자 로그인 할 경우 찜하기, 예약하기 -->
						<c:choose>
							<c:when
									test="${empty loginShopper && !empty sessionScope.loginMember}">
									<!-- 사용자만 버튼 누를 시 기능 적용 -->
									
									<div class="row">
									
									<div class="col-md-6 event-btns">
									
										<input type="hidden" id="classNo" name="classNo" value="${bukkeClass.classNo }">
										<input type="hidden" id="keepNo" name="keepNo" value="${keep.keepNo }">
										<input type="hidden" id="reservationNo" name="reservationNo" value="${reservation.reservationNo }">
										
										<c:if test="${ keep.keepStatus == null || keep.keepStatus eq 'N'  }">
											<button id="keep-btn1" class="learn-more">
												<i class="far fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기
											</button>
										</c:if>
										<c:if test="${keep.keepStatus eq 'Y'}">
											<button id="keep-btn2" class="learn-more" onclick="keep()">
												<i class="fas fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기취소
											</button>
										</c:if>
									</div>
									
									<div class="col-md-6 event-btns">
										<c:if test="${reservation.reservationStatus == null }">
											<button id="reservation-btn1" class="learn-more">
												<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기
											</button>
										</c:if>
										<c:if test="${ reservation.reservationStatus eq '대기'  }">
											<button id="reservation-btn2" class="learn-more">
												<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약취소
											</button>
										</c:if>
										 <c:if test="${ reservation.reservationStatus eq '승인'  }">
											<button id="reservation-btn3" class="learn-more">
												<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약완료
											</button>
										</c:if> 
										 <c:if test="${ reservation.reservationStatus eq '거절'  }">
											<button id="reservation-btn4" class="learn-more">
												<i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기
											</button>
										</c:if>  
										
									</div>
									
									</div>									
								</c:when>
						</c:choose>
						
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
								<!-- 사업자만 보이는 수정, 삭제 버튼 -->
								<c:if test="${loginShopper.shopId eq bukkeClass.shopId }">
									<a href="${cModify }">
										<input class="btn btn-lg btn-warning" type="submit" value="수정"></a> 
									<a href="${cDelete }">
										<input class="btn btn-lg btn-danger" type="submit" value="삭제"></a>
								</c:if>
								<!-- 사업자, 멤버 둘 다 로그인 안 할 경우 -->
								<c:if test="${empty loginShopper && empty loginMember }">
									<button class="learn-more" onclick="alert('로그인 후 이용 가능합니다.')">찜 하기</button>
									<button class="learn-more" onclick="alert('로그인 후 이용 가능합니다.')">예약하기</button>
								</c:if>
							</div>
						</div>
					</div>

					<div class="ftco-animate">
						<!-- <input type="submit" class="btn btn-lg btn-primary" value="예약하기"> -->
						<!-- <button class="learn-more">예약하기</button> -->
						<!-- <button class="btn btn-lg btn-primary" type="submit">선물하기</button> -->
						<button class="learn-more" type="submit">선물하기</button>
						<c:url var="chatRoom1" value="chatRoom.com">
						<c:param name="classNo" value="${bukkeClass.classNo }"></c:param>
						</c:url>
						<a onclick="window.open('${chatRoom1}', '_blank', 'width=600 height=600')"><button class="learn-more" type="submit">채팅하기</button></a>
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
					center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
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
												result[0].y, result[0].x);

										// 결과값으로 받은 위치를 마커로 표시합니다
										var marker = new kakao.maps.Marker({
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

<!-- <script type="text/javascript" src="../resources/js/bclass/classDetailView.js"></script> -->
<jsp:include page="../common/footer.jsp"></jsp:include>