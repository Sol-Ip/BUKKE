$(document).ready(function() {
	
	/*$("#write-btn").on("click", function() {
	alert("글이 등록되었습니다.");
});*/
	
	
	//activityType('1' , '11');
	
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
	
	
	$("#postcodify_search_button").postcodifyPopUp();
	
	 
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

/*$(document).ready(function () {
	$('#activityType').change(function () {
		var selectType=$(this).val();
		//alert(selectType);
		 $.ajax({
			type : "get",
			url : "activity/select.do",
			dataType : "json",
			data : "no="+ selectType,
			success : function(result) {
				$("#activityTypeDetails").html("");
				$('#activityTypeDetails').append('<option value="">상세분류를 선택해주세요</option>');	
				alert(result.membershipName);
				//alert(result.concurrentUsers);}
			var concurrentUsers = result.concurrentUsers;
			for(var i = 1 ; i<=concurrentUsers ; i++){
				$('#partyHeadCount').append("<option value="+i+">"+i+"명</option>");	
			}
		 }
		});//ajax 
	})//첫번째 select 박스
	$('#partyHeadCount').change(function () {
		//alert($('#partyHeadCount').val());
		
	})// 두번째 select 박스
})*/
