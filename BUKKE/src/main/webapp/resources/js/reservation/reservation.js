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