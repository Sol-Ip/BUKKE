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
