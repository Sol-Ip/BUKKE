<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <jsp:include page="../common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Class and Activity</title>

<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">

<!-- 모달창 -->

<!-- 회원정보 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="../resources/css/member/mypage.css">
<link rel="stylesheet" href="../resources/css/mypage/tab.css"> 
<link rel="stylesheet" href="../resources/css/mypage/mypageLike.css">
<link rel="stylesheet" href="../resources/css/mypage/banner.css">
	<style type="text/css">
.confirmbtn{
	width: 103px;
    height: 28px;
    font-size: 12px;
    line-height: 26px;
    letter-spacing: -0.6px;
    display: block;
    margin: 6px 0 0;
    color: WHITE;
    border: 1px solid #00ACEE;
    text-align: center;
    background-color: #00ACEE;
    
}
#rejectbtn{
	width: 103px;
    height: 28px;
    font-size: 12px;
    line-height: 26px;
    letter-spacing: -0.6px;
    display: block;
    margin: 6px 0 0;
    color: #f1634d;
    border: 1px solid #f1634d;
    text-align: center; 
}
#waitbtn{
	width: 103px;
    height: 28px;
    font-size: 12px;
    line-height: 26px;
    letter-spacing: -0.6px;
    display: block;
    margin: 6px 0 0;
    color: #b7b7b7;
    border: 1px solid #DFDFDF;
    text-align: center;
}
#paymentbtn{
		width: 103px;
    height: 28px;
    font-size: 12px;
    line-height: 26px;
    letter-spacing: -0.6px;
    display: block;
    margin: 6px 0 0;
    color: #b7b7b7;
    border: 1px solid #DFDFDF;
    text-align: center;
}
	</style>

