$(document).ready(function() {
	
	
	 $("#write-btn").on("click",function(){
		 if (!confirm("글을 등록하시겠습니까?")) {
			 // 취소
					return false;
		 		} else {
		     // 확인
		 		}
	 		});

	$('#class-type').change(function () {
		var selectType=$(this).val();
		alert(selectType)
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
