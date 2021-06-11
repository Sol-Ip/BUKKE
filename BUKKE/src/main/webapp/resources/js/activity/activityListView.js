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
          str+='<img src="resources/images/activityImageFiles/'+ data[i].aRenameFilename+ '" class="img-fluid" alt="Colorlib Template">';
          str+='<div class="text">';
          str+='<span style="font-family: TmoneyRoundWindExtraBold;" >['+ data[i].activityType + ' ]</span>';
          str+='<h3 style="font-family: TmoneyRoundWindExtraBold;">'+data[i].activityName + '</h3>';
          str+='<br><span><b>' + data[i].shopId + '</b></span>';
          str+='<a href="resources/images/activityImageFiles/' + data[i].aRenameFilename + '" class="icon image-popup d-flex justify-content-center align-items-center"><span class="icon-expand"></span></a>';
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
 $(".page-area").remove();
  var label = $(obj).children().val();
  console.log(label);
  $.ajax({
    url : "activitySelect.com",
    type: "get",
    data: {"activityType":label},
    dataType:"json",
    success: function(data){ 
    	$("#detail-form").empty();
    	$("#acti-list").empty();
		var str = "";
		var aStr = "";
		if(data != null){
			str+='<div class="col-md-4 d-flex align-self-stretch">';
			str+='	<div class="media block-6 services d-block">';
			str+='		<div class="icon d-flex justify-content-center align-items-center">';
			str+='			<span class="flaticon-compass-symbol"></span>';
			str+='		</div>';
			str+='		 <div class="media-body p-2 mt-3">';
			str+='			<h2 class="mb-4">DETAILS</h2>';
			str+='		</div>';
			str+='	</div>';
			str+='</div>';
			str+='<div class="col-md-8 d-flex align-self-stretch">';
			str+='<div class="button-group btn-group-toggle">';
			for(var i in data.atList){
				str+='<label class="btn btn-primary btn-lg" for="acti-detail1" onclick="getActDetailList(\''+label+'\',\''+data.atList[i].activityTypeDetails+'\')"><input type="radio" name="acti-detail">'
						+data.atList[i].activityTypeDetails+'</label>&nbsp;&nbsp;';				
			}
			aStr+='<div class="container">';
			aStr+='<div class="row">';
			for(var j in data.aList) {
		   // aStr+='<div class="col-md-6 col-lg-3">';
			aStr+='<div class="col-md-6 col-lg-3" onclick="location.href=\'activityDetail.com?activityNo='+data.aList[j].activityNo+'\'">';
			aStr+='<div class="project">';
			aStr+='<img src="/resources/images/activityImageFiles/'+ data.aList[j].aRenameFilename+'" class="img-fluid" alt="Colorlib Template">';
			aStr+='<div class="text">';
			aStr+='<span style="font-family: '+'TmoneyRoundWindExtraBold;'+'" >['+ data.aList[j].activityType + ']</span>';
			aStr+='<h3 style="font-family: '+'TmoneyRoundWindExtraBold;'+'">'+data.aList[j].activityName + '</h3>';
			aStr+='<br><span><b>' + data.aList[j].shopId + '</b></span>';
			aStr+='</div>';
			aStr+='<a href="resources/images/activityImageFiles/' + data.aList[j].aRenameFilename + '" class="icon image-popup d-flex justify-content-center align-items-center"><span class="icon-expand"></span></a>';
			aStr+='</div></div>';
			}
			aStr+='</div></div>';
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


function getActDetailList(activityType, activityTypeDetails) {
	
	$.ajax({
		url : "activityDetailSelect.com",
		type : "get",
		data : {"activityType" : activityType, "activityTypeDetails" : activityTypeDetails },
		dataType : "json",
		success : function(data) {
			$("#acti-list").html("");
			var aStr = "";
			if(data != null){
				aStr+='<div class="container">';
				aStr+='<div class="row">';
				for(var j in data) {
			    aStr+='<div class="col-md-6 col-lg-3">';
				//aStr+='<div class="col-md-6 col-lg-3" onclick="location.href=\'activityDetail.com?activityNo='+data[j].activityNo+'\'">';
				aStr+='<div class="project">';
				aStr+='<img src="/resources/images/activityImageFiles/'+ data[j].aRenameFilename+'" class="img-fluid" alt="Colorlib Template">';
				aStr+='<div class="text">';
				aStr+='<span style="font-family: '+'TmoneyRoundWindExtraBold;'+'" >['+ data[j].activityType + ']</span>';
				aStr+='<h3 style="font-family: '+'TmoneyRoundWindExtraBold;'+'">'+data[j].activityName + '</h3>';
				aStr+='<br><span><b>' + data[j].shopId + '</b></span>';
				aStr+='</div>';
				aStr+='<a href="resources/images/activityImageFiles/' + data[j].aRenameFilename + '" class="icon image-popup d-flex justify-content-center align-items-center"><span class="icon-expand"></span></a>';
				aStr+='</div></div>';
				}
				aStr+='</div></div>';
			}else{
				str='<div style="margin: 0 auto;"><h4><b>검색 결과가 없습니다.</b></h4></div>';
			}
	      $("#acti-list").append(aStr);
		}
	});
	
}


function resetSelect(){  
  location.href="activityListView.com";

}

function firstPage() {
	alert("해당 페이지는 첫 페이지 입니다.");
}

function lastPage() {
	alert("해당 페이지는 마지막 페이지 입니다.");
}

