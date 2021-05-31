$(document).ready(function() {
	
	
	$('#summernote').summernote({
		height: 300,                 // 에디터 높이
		minHeight: null,             // 최소 높이
		maxHeight: null,             // 최대 높이
		focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		lang: "ko-KR",					// 한글 설정
		placeholder: '최대 2048자까지 쓸 수 있습니다',
		callbacks: {
	    		onImageUpload : function(files, editor, welEditable){
	       			for (var i = files.length - 1; i >= 0; i--) {
					uploadSummernoteImageFile(files[i], editor, welEditable);
				}
			}
		}
	});
	
	
	$("#postcodify_search_button").postcodifyPopUp();
	
	
	/*$("#activity-type option").each(function(){
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
			
	 $("#update-btn").on("click",function(){
		 if (!confirm("글을 수정하시겠습니까?")) {
			 // 취소
					return false;
		 		} else {
		     // 확인
		 		}
	 		});

});