<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<jsp:include page="../common/header.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<script src="/js/summernote/lang/summernote-ko-KR.js"></script>
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
			<form action="noticeUpdate.com" method="post">
			<input type="hidden" name="noticeNo" value="${notice.noticeNo}">
				<div class="form-group">
					<input type="text" class="form-control" name="noticeTitle"
						value="${notice.noticeTitle }">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="memberId"
						value="${notice.noticeWriter }">
				</div>
				<textarea id="summernote" name="noticeContents" value="${notice.noticeContents }"></textarea>
				<div>
					<input type="submit" id="subBtn" value="수정하기" style="float: right;" />
				</div>
			</form>


			<!-- <div class="row">
					<h1> sample !! <- 여기는 row section</h1>
				</div> -->
		</div>
	</section>
	<script>
		$('#summernote').summernote(
				{
					placeholder : 'A.답변을 입력하세요',
					tabsize : 2,
					height : 100,
					lang : "ko-KR",
					height : 400
		});
		
		
	</script>

		</section>
	
	
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>