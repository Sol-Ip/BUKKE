$(document).ready(function() {
	
	// 찜 하기
	var classNo = $("#classNo").val();
	$('#keep-btn1').click(function(){
		//location.href='bukkeClassKeep.com?classNo=' + classNo;
		alert('찜 목록에 추가되었습니다!');
		
	});
	
	// 찜 하기 취소
	var keepNo = $("#keepNo").val();
	console.log("keepNo1 : " + keepNo);
	$('#keep-btn2').click(function(){
		console.log("keepNo2 : " + keepNo);
		location.href='updateBukkeClassKeep.com?classNo=' + classNo;
		alert('찜하기가 취소되었습니다!');
		
	});
	
	
	// 예약하기
	//$('#reservation-btn1').click(function(){
		//location.href='ActivityReservation.com?activityNo=' + activityNo;
		//alert('예약 신청이 완료되었습니다!');
		
	//});
	
	// 예약하기 취소
	//var reservationNo = $("#reservationNo").val();
	//console.log("reservationNo1 : " + reservationNo);
	//$('#reservation-btn2').click(function(){
		//console.log("reservationNo2 : " + reservationNo);
		//location.href='deleteActivityReservation.com?activityNo=' + activityNo;
		//alert('예약 신청이 취소되었습니다!');
	//});
	
	// 거절 당한 것 다시 예약하기
	//$('#reservation-btn4').click(function(){
		//location.href='reActivityReservation.com?activityNo=' + activityNo;
		//alert('예약 신청이 완료되었습니다!');
		
	//});
	
	
	 //$("#delete-btn").on("click",function(){
		 //consol.log("삭제완료");
		 //if (!confirm("삭제하시겠습니까?")) {
			 // 취소
					//return false;
		 		} else {
		     // 확인
		 		//}
	 		//}); 


});