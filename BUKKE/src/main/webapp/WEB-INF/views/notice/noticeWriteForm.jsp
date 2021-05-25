<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문 작성</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 썸머노트를 위해 작성할 코드 -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script></head>
  
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
					<h1 class="mb-2 bread">Notice</h1>
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

		<div class="container">
			<br> <br>
			<form action="noticeInsert.com" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<input type="text" class="form-control" name="noticeTitle"
						placeholder="Q. 질문을 입력하세요">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="memberId"
						placeholder="작성자">
				</div>
				<textarea id="summernote" name="noticeContents" class="summernote"></textarea>
				<div class="form-group">
					<input type="file" class="form-control" name="uploadFile"
						>
				</div>
				<div>
					<input type="submit" id="subBtn" value="글 작성" style="float: right;" />&nbsp;
					<input type="reset" id="subBtn" value="취소" style="float: right;" />
				</div>
			</form>


			<!-- <div class="row">
					<h1> sample !! <- 여기는 row section</h1>
				</div> -->
		</div>
	</section>
	<script>
	var $j= jQuery.noConflict();
	$j(document).ready(function() {
		  $j('#summernote').summernote({
			  height: 500,                 // 에디터 높이
				focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
				lang: "ko-KR",					// 한글 설정
				placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정
			});
			})
	
	</script>



</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>