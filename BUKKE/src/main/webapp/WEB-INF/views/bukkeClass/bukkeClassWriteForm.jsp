<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐 클래스 등록 폼</title>
<jsp:include page="../common/header.jsp"></jsp:include>

<link rel="stylesheet" href="./resources/css/bClass-custom/datepicker.min.css">
<!-- 값 제어를 위한 jquery -->
<script src="./resources/js/bclass/jquery-3.1.1.min.js"></script>
<!-- Air calendar js -->
<script src="./resources/js/bclass/datepicker.min.js"></script>
<!-- 달력에 한글 추가하기 위한 js -->
<script src="./resources/js/bclass/datepicker.ko.js"></script>
<script>
	$("#bclassCalendar").datepicker({
		languge:'ko'
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
					 <form action="#">
			              <div class="form-group">
			                <input type="text" class="form-control" placeholder="클래스 명">
			              </div>
			              <div class="form-group">
			                <input type="text" class="form-control" placeholder="클래스 주소">
			              </div>
			              <div class="form-group">
			                <input type="text" class="form-control" placeholder="Subject">
			              </div>
			              <!-- 단일 Air Calendar -->
			              <div>
			              	<input type="text" id="bclassCalendar">
			              </div>
			              <div class="form-group">
			                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="상세설명"></textarea>
			              </div>
			              <div>
			              	<input type="file" class="form-control">
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