</head>
<body>
<!-- 아임포트 사용설명서 -->
<a href="https://github.com/iamport/iamport-manual/blob/master/%EC%9D%B8%EC%A6%9D%EA%B2%B0%EC%A0%9C/README.md"></a>

	<!-- fixed section -->
	<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/mypageuser_1.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">MY ACTIVITY</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="memberMyPage.com">MY INFORMATION</a></span>
					</p>
				</div>
			</div>
		</div>
		<jsp:include page="../member/memberMySideBar.jsp"></jsp:include>
	</section>
	 <!-- fixed section END-->
      
     <div id="info-title" class="container">
		<div class="row justify-content-center">
			<div class="col-md-8 heading-section ftco-animate">
				<div class="text1">
					<h3 class="h3Class" style="align-self: center;">BUKKE</h3>
					<h1 class="h1Class">
						<span class="fontawesome-star star"
							style="position: absolute; right: 500px;"></span> <span>RESERVATION LIST</span> <span class="fontawesome-star star"></span>
					</h1>
				</div>
			</div>
		</div>
	</div>
      
      <br><br><br>
      <!-- 예약 목록 탭 -->
     <section class="ftco-animate"> 
     <div class="container" > 
      <div class="tabset retable"> 
  
  <input type="radio" name="tabset" id="tab2" aria-controls="rauchbier" checked>
  <label for="tab2"><h3>액티비티</h3></label>
  
  <input type="radio" name="tabset" id="tab3" aria-controls="dunkles">
  <label for="tab3"><h3>클래스</h3></label>
  
 <div class="tab-panels"> 
     
		<!-- 액티비티만 불러오기 -->
    <section id="rauchbier" class="tab-panel">
    <table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col">액티비티명</th>
      <th scope="col">분류</th>
      <th scope="col">상세분류</th>
      <th scope="col">개강일</th>
      <th scope="col">결제여부</th>
      
    </tr>
  </thead>
  <c:forEach items="${reList }" var="reservation" >
  <tbody> 
  
     <c:if test="${ reservation.activityNo !=0}">
    <tr>
      <td>${reservation.activity.activityName }</td>
      <td>${reservation.activity.activityType}</td>
      <td>${reservation.activity.activityTypeDetails }</td>
      <td>${reservation.activity.activityStartdate }</td>
      <td>
      <c:choose>
      	<c:when test="${reservation.reservationStatus eq '승인' and reservation.payStatus eq 'Y'}">
      	<div id="paymentbtn">결제 완료</div>
      	</c:when>
      	<c:when test="${reservation.reservationStatus eq '승인' }">
		      	<c:if test ="${reservation.payStatus eq 'N'}">
		      	<button type=button id="act-iamport" class="confirmbtn">결제하기</button>
		      	</c:if>
		      	<c:if test ="${reservation.payStatus eq 'Y'}">
		      	<button type="button" data-toggle="modal" data-target="#myModal2" id="waitbtn" >결제완료</button>
		      	</c:if>
		      	
		      	<script>
				$(document).ready(function(){
				    IMP.init('imp18509268');
				});
				
				$("#act-iamport").click(function(e){
				    IMP.request_pay({
				        pg : 'html5_inicis',
				        pay_method : 'card',
				        merchant_uid : 'merchant_' + new Date().getTime(),
				        name : '${reservation.activity.activityName}',
				        amount : '${reservation.activity.activityPrice}',
				        buyer_email : 'fine00924@naver.com',
				        buyer_name : '김솔잎',
				        buyer_tel : '010-9323-9024',
				        buyer_addr : '서울특별시 중구 남대문로 120,2층',
				    }, function(rsp) {
				        if ( rsp.success ) {
				            var msg = '결제에 성공하였습니다.';
				            msg += ' 고유ID : ' + rsp.imp_uid;
				            msg += ' 상점 거래ID : ' + rsp.merchant_uid;
				            msg += ' 결제 금액 : ' + rsp.paid_amount;
				            msg += ' 카드 승인번호 : ' + rsp.apply_num;
				            console.log("결제성공까진잘됨");
				        var reservationNo = '${reservation.reservationNo }';
						var activityNo = '${reservation.activityNo }'; 
						console.log("reservationNo는?"+reservationNo);
				         $.ajax({
							url : "paymentSuccess.com",
							type : "post",
							data : {
								"reservationNo" : reservationNo,
								"activityNo" : activityNo
							},
							success : function(data) {
								if (data == "success") {
									location.reload();
								} else {
									alert("실패");
								}
							}
			       	    });  
				                    
				        } else {
				            var msg = '결제에 실패하였습니다.';
				            msg += ' 에러내용 : ' + rsp.error_msg;
				        }
				        alert(msg);
				    });
				})
		</script>
		
		      	</c:when>
      	<c:when test="${reservation.reservationStatus eq '거절' }">
		<div id="rejectbtn">거절</div>
      	</c:when>
      	<c:when test="${reservation.reservationStatus eq '대기' }">
      	<button type="button" data-toggle="modal" data-target="#myModal" id="waitbtn" >대기</button>
      	</c:when>
      	 
      </c:choose>
      </td>
    </tr>
      </c:if>
  </tbody>
  </c:forEach>
</table>
		
