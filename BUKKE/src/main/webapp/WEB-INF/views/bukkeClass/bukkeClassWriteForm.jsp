<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐 클래스 등록 폼</title>
<jsp:include page="../common/header.jsp"></jsp:include>

<!-- 시작일, 종료일 체크 캘린더 시 필요 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="../resources/css/bClass-custom/calendar.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="../resources/js/bclass/calendar.js"></script>

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
					<h1 class="mb-2 bread">About Us</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>About us <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	
			<section class="ftco-section">
			
			<!-- <div class="col-md-6 p-5 order-md-last" align="center"> -->
			<div class="container">
				<div class="p-5 order-md-last">
					 <form action="bukkeClassRegister.com" method="post" enctype="multipart/form-data">
			              <div class="form-group">
			                <input type="text" class="form-control" name="className" placeholder="클래스 명">
			              </div>
			              <div class="form-group">
			                <input type="text" class="form-control" name="classAddr" placeholder="클래스 주소">
			              </div>
						  <select class="form-control" name="classType">
							  <option>공예</option>
							  <option>플라워</option>
							  <option>음악</option>
							  <option>그림</option>
						  </select>
						  <br>
			              <div class="form-group">
			                <textarea name="" id="" cols="30" rows="7" class="form-control" name="classInfo" placeholder="상세설명"></textarea>
			              </div>
			              <div>
			              	<input type="file" class="form-control" name="uploadFile">
			              </div>
			              <br>
			              <div class="calendar">
						    <input type="date" name="classStartDate" placeholder="시작일">&nbsp;&nbsp;
  							<input type="date" name="classEndDate" placeholder="종료일">
			              </div>
			              <br>
			              <div class="form-group">
			                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
			              </div>
		            </form>
				</div>
			</div>
		</section>
   </body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>