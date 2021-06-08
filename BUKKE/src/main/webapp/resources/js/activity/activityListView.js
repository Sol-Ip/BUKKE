//$(function(){
//  
//
//  if($("#type-choice").val() > 0) {
//    $("#detail-form").show();
//    
//    $activityType = $("#type-choice").val();
//    $activityDetail = $("#detail-choice").val();
//  	
//    getActivitySelectList();
//	  
//  }else{
//	   
//    getActList();
//    $("#detail-form").hide();
//  }
//});

function getActList(){

  $.ajax({
    url : "activityList.com",
    type:"get",
    /*data : {"current":1},*/
    dataType : "json",
    success : function(data){
      $("#act-count").text(data.length);      
      if(data.length > 0){
        var str = "";
        for(var i in data){
          str+='<div class="container">';
          str+='<div class="row">';
          str+='<div class="col-md-6 col-lg-3 ftco-animate" onclick="location.href=\'activityDetail.com?activityNo='+data[i].activityNo+'\'">';
          str+='<div class="project">';
          str+='<img src="resources/images/activityImageFiles/'+ data[i].aRenameFilename+ ' class="img-fluid" alt="Colorlib Template">';
          str+='<div class="text">';
          str+='<span style="font-family: TmoneyRoundWindExtraBold;" >['+ data[i].activityType + ' ]</span>';
          str+='<h3 style="font-family: TmoneyRoundWindExtraBold;">'+data[i].activityName + '</h3>';
          str+='<br><span><b>' + data[i].shopId + '</b></span>';
          str+='<a href="resources/images/activityImageFiles/' + data[i].aRenameFilename + ' class="icon image-popup d-flex justify-content-center align-items-center"><span class="icon-expand"></span></a>';
          str+='</div></div></div></div>';
          
        }
        $("#acti-list").append(str);
      }
    },
    error : function(){
      console.log('fail');
    }
  });

}

function getActivitySelectList(obj){
 
/*	$('#type-form input').on('change', function() {
		var type = $("input[name=acti-type]:checked", "#type-form").val();
		console.log(type);
	});
	
	$('#detail-form input').on('change', function() {
		var detail = $("input[name=acti-detail]:checked", "#detail-form").val();
		console.log(detail);
	});*/
//	 var type = $("#acti-type:checked").val();
//	var detail = $("#acti-detail:checked").val();
  var label = $(obj).children().val();
  $.ajax({
    url : "activitySelect.com",
    type: "get",
    data: {"activityType":label},
    dataType:"json",
    success: function(data){ 
    	$("#detail-form").empty();
    	$("#acti-list").empty();
//      $("#act-count").text(data.length);
//      $("#acti-list").html("");
		var str = "";
		var aStr = "";
      if(data != null){
        	str+='<div class="col-md-4 d-flex align-self-stretch">'
			str+='	<div class="media block-6 services d-block">'
			str+='		<div class="icon d-flex justify-content-center align-items-center">'
			str+='			<span class="flaticon-compass-symbol"></span>'
			str+='		</div>'
			str+='		 <div class="media-body p-2 mt-3">'
			str+='			<h2 class="mb-4">DETAILS</h2>'
			str+='		</div>'
			str+='	</div>'
			str+='</div>'
			str+='<div class="col-md-8 d-flex align-self-stretch">'
			str+='<div class="button-group btn-group-toggle">'
			for(var i in data.atList){
				str+='<label class="btn btn-primary btn-lg" for="acti-detail1" onclick="getAllSelectList(this)"><input type="radio" name="acti-detail" id="acti-detail1" value="1">'
						+data.atList[i].activityTypeDetails+'</label>&nbsp;&nbsp;';				
			}
        	console.log(data.atList[i].activityTypeDetails);
        	for(var j in data.aList) {
        	aStr+='<div class="container">';
            aStr+='<div class="row">';
        	aStr+='<div class="col-md-6 col-lg-3" onclick="location.href=\'activityDetail.com?activityNo='+data.aList[j].activityNo+'\'">';
        	aStr+='<div class="project">';
        	aStr+='<img src="resources/images/activityImageFiles'+ data.aList[j].aRenameFilename+'/class="img-fluid" alt="Colorlib Template">';
        	aStr+='<div class="text">';
        	aStr+='<span style="font-family: '+'TmoneyRoundWindExtraBold;'+'" >['+ data.aList[j].activityType + ']</span>';
        	aStr+='<h3 style="font-family: '+'TmoneyRoundWindExtraBold;'+'">'+data.aList[j].activityName + '</h3>';
        	aStr+='<br><span><b>' + data.aList[j].shopId + '</b></span>';
        	aStr+='<a href="resources/images/activityImageFiles' + data.aList[j].aRenameFilename + '/class="icon image-popup d-flex justify-content-center align-items-center"><span class="icon-expand"></span></a>';
        	aStr+='</div></div></div></div>';
    		}
    	}else{
        str='<div style="margin: 0 auto;"><h4><b>검색 결과가 없습니다.</b></h4></div>';
      }
      $("#detail-form").append(str);
      //getActDetailList(activityType);
      $("#acti-list").append(aStr);
    },
    error : function(){
      console.log('fail');
    }
  });
  //history.pushState("", "?type="+$activityType+"&detail="+$activityDetail);
}


