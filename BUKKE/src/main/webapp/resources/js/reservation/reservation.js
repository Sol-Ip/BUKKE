 function confirm(obj, reservationNo,reservationStatus) {
         var rSpan = $(obj);
         var sendData = {
               'reservationNo' : reservationNo,
               'reservationStatus' : reservationStatus
            };
         $.ajax({
         type:"GET",
         url:"reservationconfirm.com",
         data : sendData,
         dataType : "json",
         success:function(data){
            if (data.resultYn=="success") {
               rSpan.parent().prev().text(data.resultStatus);
            } else {
               alert("실패!");
            }
         }
         
      });
         };
      
         
          function reject(obj, reservationNo,reservationStatus) {
            var rSpan = $(obj);
            var sendData = {
                  'reservationNo' : reservationNo,
                  'reservationStatus' : reservationStatus
               };
            $.ajax({
            type:"GET",
            url:"reservationconfirm.com",
            data : sendData,
            dataType : "json",
            success:function(data){
               if (data.resultYn=="success") {
                  rSpan.parent().prev().text(data.resultStatus);
               } else {
                  alert("실패!");
               }
            }
            
         });
            };    
            
            
 $(document).ready(function(){
 $('#cb1').click(function(){
	var checked = $('#cb1').is(':checked');
	
	if(checked){
		$('input:checkbox').prop('checked',true);
	}else{
		$('input:checkbox').prop('checked',false);
	}
});
$('#cb2').click(function(){
	var checked = $('#cb2').is(':checked');
	
	if(checked){
		$('input:checkbox').prop('checked',true);
	}else{
		$('input:checkbox').prop('checked',false);
	}
});
$('#cb3').click(function(){
	var checked = $('#cb3').is(':checked');
	
	if(checked){
		$('input:checkbox').prop('checked',true);
	}else{
		$('input:checkbox').prop('checked',false);
	}
});

$('#confirmAll').click(function(){
	var checkedList = [];
  $("input[name=chkbox]:checked").each(function(){
    checkedList.push($(this).val());
    confirm($('#confirm'), $(this).val(),'승인');
  })
  	console.log(checkedList);
  	

	var checked = $('#cb1').is(':checked');
	
	if(checked){
		console.log("WOW");
	}
}); 
 
 });