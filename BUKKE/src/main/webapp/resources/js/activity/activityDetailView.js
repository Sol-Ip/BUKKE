$(document).ready(function() {
	
	// 찜 하기
	var activityNo = $("#activityNo").val();
	$('#keep-btn1').click(function(){
		location.href='activityKeep.com?activityNo=' + activityNo;
		alert('찜 목록에 추가되었습니다!');
	});
	
	
	 $("#delete-btn").on("click",function(){
		 //consol.log("삭제완료");
		 if (!confirm("삭제하시겠습니까?")) {
			 // 취소
					return false;
		 		} else {
		     // 확인
		 		}
	 		}); 


});