function getActDetailList(activityType) {
	
	$.ajax({
		url : "activityDetailSelect.com",
		type : "get",
		data : {"activityType" : activityType },
		dataType : "json",
		success : function(data) {
			$("#acti-list").html("");
			 if(data.length>0){
		    	  	var str = "";
		    	  	var aStr = "";
		        	str+='<div class="col-md-4 d-flex align-self-stretch">'
					str+='	<div class="media block-6 services d-block">'
					str+='		<div class="icon d-flex justify-content-center align-items-center">'
					str+='			<span class="flaticon-compass-symbol"></span>'
					str+='		</div>'
					str+='		 <div class="media-body p-2 mt-3">'
					str+='			<h2 class="mb-4">DETAILS</h2>'
					str+='		</div>'
					str+='	</div>'
					str+='</div>'
					str+='<div class="col-md-8 d-flex align-self-stretch">'
					str+='<div class="button-group btn-group-toggle">'
					for(var i in data){
						str+='<label class="btn btn-primary btn-lg" for="acti-detail1" onclick="getAllSelectList(this)"><input type="radio" name="acti-detail" id="acti-detail1" value="1">'
								+data[i].activityTypeDetails+'</label>&nbsp;&nbsp;';				
					}
		        	for(var j in data.detailList) {
		        	aStr+='<div class="container">';
		            aStr+='<div class="row">';
		        	aStr+='<div class="col-md-6 col-lg-3 ftco-animate" onclick="location.href=\'activityDetail.com?activityNo='+data.detailList[j].activityNo+'\'">';
		        	aStr+='<div class="project">';
		        	aStr+='<img src="resources/images/activityImageFiles'+ data.detailList[j].aRenameFilename+'/class="img-fluid" alt="Colorlib Template">';
		        	aStr+='<div class="text">';
		        	aStr+='<span style="font-family: '+'TmoneyRoundWindExtraBold;'+'" >['+ data.detailList[j].activityType + ']</span>';
		        	aStr+='<h3 style="font-family: '+'TmoneyRoundWindExtraBold;'+'">'+data.detailList[j].activityName + '</h3>';
		        	aStr+='<br><span><b>' + data.detailList[j].shopId + '</b></span>';
		        	aStr+='<a href="resources/images/activityImageFiles' + data.detailList[j].aRenameFilename + '/class="icon image-popup d-flex justify-content-center align-items-center"><span class="icon-expand"></span></a>';
		        	aStr+='</div></div></div></div>';
		        	}
//		    		} else {
//		    		      aStr='<div style="margin: 0 auto;"><h4><b>검색 결과가 없습니다.</b></h4></div>';
//		    		}
		    	}
		}
	});
	
}


function resetSelect(){  
  $('.type-form').children('div').children().removeClass('active');
 
  $("#type-form").show();
  getActDetailList(activityType);
  $("#detail-form").hide();

}

function firstPage() {
	alert("해당 페이지는 첫 페이지 입니다.");
}

function lastPage() {
	alert("해당 페이지는 마지막 페이지 입니다.");
}

