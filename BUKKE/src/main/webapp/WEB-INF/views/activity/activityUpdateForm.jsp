<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/header.jsp?active=activity"></jsp:include>
<meta charset="UTF-8">
<title>ACTIVITY 수정하기</title>
<link rel="stylesheet" href="resources/css/activity-custom/activity-banner.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js"></script>
<!-- 섬머노트 -->
<script src="/resources/note/summernote-lite.js"></script>
<script src="/resources/note//lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/note/summernote-lite.css">


<!-- 캘린더 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="../resources/css/bClass-custom/calendar.css">

</head>

<body>
	<!-- fixed section -->
		<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/activity-banner.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">ACTIVITY</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="activityListView.com">ACTIVITY DETAIL</a></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	
			
	

	<section class="ftco-section ftco-animate">
		
		<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading subheading-with-line"><small class="pr-2 bg-white">BUKKE</small></span>
            <h2 class="mb-4">ACTIVITY MODIFIED</h2>
          </div>
        </div>	
		</div>
	
		<div class="container">
			<!-- <div class="row"> -->
	
				<form action="activityUpdate.com" method="post" id="" enctype="multipart/form-data">
					<input type="hidden" id="activityNo" name="activityNo" value="${activity.activityNo }">
					<input type="hidden" name="aOriginalFilename" value="${activity.aOriginalFilename }">
					<input type="hidden" name="aRenameFilename" value="${activity.aRenameFilename }">

					
						<!-- 글쓰기 폼 전체 틀 -->
					<div class="row border col-md-12">
						<div class="col-md-6">
							<!-- 분류 -->
							<br> <label class="form-label" for="activityType">분류</label>
							<select class="form-control" name="activityType" id="act-type" required>
								<option value="" hidden="hidden">분류를 선택해주세요</option>
							    <option value="아웃도어" <c:if test="${activity.activityType eq '아웃도어' }">selected</c:if>>아웃도어</option>
								<option value="서핑" <c:if test="${activity.activityType eq '서핑' }">selected</c:if>>서핑</option>
								<option value="스포츠" <c:if test="${activity.activityType eq '스포츠' }">selected</c:if>>스포츠</option>
								<option value="수상레저" <c:if test="${activity.activityType eq '수상레저' }">selected</c:if>>수상레저</option> 
							</select>
							<hr>
						</div>

						<div class="col-md-6">
							<!-- 상세 분류 -->
							<br> <label class="form-label" for="activityTypeDetails">상세분류</label>
							<select class="form-control" name="activityTypeDetails" id="activityTypeDetails" required>
								<option value="" hidden="hidden">상세분류를 선택해주세요</option>
							<!-- 	
								<option value="test1">test1</option>
								<option value="test2">test2</option>
								<option value="test3">test3</option>
								<option value="test4">test4</option>
								<option value="test5">test5</option> -->
							</select>
							<hr>
						</div>


						<!-- 액티비티 명, 강좌 금액, 시작일-종료일, 주소, 내용, 첨부파일 -->
					<div class="form-outline col-md-12"> 
						<div class="row col-md-12">
							<div class="col-md-8">
								<label class="form-label" for="activityName">액티비티 명</label> 
								<input type="text" id="activityName" class="form-control" name="activityName" value="${activity.activityName }"
									autocomplete="off" placeholder="강좌명을 작성해주세요!" required maxlength="50" /><hr>
							</div>
							<div class="col-md-4">
								<label class="form-label" for="activityPrice">강좌 금액</label> 
								<input type="text" id="activityPrice" class="form-control" name="activityPrice" value="${activity.activityPrice }"
									autocomplete="off" placeholder="단위제외 및 , 포함 (ex_50,000)" required maxlength="50" /><hr>
							</div>
						</div>
						

						<div class="row col-md-12" style="align:center;">

							<br>
							<div class="col-md-4">
							<div class="calendar">
									<label class="form-label" for="">시작일</label>
									<br> 
									<input type="date" value="${activity.activityStartdate }" name="activityStartdate" placeholder="시작일" required>
							</div>
							</div>
							<div class="col-md-4">
							<div class="calendar">
									<label class="form-label" for="">종료일</label> 
									<br>
									<input type="date" value="${activity.activityEnddate }" name="activityEnddate" placeholder="종료일" required>
							</div>
							
							</div>
							<div class="col-md-4">
							<label for="activityCapacity" class="form-label">수강인원</label>
							<br>
								<input type="number" min="1" max="10" value="${activity.activityCapacity }" class="form-control" id="activityCapacity" name="activityCapacity" placeholder="수강 인원은 1~10명입니다." required>
							</div>
						</div>
						
						<hr>
						
						<!-- <input type="text" name="time" class="timepicker"> -->
							<div class="row col-md-12" style="align:center;">
							<div class="col-md-4">
							<div class="startTime">
									<label class="form-label" for="">시작 시간</label>
									<br> 
									<input type="text" class="timepicker" name="activityStartTime" style="width:240px;" placeholder="시작 시간" required>
							</div>
							</div>
							<div class="col-md-4">
							<div class="endTime">
									<label class="form-label" for="">종료 시간</label>
									<br> 
									<input type="text" class="timepicker" name="activityEndTime" style="width:240px;" placeholder="종료 시간" required>
							</div>
							</div>
							</div>
						<hr>
							
							<label class="form-label" for="activityAddr">액티비티 주소</label>&nbsp;
							<input type="button" id="postcodify_search_button" class="btn btn btn-dark btn-md" value="주소찾기"> 
							<!-- <input type="button" id="address-btn" class="btn btn btn-dark btn-md" value="주소찾기">-->
							<div class="col-md-12">
							<input type="text" class="postcodify_address" name="activityAddr1" autocomplete="off" placeholder="도로명주소" value="${activity.activityAddr }"required size="50" /> 
							<input type="text" class="postcodify_extra_info" name="activityAddr2" autocomplete="off" placeholder="상세주소" required size="50" /> 
							
							<!-- <input type="text"  class="form-control" id="sample4_roadAddress" name="activityAddr1" autocomplete="none" placeholder="도로명주소" required size="50" />
							<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소" size="60"> <span id="guide"
										style="color: #999; display: none"></span>  
							<input type="text"  class="form-control" id="sample4_detailAddress" name="activityAddr2" autocomplete="none" placeholder="상세주소" required size="50" /> -->
							
							</div> 
							<hr>
							<br>
							<textarea id="summernote" name="activityInfo" required>${activity.activityInfo} </textarea>

							<hr>
							<c:if test="${!empty activity.aOriginalFilename }">
							<input type="file" class="form-control" name="reloadActivityFile">
								기존 파일 : ${activity.aOriginalFilename}
							</c:if>
							<br>
						</div> 

						<br>

					</div>
						
						<br><br>
						<div class="button-set text-center">
							 <input type="submit" value="수정" id="update-btn" class="btn btn-lg btn-primary">
					
					<a href="activityListView.com"><input type="button" value="목록으로" id="cancle-btn" class="btn btn-lg btn-outline-warning"></a>
							 <br>
						</div>
				</form>
			</div>
	
	</section>
	 <script>
   $(function(){
      
$('#summernote').summernote({
    placeholder: '여기에 내용 입력하세요~ 그림파일 용량은 2MB까지입니다~',
    tabsize: 2,
    height: 500, // 에디터 높이
    defaultFontName: '바탕체',
    toolbar: [
['style', ['style']],
['fontname', ['fontname']],
['fontsize', ['fontsize']],
['font style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
['color', ['forecolor','color']],
['para', ['ul', 'ol', 'paragraph']],
['table', ['table']],
['insert', ['link', 'picture', 'video']],
['view', ['fullscreen', 'codeview', 'help']],
],
defaultFontName:'바탕',
fontNames: ['Arial', 'Comic Sans MS','맑은 고딕','궁서','굴림','돋음체','바탕'],
fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
maximumImageFileSize:2097152,

popover: {
              image: [
                ['image', ['resizeFull', 'resizeHalf', 'resizeQuarter', 'resizeNone']],
                ['float', ['floatLeft', 'floatRight', 'floatNone']],
                ['remove', ['removeMedia']]
              ],
              link: [
                ['link', ['linkDialogShow', 'unlink']]
              ],
              table: [
                ['add', ['addRowDown', 'addRowUp', 'addColLeft', 'addColRight']],
                ['delete', ['deleteRow', 'deleteCol', 'deleteTable']],
              ],
              air: [
                ['color', ['color']],
                ['font', ['bold', 'underline', 'clear']],
                ['para', ['ul', 'paragraph']],
                ['table', ['table']],
                ['insert', ['link', 'picture']]
              ]
            }
  });
$('.dropdown-toggle').dropdown()
   });


</script>
	
<!-- 타임피커 -->
<script>
$('.timepicker').timepicker({
    timeFormat: 'p h:mm',
    interval: 60,
    minTime: '09',
    maxTime: '11:00pm',
    defaultTime: '00',
    startTime: '00:00',
    dynamic: false,
    dropdown: true,
    scrollbar: true
});
</script>

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>

<!-- 캘린더 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="../resources/js/activity/calendar.js"></script>

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="../resources/js/activity/write-address.js"></script>
<!-- <script type="text/javascript" src="../resources/js/activity/activityWriteForm.js"></script> -->
<script type="text/javascript" src="../resources/js/activity/activityUpdateForm.js"></script>
<!-- 주소찾기 -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<!-- 섬머노트  -->
<script src="/resources/note/summernote-lite.js"></script>
<script src="/resources/note//lang/summernote-ko-KR.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js"></script>
<script type="text/javascript" src="/resources/js/note-ready.js"></script>
<!-- <script type="text/javascript" src="../resources/js/activity/activityUpdateForm.js"></script> -->