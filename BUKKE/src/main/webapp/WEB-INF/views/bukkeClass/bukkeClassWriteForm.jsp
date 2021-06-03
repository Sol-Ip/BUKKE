<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLASS 등록하기</title>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js"></script>
<jsp:include page="../common/header.jsp?active=bclass"></jsp:include>


<!-- 섬머노트 -->
<script src="/resources/note/summernote-lite.js"></script>
<script src="/resources/note//lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/note/summernote-lite.css">

<!-- 캘린더 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="../resources/css/bClass-custom/calendar.css">

<!-- 타임피커 -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link href="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.css?version=1.3" rel="stylesheet" type="text/css" media="screen">
<script src="${pageContext.servletContext.contextPath}/resources/js//jquery-1.8.3.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.js?version=1.3"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<!-- <script>
$(document).ready(function() {
	 /* $("#write-btn").on("click",function(){
		 if (!confirm("글을 등록하시겠습니까?")) {
			 // 취소
					return false;
		 		} else {
		     // 확인
		 		}
	 		}); */

	$('#class-type').change(function () {
		var selectType=$(this).val();
		alert(selectType);
			/*$("#classTypedetails").html("");
				 $.ajax({
					type : "get",
					url : "classTypedetails.com",
					dataType : "json",
					data : { "classType" : selectType },
					success : function(result) { 
						for(var i in result) {
							 $('#classTypedetails').append("<option value='"+result[i].classTypedetailCode+"' >"+result[i].classTypedetails+"</option>'");
						}
				 }
				});//ajax 
			})//첫번째 select 박스
	$('#classTypedetails').change(function () {
		//alert($('#partyHeadCount').val());
		
	})// 두번째 select 박스*/
});

};
</script> -->
<!-- 주소 검색 -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('class-post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("classAddr1").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("classAddr1").value = jibunAddr;
            }
        }
    }).open();
}

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
						<div class="col-md-6">
							<!-- 분류 -->
							<br> <label class="form-label" for="classType">분류</label>
							<select class="form-control" name="classType" id="class-type" required>
								<option value="" hidden="hidden">분류를 선택해주세요</option>
								<option value="플라워">플라워</option>
								<option value="미술">미술</option>
								<option value="수공예">뷰티</option>
								<option value="뷰티">음악</option>
								<option value="음악">사진</option>
							</select>
							<hr>
						</div>

						<div class="col-md-6">
							<!-- 상세 분류 -->
							<br> <label class="form-label" for="classTypedetails">상세분류</label>
							<select class="form-control" name="classTypedetails" id="classTypedetails" required>
								<option value="" hidden="hidden">상세분류를 선택해주세요</option>
								<!-- <option value="대면">대면</option>
								<option value="비대면">비대면</option> -->
							</select>
							<hr>
						</div>

						<!-- 제목, 시작일-종료일, 주소, 내용, 첨부파일 -->
						<div class="form-outline col-md-12"> 
						<div class="row col-md-12">
							<div class="col-md-8">
								<label class="form-label" for="activityName">클래스 명</label> 
								<input type="text" id="className" class="form-control" name="className" 
									autocomplete="off" placeholder="강좌명을 작성해주세요!" required maxlength="50" /><hr>
							</div>
							<div class="col-md-4">
								<label class="form-label" for="classPrice">강좌 금액</label> 
								<input type="text" id="classPrice" class="form-control" name="classPrice" 
									autocomplete="off" placeholder="단위제외 및 , 포함 (ex_50,000)" required maxlength="50" /><hr>
							</div>
						</div>
						 
						<div class="row col-md-12" style="align:center;">

							<br>
							<div class="col-md-4">
							<div class="calendar">
									<label class="form-label" for="">시작일</label>
									<br> 
									<input type="date" name="classStartDate" placeholder="시작일" required>
							</div>
							</div>
							<div class="col-md-4">
							<div class="calendar">
									<label class="form-label" for="">종료일</label> 
									<br>
									<input type="date" name="classEndDate" placeholder="종료일" required>
							</div>
							
							</div>
							<div class="col-md-4">
							<label for="classCapacity" class="form-label">수강인원</label>
							<br>
								<input type="number" min="1" max="10" class="form-control" id="classCapacity" name="classCapacity" placeholder="수강 인원은 1~10명입니다." required>
							</div>
						</div>
						
						<hr>
							<!-- 타임피커 이용해서 시작일 종료일 선택하기 -->
							<!-- <input type="text" name="time" class="timepicker"> -->
							<div class="row col-md-12" style="align:center;">
							<div class="col-md-4">
							<div class="startTime">
									<label class="form-label" for="">시작 시간</label>
									<br> 
									<input type="text" class="timepicker" name="classStartTime" style="width:240px;" placeholder="시작 시간" required>
							</div>
							</div>
							<div class="col-md-4">
							<div class="endTime">
									<label class="form-label" for="">종료 시간</label>
									<br> 
									<input type="text" class="timepicker" name="classEndTime" style="width:240px;" placeholder="종료 시간" required>
							</div>
							</div>
							</div>
						<hr>
						<label class="form-label" for="classAddr">클래스 주소</label>&nbsp;&nbsp;&nbsp;
							<input type="button" id="class-post" class="btn btn btn-dark btn-md" value="주소찾기" onclick="findAddr()">
							<br><br>
							<div class="col-md-12">
								<div id="aadr1-input" class="input-div">
		                            <input type="text" name="classAddr1" id="classAddr1" placeholder="기본주소" readonly>
		                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                            <input type="text" name="classAddr2" id="classAddr2" placeholder="상세주소">
		                        </div>
							</div>
							<br>
							<hr>
							
								<label class="form-label" for="classInfo">상세내용</label><br>
								<textarea id="summernote" name="classInfo" class="summernote" required></textarea>
							<br>
							<hr>

							<input type="file" class="form-control" name="uploadFile" required>
							<br>
						</div>
						<br>

					</div>
						
						<br><br>
						<div class="button-set text-center">
							 <input type="submit" value="등록" id="write-btn" class="btn btn-lg btn-primary"> 
							 <a href="bukkeClassList.com"><input type="button" value="취소" id="cancle-btn" class="btn btn-lg btn-outline-warning"></a>
							 <br><br><br>
						</div>
				</form>
			</div>
	
	</section>
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


/* $(function() {
	$("#postcodify_search_button").postcodifyPopUp();
}); */

</script>
<!-- 타임피커 -->
<script>
$('.timepicker').timepicker({
    timeFormat: 'p h:mm',
    interval: 60,
    minTime: '09',
    maxTime: '11:00pm',
    defaultTime: '14',
    startTime: '00:00',
    dynamic: false,
    dropdown: true,
    scrollbar: true
});
</script>
</body>

<jsp:include page="../common/footer.jsp"></jsp:include>
<!-- <script type="text/javascript" src="../resources/js/bclass/classWriteForm.js"></script> -->
<!-- 섬머노트 -->
<script src="/resources/note/summernote-lite.js"></script>
<script src="/resources/note//lang/summernote-ko-KR.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js"></script>
 <script type="text/javascript" src="/resources/js/note-ready.js"></script>
</html>


