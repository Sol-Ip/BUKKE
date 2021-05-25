<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAMPLE</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 썸머노트 -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script></head>
  
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
					<h1 class="mb-2 bread">OPEN ACTIVITY</h1>
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
			<form action="noticeUpdate.com" method="post" enctype="multipart/form-data">
				
				<div class="form-group">
				 <input type="hidden" name="noticeNo" value="${notice.noticeNo}">
				 <input type="hidden" name="nOriginalFilename" value="${notice.nOriginalFilename}">
				 <input type="hidden" name="nRenameFilename" value="${notice.nRenameFilename}">
					<input type="text" class="form-control" name="noticeTitle"
						value="${notice.noticeTitle }">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="memberId" readonly
						value="${notice.memberId }">
				</div>
				<textarea id="summernote" name="noticeContents" >${notice.noticeContents }</textarea>
				<div class="form-group">
					<input type="file" class="form-control" name="reloadFile">
					<c:if test="${ !empty notice.nOriginalFilename  }">
					</c:if>
				</div>
				<div>
					<input type="submit" id="subBtn" value="수정하기" style="float: right;" />
				</div>
			</form>
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