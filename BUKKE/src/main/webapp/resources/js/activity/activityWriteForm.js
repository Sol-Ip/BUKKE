$(document).ready(function() {
	
	
	//activityType('1' , '11');
	
	//여기 아래 부분
/*	$('#summernote').summernote({
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
	});*/
	
//	$('#summernote').summernote({
//		height: 300,                 // 에디터 높이
//		minHeight: null,             // 최소 높이
//		maxHeight: null,             // 최대 높이
//		focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
//		lang: "ko-KR",					// 한글 설정
//		placeholder: '최대 2048자까지 쓸 수 있습니다',
//		callbacks: {
//	    		onImageUpload : function(files, editor, welEditable){
//	       			for (var i = files.length - 1; i >= 0; i--) {
//					uploadSummernoteImageFile(files[i], editor, welEditable);
//				}
//			}
//		}
//	});
	
	
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

//		function replyRegister(curiosityNo){
//		   if($("#loginNo").val() == ""){
//		      alert("로그인 후 사용가능합니다.");
//		      return false;
//		   }   
//		   var content = $("#replyContent").val();
//		   $.ajax({
//		      url : "curiosityReplyRegister.kh",
//		      type:"post",
//		      data : {"curiosityNo":curiosityNo,"curicommentContent":content},      
//		      success : function(data){
//		                   
//		      if(data == 1){
//		         getReplyList(curiosityNo);
//		         $("#replyContent").val("");
//		      }
//		        
//		      },
//		      error : function(){
//		        console.log('fail');
//		      }
//		   
//		     });
//		}
//
//		function replyModifyView(obj,curiosityNo,memberNo,replyNo,content){   
//		    $textarea = '<div class="row" style="position: relative;"><input type="text" style="width: 80%; margin-left:10%; height: 32px !important;" class="form-control" id="replyReContent" value="'+content+'"><button class="mt-4 p-2 btn btn-secondary reply-btn" style="right:6%;" onclick="replyUpdate('+curiosityNo+','+memberNo+','+replyNo+')">수정</button></div>';
//		   $(".curiosity-btn").hide();
//		  $(obj).hide();  
//		  $(obj).parent().parent().parent().after($textarea);
//		}
//
//		function replyUpdate(curiosityNo,memberNo,replyNo){   
//		   var content = $("#replyReContent").val();
//		   $.ajax({
//		      url : "curiosityReplyModify.kh",
//		      type:"post",
//		      data : {"curiosityNo":curiosityNo,"memberNo":memberNo,"curicommentNo":replyNo,"curicommentContent":content},      
//		      success : function(data){
//		                   
//		      if(data == 1){
//		         getReplyList(curiosityNo);
//		         $("#replyContent").val("");
//		      }
//		        
//		      },
//		      error : function(){
//		        console.log('fail');
//		      }
//		   
//		     });
//		   
//		}
//
//		function getReplyList(curiosityNo){   
//		   var loginNo = $("#loginNo").val();
//		   $.ajax({
//		      url : "curiosityReplyList.kh",
//		      type:"get",
//		      data : {"curiosityNo":curiosityNo},   
//		      dataType:"json",   
//		      success : function(data){
//		            
//		         var str = "";
//		         if(data.length > 0){
//		            $("#comment-count").text(data.length);
//		            $("#replyCount").text(data.length);
//		      
//		       for(var i in data){
//		         str+='<div class="media p-3">';
//		         if(data[i].memberFileRename == null){
//		            str+='<img src="resources/images/basicMemberImg.png" alt="John Doe" class="mr-3 mt-2 rounded-circle" style="width:60px; height: 60px">';   
//		         }else{
//		            str+='<img src="/resources/uploadFiles/member/'+data[i].memberFileRename+'" alt="John Doe" class="mr-3 mt-2 rounded-circle" style="width:60px; height: 60px">';
//		         }         
//		         str+='<div class="media-body">';
//		         str+='<strong>'+data[i].memberNick+'</strong><br>';
//		         str+='<span class="entry">'+data[i].curicommentContent+'</span><br>';
//		            if(loginNo == data[i].memberNo){
//		            str+='<small>'+data[i].curicommentDate+' <span onclick="replyModifyView(this,'+data[i].curiosityNo+','+data[i].memberNo+','+data[i].curicommentNo+',\''+data[i].curicommentContent+'\')" class="text-success curiosity-btn">수정</span> <span onclick="replyDelete('+data[i].curicommentNo+')" class="text-danger curiosity-btn">삭제</span></small><br>';
//
//		         }else{
//		            str+='<small>'+data[i].curicommentDate+'</small><br>';
//		         }
//
//		         str+='</div>';
//		         str+='</div>';
//		       }
//		      
//		        $("#curiosity-comment").html(str);
//		      }
//		      },
//		      error : function(){
//		        console.log('fail');
//		      },
//		      complete: function(){
//		         getHashtagLink();
//		      }
//		   
//		     });
//		}
//
//		function replyDelete(curicommentNo){
//		   if (!confirm("정말 삭제하시겠습니까?")) {
//		      // 취소(아니오) 버튼 클릭 시 이벤트
//		         return false;
//		      } else {
//		         $.ajax({
//		            url:"curiosityReplyDelete.kh",
//		            type:"get",
//		            data:{"curicommentNo":curicommentNo},
//		            success: function(result){
//		               console.log(result);
//		               if(result > 0){
//		                  getReplyList($("#curiosityNo").val());
//		               }
//		            },
//		            error: function(){
//		               console.log('fail');
//		            }
//		         });
//		      }
//		   
//		}
//
//		function getHashtagLink(){
//
//		   var siteURL = 'plantDetailName.kh?plantName=';
//		   
//		   entries = $('.entry');
//		   var tag = $('.entry:contains(#)').text();   
//		   var tagText = tag.split("#");      
//		   
//		   if ( entries.length > 0 ) {
//		      
//		      entries.each(function(i){
//		     
//		     contents = $(this).text().replace(/#(\S+)/g,'<a href="'+siteURL+'$1" title="$1">#$1</a>');
//		   
//		   $(this).html(contents);
//		   
//		     });
//		  
//		   }
//		}
//
//		function curiosityDelete(curiosityNo,page,count){   
//		   console.log(page);
//		   console.log(count);
//		   if (!confirm("정말 삭제하시겠습니까?")) {
//		      // 취소(아니오) 버튼 클릭 시 이벤트
//		         return false;
//		      } else {
//		      location.href="curiosityDelete.kh?curiosityNo="+curiosityNo+"&page="+page+"&count="+count;
//		      }
//		}
//	
	
	////////////////////////////////////////////////////////////////
	
	
	$("#postcodify_search_button").postcodifyPopUp();
	
	 $("#write-btn").on("click",function(){
		 if (!confirm("글을 등록하시겠습니까?")) {
			 // 취소
					return false;
		 		} else {
		     // 확인
		 		}
	 		});




/*function activityType(e) {
var activityTypeDetails_1 = ["등산 및 트래킹", "낚시"];
var activityTypeDetails_2 = ["당일치기", "1박2일", "강습 및 렌탈권"];
var activityTypeDetails_3 = ["익스트림 스포츠", "구기 스포츠", "라켓 스포츠"];
var activityTypeDetails_4 = ["스노쿨링 및 다이빙", "낚시"];
var target = document.getElementById("activityTypeDetails");


if(e.value == "1") var d = activityTypeDetails_1;
else if(e.value == "2") var d = activityTypeDetails_2;
else if(e.value == "3") var d = activityTypeDetails_3;
else if(e.value == "4") var d = activityTypeDetails_4;

target.options.length = 0;

for (x in d) {
	var opt = document.createElement("option");
	opt.value = d[x];
	opt.innerHTML = d[x];
	target.appendChild(opt);
}


}*/


	$('#act-type').change(function () {
		var selectType=$(this).val();
		//alert(selectType);
			$("#activityTypeDetails").html("");
				 $.ajax({
					type : "get",
					url : "activityTypeDetails.com",
					dataType : "json",
					data : { "activityType" : selectType },
					success : function(result) { //
						for(var i in result) {
							//console.log(result[i]);
							//console.log(result[i].activityTypeDetails);
							 $('#activityTypeDetails').append("<option value='"+result[i].activityTypeDetailCodes+"' >"+result[i].activityTypeDetails+"</option>'");
						}
		
				 }
				});//ajax 
			})//첫번째 select 박스
	$('#activityTypeDetails').change(function () {
		//alert($('#partyHeadCount').val());
		
	})// 두번째 select 박스
	
	
	
	
});
function activityType(type , select) {
    
    $('#activityTypeDetails').empty();
    
/*    if(type == '1') { // 아웃도어
        $('#activityTypeDetails').append("<option value='11' >등산 및 트래킹</option>'");
        $('#activityTypeDetails').append("<option value='12' >낚시</option>'");
    } else if (type == '2') {  // 서핑
        $('#activityTypeDetails').append("<option value='21' >당일치기</option>'");
        $('#activityTypeDetails').append("<option value='22' >1박2일</option>'");
        $('#activityTypeDetails').append("<option value='23' >강습 및 렌탈권</option>'");
    } else if ( type == '3') {  // 스포츠
        $('#activityTypeDetails').append("<option value='31' >익스트림 스포츠</option>'");
        $('#activityTypeDetails').append("<option value='32' >구기 스포츠</option>'");
        $('#activityTypeDetails').append("<option value='33' >라켓 스포츠</option>'");
    } else if (type == '4') { // 수상레저
    	 $('#activityTypeDetails').append("<option value='41' >스노쿨링 및 다이빙</option>'");
         $('#activityTypeDetails').append("<option value='42' >낚시</option>'");
    }*/
    
    switch(type) {
    case '1':
    	if($('#activityTypeDetails').length>0) {
    		 $('#activityTypeDetails').append("<option value='11' >등산 및 트래킹</option>'");
    	     $('#activityTypeDetails').append("<option value='12' >낚시</option>'");
    	}
    	break;
    case '2':
    	if($('#activityTypeDetails').length>0) {
    		  $('#activityTypeDetails').append("<option value='21' >당일치기</option>'");
    	      $('#activityTypeDetails').append("<option value='22' >1박2일</option>'");
    	      $('#activityTypeDetails').append("<option value='23' >강습 및 렌탈권</option>'");
    	}
    	break;
    }

	
    document.getElementById("activityTypeDetails").style.display = "";
    
    if ($.trim(select) != "") {
        $('#activityType').val(type);
        $('#activityTypeDetails').val(select);
    }
};
