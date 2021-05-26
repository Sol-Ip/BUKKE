<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAMPLE</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<style>
	.service-heading-block{
	display:block;
	margin-bottom:30px;
	}
.title {
  display: block;
  font-size: 30px;
  font-weight: 200;
  margin-bottom: 10px;
}
.sub-title {
  font-size: 18px;
  font-weight: 100;
  line-height: 24px;
}
.feature-block {
  background-color: #fff;
  border-radius: 2px;
  padding: 15px;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
  margin-bottom: 15px;
  transition:all ease .5s
}
.ms-feature:hover, 
.ms-feature:focus {
  background-color: #fafafa;
  box-shadow: 0 3px 4px 3px rgba(0, 0, 0, 0.14), 0 3px 3px -2px rgba(0, 0, 0, 0.2), 0 1px 8px 3px rgba(0, 0, 0, 0.12);
}
.fb-icon {
  border-radius: 50%;
  display: block;
  font-size: 36px;
  height: 80px;
  line-height: 80px;
  text-align:center;
  margin:1rem auto;
  width: 80px;
  transition: all 0.5s ease 0s;
}
.feature-block:hover .fb-icon,
.feature-block:focus .fb-icon {
  box-shadow: 0 4px 5px 0 rgba(0, 0, 0, 0.14), 0 1px 10px 0 rgba(0, 0, 0, 0.12), 0 2px 4px -1px rgba(0, 0, 0, 0.2);
  transform: rotate(360deg);
}
.fb-icon.color-info {
  background-color: #5bc0de;
  color: #fff;
}
.fb-icon.color-warning {
  background-color: #eea236;
  color: #fff;
}
.fb-icon.color-success {
  background-color: #5cb85c;
  color: #fff;
}
.fb-icon.color-danger {
  background-color: #d9534f;
  color: #fff;
}
.feature-block h4 {
  font-size: 16px;
  font-weight: 500;
  margin: 3rem 0 1rem;
}
.color-info {
  color: #46b8da;
}
.color-warning {
  color: #f0ad4e;
}
.color-success {
  color: #4cae4c;
}
.color-danger {
  color: #d43f3a;
}
.btn-custom{
  border: medium none;
  border-radius: 2px;
  cursor: pointer;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0;
  margin: 10px 1px;
  outline: 0 none;
  padding: 8px 30px;
  position: relative;
  text-decoration: none;
  text-transform: uppercase;
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
					<h1 class="mb-2 bread">OPEN MYPAGE</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i class="ion-ios-arrow-forward"></i></a></span> 
						<span>MyPage <i class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
		<!-- ==============================마이페이지 시작====================================== -->
		<h3>왼쪽 사이드 바 임의로 넣은거에요 !! 다시 바꿀 예정 놀라지마십쇼 !!</h3>
	<div class="container text-center">
	<div class="row">
		<div class="col-sm-3">
			<!--left col-->
			<div class="text-center">
				<img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
					class="avatar img-circle img-thumbnail" alt="avatar"
					style="width: 100%; height: 230px;"> <br> 
					<input type="file" class="text-center center-block file-upload">
			</div>
			<br>
			<div class="card" style="width: 16rem;">
				<div class="card-header">소개글</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">안녕하세요~! 저는 식물을 사랑하는 사람입니다.</li>
				</ul>

			</div>
			<br>
			<div class="card" style="width: 16rem;">
				<div class="card-header">반려식물</div>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb"
						style="margin-bottom: -; margin-bottom: 0px; background-color: white;">
						<li class="breadcrumb-item"><a href="#">#Home</a></li>
						<li class="breadcrumb-item"><a href="#">#Library</a></li>
						<li class="breadcrumb-item"><a href="#">#Data</a></li>
					</ol>
				</nav>
			</div>
			<br>
		</div>
		<div class="col-sm-9">
			<div class="row">
				<!-- <div class="col-lg-12 col-md-12 col-sm-12"> 
            <div class="service-heading-block">
                <h2 class="text-center text-primary title">Our amazing Service features</h2>
                <p class="text-center sub-title">Lorem ipsum dolor sit amet,<span class="text-primary">consectetur adipisicing</span> elit.<br/> Dolor alias provident excepturi eligendi, nam numquam iusto eum illum, ea quisquam.</p>
            </div>             
             </div>  -->
				<div class="col-lg-3 col-md-6 col-sm-6" style="margin-left: 150px;">
					<div class="text-center feature-block" style="width: 330px;">
						<span class="fb-icon color-info"> 
							<i class="far fa-user" aria-hidden="true"></i>
						</span>
						<h4 class="color-info">Cloud Upload</h4>
						<p class="">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Delectus dicta error.</p>
						<a href="javascript:void(0)" class="btn btn-info btn-custom">Click here</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="text-center feature-block" style="width: 330px; margin-left: 130px"">
						<span class="fb-icon color-warning"> 
							<i class="fa fa-desktop" aria-hidden="true"></i>
						</span>
						<h4 class="color-warning">Computer Service</h4>
						<p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus dicta error.</p>
						<a href="javascript:void(0)" class="btn btn-warning btn-custom">Click here</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6" style="margin-left: 150px;">
					<div class="text-center feature-block" style="width: 330px;">
						<span class="fb-icon color-success"> 
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
						<h4 class="color-success">Email Service</h4>
						<p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus dicta error.</p>
						<a href="javascript:void(0)" class="btn btn-success btn-custom">Click here</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="text-center feature-block" style="width: 330px; margin-left: 130px">
						<span class="fb-icon color-danger"> 
							<i class="fa fa-fire" aria-hidden="true"></i>
						</span>
						<h4 class="color-danger">Quality Service</h4>
						<p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus dicta error.</p>
						<a href="javascript:void(0)" class="btn btn-danger btn-custom">Click here</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
<br>

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>