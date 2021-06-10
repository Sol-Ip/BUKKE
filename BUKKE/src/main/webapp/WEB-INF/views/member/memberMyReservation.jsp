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
	<style type="text/css">
		#confirmbtn{
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
	</style>

</head>
<body>
<!-- fixed section -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">OPEN MYPAGE</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="home.com">Home <i class="ion-ios-arrow-forward"></i></a></span> 
                  <span>MyPage <i class="ion-ios-arrow-forward"></i></span><i class="ion-ios-arrow-forward"></i></a></span> 
                  <span>History <i class="ion-ios-arrow-forward"></i>
               </p>
            </div>
         </div>
      </div>
      
      <!-- ======================= 사이드 바 시작 =============================== -->
         <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">BUKKE</a>
                </div>
                <div class="nav__list">
                    <div href="#" class="nav__link collapse1">
                    	<ion-icon name="person-sharp" class="nav__icon"></ion-icon>
                        <!-- <ion-icon name="folder-outline" class="nav__icon"></ion-icon> -->
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                   		<ion-icon name="calendar-sharp" class="nav__icon"></ion-icon>
                        <span class="nav_name">부캐 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">부캐 일정보기</a>
                            
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="reviewListbyId.com" class="collapse__sublink">작성한 후기</a>
                            <a href="commentListbyId.com" class="collapse__sublink">작성한 댓글</a>
                            <a href="reviewLikeList.com" class="collapse__sublink">좋아요 목록</a>
                            <a href="KeepListbyId.com" class="collapse__sublink">찜 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">선물 내역</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">받은 선물</a>
                            <a href="#" class="collapse__sublink">보낸 선물</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="chatbubbles-sharp" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="notifications-sharp" class="nav__icon"></ion-icon>
                        <span class="nav_name">알림</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">예약 알림</a>
                        </ul>
                    </div>
                </div>
                
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">Log out</span>
                </a>
            </div>
        </nav>
    </div>
   </section>
   <!-- ======================= 사이드 바 끝 =============================== -->
	
      <div class="container ftco-animate">
		<div class="row justify-content-center" style="height: 250px;">
			<div class="col-md-8 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-light">RESERVATION</small></span>
				<section class="text1">
				<h3 class="h3Class" style="align-self: center;">Hey everyone look at this</h3>
						<h1 class="h1Class">
							<span class="fontawesome-star star" style="position: absolute; right: 500px;"></span> <span>Reservation LIST</span> <span
								class="fontawesome-star star"></span>
						</h1>	
				</section>			
			</div>
		</div>
		
	
	</div>
	<!-- <section class="ftco-section"> -->
      
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
      	<c:when test="${reservation.reservationStatus eq '승인' }">
      	<input type=button id="confirmbtn" value="결제하기"><a href=""></a>
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
               <c:url var="before" value="memberCAList.com">
                  <c:param name="page" value="${actPi.currentPage - 1 }"></c:param>
               </c:url>
               <c:if test="${actPi.currentPage <= 1 }">
                  <li><a href="#" onclick="firstPage()">&lt;</a></li>
               </c:if>
               <c:if test="${actPi.currentPage > 1 }">
                  <li><a href="${before }">&lt;</a></li>
               </c:if>
               <!-- 페이지 -->
                <c:forEach var="p" begin="${actPi.startPage }" end="${actPi.endPage }">
                  <c:url var="pagination" value="memberCAList.com">
                     <c:param name="page" value="${p }"></c:param>
                  </c:url>
                  <c:if test="${p eq actPi.currentPage }">
                  <li class="active" style="background-color: #ffffff;"><span>${p }</span></li>
               </c:if>
                  <c:if test="${p ne actPi.currentPage }">
                     <li><a href="${pagination }">${p }</a></li>
                  </c:if>
               </c:forEach>
               <!-- 다음 -->
               <c:url var="after" value="memberCAList.com">
                  <c:param name="page" value="${actPi.currentPage + 1 }"></c:param>
               </c:url>
               <c:if test="${actPi.currentPage >= actPi.maxPage }">
                  <li><a href="#" onclick="lastPage()">&gt;</a></li>
               </c:if>
               <c:if test="${actPi.currentPage < actPi.maxPage }">
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
      	<c:when test="${reservation.reservationStatus eq '승인' }">
      	<input type=button id="confirmbtn" value="결제하기"><a href=""></a>
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
               <c:url var="before" value="memberCAList.com">
                  <c:param name="page" value="${classPi.currentPage - 1 }"></c:param>
               </c:url>
               <c:if test="${classPi.currentPage <= 1 }">
                  <li><a href="#" onclick="firstPage()">&lt;</a></li>
               </c:if>
               <c:if test="${classPi.currentPage > 1 }">
                  <li><a href="${before }">&lt;</a></li>
               </c:if>
               <!-- 페이지 -->
                <c:forEach var="p" begin="${classPi.startPage }" end="${classPi.endPage }">
                  <c:url var="pagination" value="memberCAList.com">
                     <c:param name="page" value="${p }"></c:param>
                  </c:url>
                  <c:if test="${p eq classPi.currentPage }">
                  <li class="active" style="background-color: #ffffff;"><span>${p }</span></li>
               </c:if>
                  <c:if test="${p ne classPi.currentPage }">
                     <li><a href="${pagination }">${p }</a></li>
                  </c:if>
               </c:forEach>
               <!-- 다음 -->
               <c:url var="after" value="memberCAList.com">
                  <c:param name="page" value="${classPi.currentPage + 1 }"></c:param>
               </c:url>
               <c:if test="${classPi.currentPage >= classPi.maxPage }">
                  <li><a href="#" onclick="lastPage()">&gt;</a></li>
               </c:if>
               <c:if test="${classPi.currentPage < classPi.maxPage }">
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
        <c:forEach items="${reList }" var="reservation">
<div class="modal fade" id="myModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->

    <div class="modal-dialog">

     
      <!-- Modal content-->
      
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">예약 정보</h4> <!-- 사용자 지정 부분② : 타이틀 -->
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
          <p>수업명: 
     <%--      <c:if test="${reservation.activityNo !=0}">
   			   ${reservation.activity.activityNo }
				</c:if>    --%>
				 <c:if test="${reservation.classNo != 0 }">
					${reservation.bukkeClass.className }
				</c:if>       
          </p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
          <p>결제 금액: </p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
          <p>예약일: ${reservation.reservationDate }</p> <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
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
	


		<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>