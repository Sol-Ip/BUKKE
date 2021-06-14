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

<!-- 주소 검색 -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
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
		classTypeList(selectType); 	
			});//첫번째 select 박스
});

function classTypeList(result) {
	$('#classTypedetails').html("");
	if(result == '플라워') { 
		$('#classTypedetails').append("<option value='꽃다발 및 부케' >꽃다발 및 부케</option>");
		$('#classTypedetails').append("<option value='꽃바구니' >꽃바구니</option>");
		$('#classTypedetails').append("<option value='가드닝' >가드닝</option>");
       $('#classTypedetails').append("<option value='플라워리스 및 테이블리스' >플라워리스 및 테이블리스</option>");
    } else if (result == '뷰티') {  
        $('#classTypedetails').append("<option value='헤어' >헤어</option>");
        $('#classTypedetails').append("<option value='메이크업 및 퍼스널컬러' >메이크업 및 퍼스널컬러</option>");
        $('#classTypedetails').append("<option value='네일 및 속눈썹 연장' >네일 및 속눈썹 연장</option>");
    } else if (result == '음악') {  
        $('#classTypedetails').append("<option value='피아노' >피아노</option>");
        $('#classTypedetails').append("<option value='전통악기' >전통악기</option>");
        $('#classTypedetails').append("<option value='보컬 및 작사 작곡' >보컬 및 작사 작곡</option>");
        $('#classTypedetails').append("<option value='드럼' >드럼</option>");
        $('#classTypedetails').append("<option value='기타 및 우클렐레' >기타 및 우클렐레</option>");
    } else if (result == '사진') { 
    	 $('#classTypedetails').append("<option value='포토샵' >포토샵</option>");
         $('#classTypedetails').append("<option value='영상제작' >영상제작</option>");
         $('#classTypedetails').append("<option value='사진' >사진</option>");
    }else if (result == '미술') { 
	   	 $('#classTypedetails').append("<option value='캘리그라피 및 서예' >캘리그라피 및 서예</option>");
	     $('#classTypedetails').append("<option value='오일 파스텔' >오일 파스텔</option>");
	     $('#classTypedetails').append("<option value='수채화' >수채화</option>");
	     $('#classTypedetails').append("<option value='디지털 드로잉' >디지털 드로잉</option>");
	     $('#classTypedetails').append("<option value='드로잉' >드로잉</option>");
	}
}

</script> 
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
<style>
.note-modal-backdrop {
    position: inherit;
}

.banner * {
   color: white;
}

.hero-wrap .overlay {
	background-color: #f0efeb;
}

</style>
<body>
	<!-- fixed section -->
	<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/bukkeClassImg/banner.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread" style="color:#595959;">Class</h1>
					<p class="mr-2" style="color:#595959;">원하는 취미들을 마음껏 즐겨보세요</p>
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
								<option value="뷰티">뷰티</option>
								<option value="음악">음악</option>
								<option value="사진">사진</option>
							</select>
							<hr>
						</div>

						<div class="col-md-6">
							<!-- 상세 분류 -->
							<br> <label class="form-label" for="classTypedetails">상세분류</label>
							<select class="form-control" name="classTypedetails" id="classTypedetails" required>
								<option value="" hidden="hidden">상세분류를 선택해주세요</option>
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
<!-- <script type="text/javascript">
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