<!-- 페이징 처리 -->
      <div class="container">
       <div class="row no-gutters mt-5">   
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
               <c:url var="before" value="myReservationList.com">
                  <c:param name="page" value="${reservationPi.currentPage - 1 }"></c:param>
               </c:url>
               <c:if test="${reservationPi.currentPage <= 1 }">
                  <li><a href="#" onclick="firstPage()">&lt;</a></li>
               </c:if>
               <c:if test="${reservationPi.currentPage > 1 }">
                  <li><a href="${before }">&lt;</a></li>
               </c:if>
               <!-- 페이지 -->
                <c:forEach var="p" begin="${reservationPi.startPage }" end="${reservationPi.endPage }">
                  <c:url var="pagination" value="myReservationList.com">
                     <c:param name="page" value="${p }"></c:param>
                  </c:url>
                  <c:if test="${p eq reservationPi.currentPage }">
                  <li class="active" style="background-color: #ffffff;"><span>${p }</span></li>
               </c:if>
                  <c:if test="${p ne reservationPi.currentPage }">
                     <li><a href="${pagination }">${p }</a></li>
                  </c:if>
               </c:forEach>
               <!-- 다음 -->
               <c:url var="after" value="myReservationList.com">
                  <c:param name="page" value="${reservationPi.currentPage + 1 }"></c:param>
               </c:url>
               <c:if test="${reservationPi.currentPage >= reservationPi.maxPage }">
                  <li><a href="#" onclick="lastPage()">&gt;</a></li>
               </c:if>
               <c:if test="${reservationPi.currentPage < reservationPi.maxPage }">
                  <li><a href="${after }">&gt;</a></li>
               </c:if>
              </ul>
            </div>
          </div>
        </div>
        </div>
       </section>
       
         <section id="dunkles" class="tab-panel">
   <table class="table table-hover" >
  <thead>
    <tr>
     
      <th scope="col">클래스명</th>
      <th scope="col">분류</th>
      <th scope="col">상세분류</th>
      <th scope="col">개강일</th>
      <th scope="col">결제 여부</th>
      
    </tr>
  </thead>
  <c:forEach items="${reList }" var="reservation">
  <tbody> 
  
  	<c:if test="${reservation.classNo != 0 }">
     <tr>
      <td>${reservation.bukkeClass.className }</td>
      <td>${reservation.bukkeClass.classType}</td>
      <td>${reservation.bukkeClass.classTypedetails }</td>
      <td>${reservation.bukkeClass.classStartDate }</td>
      <td>
      <c:choose>
      	<c:when test="${reservation.reservationStatus eq '승인' and reservation.payStatus eq 'Y'}">
      	<div id="paymentbtn">결제 완료</div>
      	</c:when>
      	<c:when test="${reservation.reservationStatus eq '승인' }">
				<c:if test ="${reservation.payStatus eq 'N'}">
		      	<button type=button id="class-iamport" class="confirmbtn">결제하기</button>
		      	</c:if>
		      	<c:if test ="${reservation.payStatus eq 'Y'}">
		      	<button type="button" data-toggle="modal" data-target="#myModal2" id="waitbtn" >결제완료</button>
		      	</c:if>
				
				
		      	<script>
				$(document).ready(function(){
				    IMP.init('imp18509268');
				});
				
				$("#class-iamport").click(function(e){
				    IMP.request_pay({
				        pg : 'html5_inicis',
				        pay_method : 'card',
				        merchant_uid : 'merchant_' + new Date().getTime(),
				        name : '${reservation.bukkeClass.className}',
				        amount : '${reservation.bukkeClass.classPrice}',
				        buyer_email : 'fine00924@naver.com',
				        buyer_name : '김솔잎',
				        buyer_tel : '010-9323-9024',
				        buyer_addr : '서울특별시 중구 남대문로 120,2층',
				    }, function(rsp) {
				        if ( rsp.success ) {
				            var msg = '결제에 성공하였습니다.';
				            msg += ' 고유ID : ' + rsp.imp_uid;
				            msg += ' 상점 거래ID : ' + rsp.merchant_uid;
				            msg += ' 결제 금액 : ' + rsp.paid_amount;
				            msg += ' 카드 승인번호 : ' + rsp.apply_num;
				            console.log("해보자");
				            var reservationNo = '${reservation.reservationNo}';
				            var classNo = '${reservation.classNo}';
				            $.ajax({
				            	url : "paymentSuccessClass.com",
				            	type : "post",
				            	data : {
				            		"reservationNo" : reservationNo,
				            		"classNo" : classNo,
				            	},
				            	success : function(data){
				            		if(data == "success"){
				            			location.reload();
				            		}else{
				            			alert("실패");
				            		}
				            	}
				            }); 
				            
				        } else {
				            var msg = '결제에 실패하였습니다.';
				            msg += ' 에러내용 : ' + rsp.error_msg;
				        }
				        alert(msg);
				    });
				})
		</script>
		      	</c:when>
      	<c:when test="${reservation.reservationStatus eq '거절' }">
		<div id="rejectbtn">거절</div>
      	</c:when>
      	<c:when test="${reservation.reservationStatus eq '대기' }">
      	<button type="button" data-toggle="modal" data-target="#myModal2" id="waitbtn" >대기</button>
      	</c:when>
      </c:choose>
      </td>      	
    </tr> 
    </c:if>
  </tbody>
  </c:forEach>
