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
		<div class="container" style="text-align:center;">
		<h1>sample !! <- 여기는 width 꽉 채워지는 full - section</h1>
		<br> <br>
		<hr>
		</div>
		
		<div class="container">
			<br> <br>
			<h1>sample !! <- 여기는 반응형 section</h1>
			
			<div class="row">
				<h1>sample !! <- 여기는 row section</h1>
			
			</div>
		</div>
		<hr>
<!-- 	</section>

	<section class="ftco-section bg-light"> -->
		
		<!-- ========================= 리스트 시작 =========================  -->
		
		<!-- ========================= 검색란 =========================  -->

		<div class="container ftco-animate">
			<br />
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
		
		
		
		<!-- ========================= 액티비티 정보란 =========================  -->
		<div class="container">

			<div class="row justify-content-start mb-5 pb-2">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">ACTIVITY</h2>
				</div>
				<div class="col-md-8 pl-md-5 heading-section ftco-animate">
					<div class="pl-md-4 border-line">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in. A small river named Duden flows by their
							place and supplies it with the necessary regelialia. It is a
							paradisematic country, in which roasted parts of sentences fly
							into your mouth.</p>
					</div>
				</div>
			</div>
		</div>
		<!-- ========================= 액티비티 정보란 END =========================  -->
		
		<!-- ========================= 액티비티 탭  =========================  -->
		<div class="container">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					data-bs-toggle="tab" href="#home">Home</a></li>
				<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
					href="#profile">Profile</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
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


<section class="ftco-section">
			<div class="container">
				<div class="row">
          <div class="col-lg-12">
          	<div class="row">
          		<div class="col-md-3 ftco-animate">
		            <div class="blog-entry">
		              <a href="#" class="block-20" style="background-image: url('resources/images/image_1.jpg');">
		              </a>
		              <div class="text d-flex py-4">
		               		<div>
			                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
			              	</div>
			              	<br>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 ftco-animate">
		            <div class="blog-entry" data-aos-delay="100">
		              <a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_2.jpg');">
		              </a>
		              <div class="text d-flex py-4">
		                <div class="meta mb-3">
		                  <div><a href="#">Jan. 20, 2019</a></div>
		                  <div><a href="#">Admin</a></div>
		                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <div class="desc pl-3">
			                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
			              </div>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 ftco-animate">
		            <div class="blog-entry" data-aos-delay="200">
		              <a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_3.jpg');">
		              </a>
		              <div class="text d-flex py-4">
		                <div class="meta mb-3">
		                  <div><a href="#">Jan. 20, 2019</a></div>
		                  <div><a href="#">Admin</a></div>
		                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <div class="desc pl-3">
			                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
			              </div>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 ftco-animate">
		            <div class="blog-entry">
		              <a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_4.jpg');">
		              </a>
		              <div class="text d-flex py-4">
		                <div class="meta mb-3">
		                  <div><a href="#">Jan. 20, 2019</a></div>
		                  <div><a href="#">Admin</a></div>
		                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <div class="desc pl-3">
			                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
			              </div>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 ftco-animate">
		            <div class="blog-entry" data-aos-delay="100">
		              <a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_5.jpg');">
		              </a>
		              <div class="text d-flex py-4">
		                <div class="meta mb-3">
		                  <div><a href="#">Jan. 20, 2019</a></div>
		                  <div><a href="#">Admin</a></div>
		                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <div class="desc pl-3">
			                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
			              </div>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 ftco-animate">
		            <div class="blog-entry" data-aos-delay="200">
		              <a href="blog-single.html" class="block-20" style="background-image: url('resources/images/image_6.jpg');">
		              </a>
		              <div class="text d-flex py-4">
		                <div class="meta mb-3">
		                  <div><a href="#">Jan. 20, 2019</a></div>
		                  <div><a href="#">Admin</a></div>
		                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
		                </div>
		                <div class="desc pl-3">
			                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
			              </div>
		              </div>
		            </div>
		          </div>
          	</div>
          
          </div>

        </div>
			</div>
		</section>

	</section>



</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script type="text/javascript" src="../resources/js/activity/activityListView.js"></script>