</script> -->
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
   
   $(function(){
		//여기 아래 부분
		   $('#summernote').summernote({
		      placeholder: '최대 500자 작성 가능합니다.',
		              height: 300,
		              lang: 'ko-KR',
		              callbacks: {
		                 onImageUpload: function(files, editor, welEditable) {
		                    for(var i = files.length -1; i>=0; i--) {
		                       sendFile(files[i], this);
		                    }
		                 }
		              }
		       });
		       getReplyList($("#curiosityNo").val());
		       getHashtagLink();

		       $("#replyContent").on("keypress",function(key){
		         if(key.keyCode==13) {
		            replyRegister($("#curiosityNo").val());
		         }
		         if(key.keyCode==32) {
		         
		            $("#replyContent").focus();   
		            setTimeout(function() { 
		               $("#hashTagSearch").val("");   
		               $("#hashTagResult").text("#");   
		            },200);
		            $("#hashTag").hide();
		         }
		      
		      });

		   
		         
		         Mousetrap.bind('shift+3', function(e) {            
		            getHashTag();
		         });
		         // Mousetrap.bind('space', function(e) {            
		         //    $("#hashTag").hide();
		         //    $("#replyContent").focus();   
		         //    $("#hashTagSearch").val("");         
		         // });
		         // Mousetrap.bind('backspace', function(e) {            
		         //    $("#hashTag").hide();
		         // });
		         
		   
		});
		function getHashTag(){
		   var reply = $("#replyContent").val();
		   //var text = $("#hashTagText").text();
		   $("#hashTagText").text(reply);
		   $("#hashTag").show();   
		   $("#hashTagSearch").focus();
		   
		   $("#hashTagSearch").on("keyup",function(key){
		      if(key.keyCode==8 && $("#hashTagSearch").val().length==0){
		         $("#replyContent").focus();   
		         $("#hashTag").hide();
		      }
		      if(key.keyCode==32) {
		         
		         $("#replyContent").focus();   
		          setTimeout(function() { 
		            $("#hashTagSearch").val("");   
		            $("#hashTagResult").text("#");   
		         },200);
		         $("#hashTag").hide();
		      }
		      var search = $("#hashTagSearch").val();
		      console.log($("#hashTagSearch").val());
		      $("#replyContent").val(function(){
		         return $("#hashTagText").text() + search;
		      });
		      if(search.length > 0){

		            $.ajax({
		               url:"getHashTag.kh",
		               tyle:"get",
		               data:{"tagName":search},
		               dataType:"json",
		               success:function(data){
		                  console.log(data);
		                  var str = "";
		                  for(var i in data){
		                     str+='<span class="hashTagPlant"onmouseover="chageColor(this)"onmouseout="chageDefaultColor(this)" onclick="insertText(\''+data[i].plantName+'\')">'+data[i].plantName+'<br></span>';
		                  }
		                  $("#hashTagResult").html(str);
		                  }
		                  
		            });
		      }
		   
		   });

		}
		function insertText(plantName){
		   $("#replyContent").val($("#hashTagText").text()+"#"+plantName+" ");
		   $("#replyContent").focus();   
		   $("#hashTagSearch").val("");
		   $("#hashTag").hide();
		}
		function chageColor(obj){
		   $(obj).css("color","#00bd56");
		}
		function chageDefaultColor(obj){
		   $(obj).css("color","#808080");
		}
		/**
		   * 이미지 파일 업로드
		   */
		   function sendFile(file, el) {
		      var form_data = new FormData();
		      form_data.append('file', file);
		      $.ajax({
		         data: form_data,
		         type : "post",
		         url: 'summer_image.kh',
		         cache :false,
		         contentType : false,
		         enctype : 'multipart/form-data',
		         processData : false,
		         success : function(img_name) {
		            $(el).summernote('editor.insertImage', img_name);
		         }
		      });
		   }

		function readURL(input) {
		  if (input.files && input.files[0]) {

		    var reader = new FileReader();

		    reader.onload = function(e) {
		      $('.image-upload-wrap').hide();

		      $('.file-upload-image').attr('src', e.target.result);
		      $('.file-upload-content').show();

		      $('.image-title').html(input.files[0].name);
		    };

		    reader.readAsDataURL(input.files[0]);

		  } else {
		    removeUpload();
		  }
		}

		function removeUpload() {
		  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
		  $('.file-upload-content').hide();
		  $('.image-upload-wrap').show();
		}
		$('.image-upload-wrap').bind('dragover', function () {
		        $('.image-upload-wrap').addClass('image-dropping');
		    });
		    $('.image-upload-wrap').bind('dragleave', function () {
		        $('.image-upload-wrap').removeClass('image-dropping');
		});


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