</table>
   
   
   
   <!-- 페이징 처리 -->
      <div class="container">
       <div class="row no-gutters mt-5">   
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
               <c:url var="before" value="myReservationList.com">
                  <c:param name="page" value="${reservationPi.currentPage - 1 }"></c:param>
               </c:url>
               <c:if test="${reservationPi.currentPage <= 1 }">
                  <li><a href="#" onclick="firstPage()">&lt;</a></li>
               </c:if>
               <c:if test="${reservationPi.currentPage > 1 }">
                  <li><a href="${before }">&lt;</a></li>
               </c:if>
               <!-- 페이지 -->
                <c:forEach var="p" begin="${reservationPi.startPage }" end="${reservationPi.endPage }">
                  <c:url var="pagination" value="myReservationList.com">
                     <c:param name="page" value="${p }"></c:param>
                  </c:url>
                  <c:if test="${p eq reservationPi.currentPage }">
                  <li class="active" style="background-color: #ffffff;"><span>${p }</span></li>
               </c:if>
                  <c:if test="${p ne reservationPi.currentPage }">
                     <li><a href="${pagination }">${p }</a></li>
                  </c:if>
               </c:forEach>
               <!-- 다음 -->
               <c:url var="after" value="myReservationList.com">
                  <c:param name="page" value="${reservationPi.currentPage + 1 }"></c:param>
               </c:url>
               <c:if test="${reservationPi.currentPage >= reservationPi.maxPage }">
                  <li><a href="#" onclick="lastPage()">&gt;</a></li>
               </c:if>
               <c:if test="${reservationPi.currentPage < reservationPi.maxPage }">
                  <li><a href="${after }">&gt;</a></li>
               </c:if>
              </ul>
            </div>
          </div>
        </div>
        </div>
       </section>
       </div>
       </div>
       </div>
  </section>  
  
  <!-- Modal -->
  <c:forEach items="${reList}" var="reservation">
          <c:if test="${reservation.activityNo !=0}">
 <div class="modal fade" id="myModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

    <div class="modal-dialog">

     
      <!-- Modal content-->
      
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">예약 정보</h4> <!-- 사용자 지정 부분② : 타이틀 -->
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
        <div style="text-align: center">
        <i class="fas fa-4x fa-snowboarding"></i>
        </div>
        &nbsp&nbsp&nbsp&nbsp
          <p>액티비티명: 
   			   &nbsp ${reservation.activity.activityName }
          </p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
          <p>결제 금액:&nbsp ${reservation.activity.activityPrice }원 </p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
          <p>예약일: &nbsp ${reservation.reservationDate }</p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> 
  </c:if> 
  
  <c:if test="${reservation.classNo !=0}">
 <div class="modal fade" id="myModal2" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

    <div class="modal-dialog">

     
      <!-- Modal content-->
      
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">예약 정보</h4> <!-- 사용자 지정 부분② : 타이틀 -->
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
        <div style="text-align: center">
        	<i class="fas fa-4x fa-chalkboard-teacher"></i>
        </div>
        &nbsp&nbsp&nbsp&nbsp
          <p>
   			   클래스명: &nbsp ${reservation.bukkeClass.className }
          </p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
          <p>결제 금액: &nbsp ${reservation.bukkeClass.classPrice }원 </p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
          <p>예약일: &nbsp ${reservation.reservationDate }</p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> 
  </c:if> 
  </c:forEach>


   <%--  <section id="dunkles" class="tab-panel">
     
    
    </section> --%>
    <b></b>
     
 </div>
  </div> 
</div> 

</section>

<p>&nbsp;</p>
      <!-- 예약 목록 탭 끝 -->
     
      
     
      
      
    </section>
	
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>