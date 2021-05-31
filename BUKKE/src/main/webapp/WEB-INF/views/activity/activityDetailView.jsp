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
				<div style="float:left">
					<ul id="type-ul">
						<li><h3 class="act-type">[&nbsp;</h3></li>
						<li><h3 id="act-type">${activity.activityType}</h3></li>
						<li><h3 class="act-type">&nbsp;>&nbsp;</h3></li>
						<li><h3 id="act-type">${activity.activityTypeDetails}</h3></li>
						<li><h3 class="act-type">&nbsp;]</h3></li>
					</ul>
				</div>
				<!-- URL 링크 -->
				<div style="float:right" >
				<a href="#"><span id="top-icon"><i class="far fa-paper-plane fa-2x"></i></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
				<!-- URL 링크 END -->
				</div>
				<div class="col-lg-7 ftco-animate">
					<p>
						<img src="resources/images/activityImageFiles/${activity.aRenameFilename}" alt="강좌이미지" class="img-fluid">
					</p>
					<h2 class="mb-3 mt-5" style="font-family: 'KOTRA_BOLD-Bold';">강좌명: ${activity.activityName }</h2>
					<hr>

					<div style="padding: 30px;">
						<h5>${activity.activityInfo }</h5>
					</div>
					<div id="act-map" style="width:400px; height:400px;"></div>
					<hr>

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
						<div class="event-btns">
							
							<button id="keep-btn" class="buy-button button--big"><i class="far fa-bookmark fa-lg"></i>&nbsp;&nbsp;찜하기</button>
							<button id="reservation-btn" class="buy-button button--big"><i class="far fa-clock fa-lg"></i>&nbsp;&nbsp;예약하기</button>
							
							
						<br><br>
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
								<c:if test="${loginMember.memberId eq null }">
								<a href="${aModify }"><input class="btn btn-lg btn-warning" type="button" value="수정"></a> 
								<a href="${aDelete }"><input class="btn btn-lg btn-danger" id="delete-btn" type="button" value="삭제"></a>
								</c:if>
							</div>
						</div>
					</div>
					
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

	
			/* var mapOptions = {
			    center: new naver.maps.LatLng(37.3595704, 127.105399),
			    zoom: 10
			};
			
			var map = new naver.maps.Map('act-map', {
			    center: new naver.maps.LatLng(37.3595704, 127.105399),
			    zoom: 15
			    mapTypeControl: true
			});
			
			var marker = new naver.maps.Marker({
			    position: new naver.maps.LatLng(37.3595704, 127.105399),
			    map: map
			});
			
			var infoWindow = new naver.maps.InfoWindow({
			    anchorSkew: true
			});
			map.setCursor('pointer');
			function searchCoordinateToAddress(latlng) {
			    infoWindow.close();
			    naver.maps.Service.reverseGeocode({
			        coords: latlng,
			        orders: [
			            naver.maps.Service.OrderType.ADDR,
			            naver.maps.Service.OrderType.ROAD_ADDR
			        ].join(',')
			    }, function(status, response) {
//	 		        if (status === naver.maps.Service.Status.ERROR) {
//	 		            return alert('Something Wrong!');
//	 		        }
			        var items = response.v2.results,
			            address = '',
			            htmlAddresses = [];
			        for (var i=0, ii=items.length, item, addrType; i<ii; i++) {
			            item = items[i];
			            address = makeAddress(item) || '';
			            addrType = item.name === 'roadaddr' ? '[도로명 주소]' : '[지번 주소]';
			            htmlAddresses.push((i+1) +'. '+ addrType +' '+ address);
			        }
			        infoWindow.setContent([
			            '<div style="padding:10px;min-width:200px;line-height:150%;">',
			            '<h4 style="margin-top:5px;">검색 좌표</h4><br />',
			            htmlAddresses.join('<br />'),
			            '</div>'
			        ].join('\n'));
			        infoWindow.open(map, latlng);
			    });
			}
			function searchAddressToCoordinate(address) {
			    naver.maps.Service.geocode({
			        query: address
			    }, function(status, response) {
			        if (status === naver.maps.Service.Status.ERROR) {
			            return alert('Something Wrong!');
			        }
			        if (response.v2.meta.totalCount === 0) {
			            return alert('totalCount' + response.v2.meta.totalCount);
			        }
			        var htmlAddresses = [],
			            item = response.v2.addresses[0],
			            point = new naver.maps.Point(item.x, item.y);
			        if (item.roadAddress) {
			            htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
			        }
			        if (item.jibunAddress) {
			            htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
			        }
			        if (item.englishAddress) {
			            htmlAddresses.push('[영문명 주소] ' + item.englishAddress);
			        }
			        infoWindow.setContent([
			            '<div style="padding:10px;min-width:200px;line-height:150%;">',
			            '<h4 style="margin-top:5px;">해당 장소 : '+ address +'</h4><br />',
			            htmlAddresses.join('<br />'),
			            '</div>'
			        ].join('\n'));
			        map.setCenter(point);
			        infoWindow.open(map, point);
			    });
			} 		 */
	 		
	 		
});
</script>

	
</body>

</html>

<jsp:include page="../common/footer.jsp"></jsp:include>
