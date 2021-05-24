<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLASS ENROLL</title>

<jsp:include page="../common/header.jsp?active=bclass"></jsp:include>
<link href="/resources/css/show-custom.css" rel="stylesheet">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js"></script>

<!-- 썸머 노트 -->
<script src="/resources/note/summernote-lite.js"></script>
<script src="/resources/note//lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/note/summernote-lite.css">

</head>
<script type="text/javascript">
$(document).ready(function() {
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정		  
		  toolbar: [
		    // [groupName, [list of button]]
		    ['style', ['bold', 'italic', 'underline', 'clear']],
		    ['font', ['strikethrough', 'superscript', 'subscript']],
		    ['fontsize', ['fontsize']],
		    ['color', ['color']],
		    ['para', ['ul', 'ol', 'paragraph']],
		    ['height', ['height']]
		  ]
	});
			
});

$(function() {
	$("#postcodify_search_button").postcodifyPopUp();
});
</script>
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
					<h1 class="mb-2 bread">OPEN CLASS</h1>
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
	
			
	

	<section class="ftco-section ftco-animate">
		
		<div class="container">
			<br>
				<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading subheading-with-line"><small class="pr-2 bg-white">BUKKE</small></span>
            <h2 class="mb-4">CLASS REGISTERED</h2>
          </div>
        </div>	
		</div>
	
		<div class="container">
			<!-- <div class="row"> -->
	
				<form action="bukkeClassRegister.com" method="post" enctype="multipart/form-data">

					
						<!-- 글쓰기 폼 전체 틀 -->
					<div class="row border col-md-12">
						<div class="col-md-4">
							<!-- 분류 -->
							<br> <label class="form-label" for="classType">분류</label>
							<select class="form-control" name="classType" id="" required>
								<option value="" hidden="hidden">분류를 선택해주세요</option>
								<option value="test1">test1</option>
								<option value="test2">test2</option>
								<option value="test3">test3</option>
								<option value="test4">test4</option>
								<option value="test5">test5</option>
							</select>
							<hr>
						</div>

						<div class="col-md-4">
							<!-- 상세 분류 -->
							<br> <label class="form-label" for="classTypedetails">상세분류</label>
							<select class="form-control" name="classTypedetails" id="" required>
								<option value="" hidden="hidden">상세분류를 선택해주세요</option>
								<option value="test1">test1</option>
								<option value="test2">test2</option>
								<option value="test3">test3</option>
								<option value="test4">test4</option>
								<option value="test5">test5</option>
							</select>
							<hr>
						</div>
						
						<div class="col-md-4">
						<!-- 대면 / 비대면 분류 -->
							<br> <label class="form-label" for="classType">대면 / 비대면 중 택1</label>
							<select class="form-control" name="classType" id="" required>
								<option value="" hidden="hidden">대면 / 비대면 중 택1</option>
								<option value="test1">대면</option>
								<option value="test2">비대면</option>
							</select>
							<hr>
						</div>
					


						<!-- 제목, 시작일-종료일, 주소, 내용, 첨부파일 -->
						<div class="form-outline col-md-12">
							<label class="form-label" for="className">클래스 명</label> <input
								type="text" id="className" class="form-control"
								name="className" autocomplete="off" required maxlength="50" />

							<hr>

							<div class="calendar">
								<label class="form-label" for="">시작일</label> 
								<input type="date" name="classStartDate" placeholder="시작일">&nbsp;&nbsp;
								<label class="form-label" for="">종료일</label> 
								<input type="date" name="classEndDate" placeholder="종료일">
							</div>

							<hr>

							<!-- <label class="form-label" for="classAddr">클래스 주소</label> <input
								type="text" id="classAddr" class="form-control"
								name="classAddr" autocomplete="off" required maxlength="50" /> -->
								
							<label class="form-label" for="classAddr">클래스 주소</label>&nbsp;
							<input type="button" id="postcodify_search_button" class="btn btn btn-dark btn-md" value="주소찾기">
							<div class="col-md-12">
								<input type="text" class="postcodify_address" name="classAddr1" autocomplete="off" placeholder="도로명주소" required size="50" /> 
								<input type="text" class="postcodify_extra_info" name="classAddr2" autocomplete="off" placeholder="상세주소" required size="50" />
							</div> 
							<hr>
							<br>
							<textarea id="summernote" name="classInfo" required></textarea>

							<hr>

							<input type="file" class="form-control" name="uploadFile">
							<br>
						</div>
						<br>
					</div>
						<br><br>
						<div class="button-set text-center">
							 <input type="submit" value="등록" class="btn btn-lg btn-primary"> 
							 <input type="button" value="취소" class="btn btn-lg btn-outline-warning">
						</div>
				</form>
			</div>
	</section>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script src="/resources/note/summernote-lite.js"></script>
<script src="/resources/note//lang/summernote-ko-KR.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js"></script>
<!-- 주소 검색 -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script type="text/javascript" src="/resources/js/note-ready.js"></script>