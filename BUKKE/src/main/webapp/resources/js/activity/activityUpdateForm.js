$(document).ready(function() {
	
	
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

	
	
	$("#postcodify_search_button").postcodifyPopUp();
	
	/*
	$("#act-type option").each(function(){
	    if($(this).val()==$("#activityNo").val()){
	      $(this).attr("selected","selected"); // attr적용안될경우 prop으로 
	    }
	  });*/
	
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
	
	 $("#update-btn").on("click",function(){
		 if (!confirm("글을 수정하시겠습니까?")) {
			 // 취소
					return false;
		 		} else {
		     // 확인
		 		}
	 		});

});