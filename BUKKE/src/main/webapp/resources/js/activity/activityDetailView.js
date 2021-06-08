$(document).ready(function() {
	
	// 찜 하기
	var activityNo = $("#activityNo").val();
	$('#keep-btn1').click(function(){
		location.href='activityKeep.com?activityNo=' + activityNo;
		alert('찜 목록에 추가되었습니다!');
		
	});
	
	// 찜 하기 취소
	//var activityNo = $("#activityNo").val();
	//var keepNo = $("#keepNo").val();
	console.log("keepNo1 : " + keepNo);
	$('#keep-btn2').click(function(){
		console.log("keepNo2 : " + keepNo);
		location.href='updateActivityKeep.com?activityNo=' + activityNo;
		alert('찜하기가 취소되었습니다!');
		
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