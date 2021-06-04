<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation</title> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/activity-custom/activityListView.css">

<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<!-- tab -->
<link rel="stylesheet" href="../resources/css/mypage/tab.css"> 
<style>
#exTab1 .tab-content {
  color : white;
  background-color: #428bca;
  padding : 5px 15px;
}

#exTab2 h3 {
  color : white;
  background-color: #428bca;   
  padding : 5px 15px;
  }
  
  .retable {
  max-width : 1400px;
  }
}

/* remove border radius for the tab */

#exTab1 .nav-pills > li > a {
  border-radius: 0;
}

/* change border radius for the tab , apply corners on top*/

#exTab3 .nav-pills > li > a {
  border-radius: 4px 4px 0 0 ;
}

#exTab3 .tab-content {
  color : white;
  background-color: #428bca;
  padding : 5px 15px;
}

 

</style>
</head>
<body>
   <!-- fixed section -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/resources/images/bg_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">RESERVATION</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="home.com">Home <i
                        class="ion-ios-arrow-forward"></i></a></span> <span>Reservation <i
                     class="ion-ios-arrow-forward"></i></span>
               </p>
            </div>
         </div>
      </div>
   <!-- ======================= 사이드 바 시작 =============================== -->
         <div class="l-navbar" id="navbar" style="height : 830px;">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">BUKKE</a>
                </div>
                <div class="nav__list">
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="calendar-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">수업 목록</a>
                            <a href="#" class="collapse__sublink">수업 일정</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="bicycle-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">등록한 액티비티</a>
                            <a href="#" class="collapse__sublink">등록한 클래스</a>
                            <a href="#" class="collapse__sublink">작성한 댓글</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="close-circle-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">업체 탈퇴</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">탈퇴 신청</a>
                        </ul>
                    </div>

                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="chatbubbles-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="alarm-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">예약 관리</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">예약 목록</a>
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
            
      
   <!-- fixed section END-->
      
   
   <!-- ========================= 리스트 시작 =========================  -->
   
   <!-- ========================= 검색창 =========================  -->
   <section class="ftco-section">
      <div class="container ftco-animate">
            <br>
            <div class="row justify-content-center">
               <div class="col-md-4 heading-section ftco-animate">
                  <span class="subheading subheading-with-line"><small
                     class="pr-2 bg-light">Reservation</small></span>
                  <h2 class="mb-4">SEARCH</h2>
               </div>
               
               <form class="col-md-8 card card-lg" action="#" method="get">
                  <div class="card-body row no-gutters align-items-center">
                     <div class="col-auto">
                        <i class="fas fa-search h4 text-body"></i>
                     </div>
                     <!--end of col-->
                     <div class="col">
                        <input class="form-control form-control-lg form-control-borderless" type="search" name="classKeyword" value="${search.classKeyword }" placeholder="검색어를 입력해주세요">
                     </div>
                     <!--end of col-->
                     <div class="col-auto">
                        <button class="btn btn-lg btn-primary" type="submit">Search</button>
                     </div>
                     <!--end of col-->
                  </div>
               </form>
            </div>
            <!--end of col-->
            <hr>
         </div>
      <!-- ========================= 클래스 정보란 =========================  -->
            <div class="container">
               <div class="row justify-content-start mb-5 pb-2">
                  <div class="col-md-4 heading-section ftco-animate">
                     <span class="subheading subheading-with-line"><small
                        class="pr-2 bg-light">BUKKE</small></span>
                     <h2 class="mb-4">RESERVATION</h2>
                  </div>
                  <div class="col-md-8 pl-md-5 heading-section ftco-animate">
                     <div class="pl-md-4 border-line">
                        <!-- <p>Far far away, behind the word mountains, far from the
                           countries Vokalia and Consonantia, there live the blind texts.
                           Separated they live in. A small river named Duden flows by their
                           place and supplies it with the necessary regelialia. It is a
                           paradisematic country, in which roasted parts of sentences fly
                           into your mouth.</p> -->
                     </div>
                  </div>
               </div>
            </div>
      <!-- ========================= 클래스 정보란 END =========================  -->
      <!-- 예약 목록 탭 -->
      
     <section class="ftco-animate"> 
     <div class="container">
      <div class="tabset retable"> 
  
  <input type="radio" name="tabset" id="tab1" aria-controls="marzen" checked>
  <label for="tab1"><h3>전체</h3></label>
  
  <input type="radio" name="tabset" id="tab2" aria-controls="rauchbier">
  <label for="tab2"><h3>액티비티</h3></label>
  
  <input type="radio" name="tabset" id="tab3" aria-controls="dunkles">
  <label for="tab3"><h3>클래스</h3></label>
  
 <div class="tab-panels"> 
     <section id="marzen" class="tab-panel"> 
<!--     <div class="row col-lg-12" style="align:center;"> -->
    <table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col"><input type="checkbox" name="reservationBtn" id="cb1" >
      </th>
      <th scope="col">예약 번호</th>
      <th scope="col">구분</th>
      <th scope="col">회원명</th>
      <th scope="col">클래스/액티비티 명</th>
      <th scope="col">예약일</th>
      <th scope="col">승인여부</th>
      <th scope="col">승인/거절</th>
    </tr>
  </thead>
  <c:forEach items="${reservationList }" var="reservation">
  <tbody> 
    <tr>
      <th scope="row"><input type="checkbox" name="chkbox" value="${reservation.reservationNo}"></th>
      <td>${reservation.reservationNo }</td>
      <td>
      <c:choose>
         <c:when test="${reservation.classNo != 0 }">
         클래스
      </c:when>
      <c:when test="${reservation.activityNo != 0}">
         액티비티
      </c:when>         
      </c:choose>
      </td>
      <td>${reservation.reservationId }</td>
      <c:if test="${reservation.classNo != 0 && reservation.activityNo == 0 }">
      <td>${reservation.bukkeClass.className }</td>
      </c:if>
      <c:if test="${reservation.activityNo != 0 && reservation.classNo == 0 }">
      <td>${reservation.activity.activityName }</td>
      </c:if>
      <td>${reservation.reservationDate }</td>
      <td id="rStatus">${reservation.reservationStatus }&nbsp;&nbsp;</td>
       <td>
        <button id="confirm" onclick="confirm(this,${reservation.reservationNo},'승인')" class="btn btn-primary">승인</button>
        <button id="reject" onclick="reject(this,${reservation.reservationNo},'거절')" class="btn btn-danger">거절</button>
     </td>
       
    </tr>
    
  </tbody>
  </c:forEach>
</table>
</section>

		<!-- 액티비티만 불러오기 -->
    <section id="rauchbier" class="tab-panel">
    <table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col"><input type="checkbox" name="reservationBtn" id="cb2"></th>
      <th scope="col">예약 번호</th>
      <th scope="col">구분</th>
      <th scope="col">회원명</th>
      <th scope="col">클래스/액티비티 명</th>
      <th scope="col">예약일</th>
      <th scope="col">승인여부</th>
      <th scope="col">승인/거절</th>
    </tr>
  </thead>
  <c:forEach items="${reservationList }" var="reservation">
  <tbody> 
  
  
  
  	<c:if test="${reservation.activityNo != 0  }">
    <tr>
      <th scope="row"><input type="checkbox" name="chkbox2"></th>
      <td>${reservation.reservationNo }</td>
      <td>
      <c:choose>
         <c:when test="${reservation.classNo != 0 }">
         클래스
      </c:when>
      <c:when test="${reservation.activityNo != 0}">
         액티비티
      </c:when>         
      </c:choose>
      </td>
      <td>${reservation.reservationId }</td>
      <c:if test="${reservation.classNo != 0 && reservation.activityNo == 0 }">
      <td>${reservation.bukkeClass.className }</td>
      </c:if>
      <c:if test="${reservation.activityNo != 0 && reservation.classNo == 0 }">
      <td>${reservation.activity.activityName }</td>
      </c:if>
      <td>${reservation.reservationDate }</td>
      <td id="rStatus">${reservation.reservationStatus }&nbsp;&nbsp;</td>
       <td>
        <button id="confirm" onclick="confirm(this,${reservation.reservationNo},'승인')" class="btn btn-primary">승인</button>
        <button id="reject" onclick="reject(this,${reservation.reservationNo},'거절')" class="btn btn-danger">거절</button>
     </td>
       
    </tr>
    </c:if>
  </tbody>
  </c:forEach>
</table>

  </section> 
   
    <section id="dunkles" class="tab-panel">
    <table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col"><input type="checkbox" name="reservationBtn" id="cb3"></th>
      <th scope="col">예약 번호</th>
      <th scope="col">구분</th>
      <th scope="col">회원명</th>
      <th scope="col">클래스/액티비티 명</th>
      <th scope="col">예약일</th>
      <th scope="col">승인여부</th>
      <th scope="col">승인/거절</th>
    </tr>
  </thead>
  <c:forEach items="${reservationList }" var="reservation">
  <tbody> 
  
  
  
  	<c:if test="${reservation.classNo != 0  }">
    <tr>
      <th scope="row"><input type="checkbox" name="chkbox3"></th>
      <td>${reservation.reservationNo }</td>
      <td>
      <c:choose>
         <c:when test="${reservation.classNo != 0 }">
         클래스
      </c:when>
      <c:when test="${reservation.activityNo != 0}">
         액티비티
      </c:when>         
      </c:choose>
      </td>
      <td>${reservation.reservationId }</td>
      <c:if test="${reservation.classNo != 0 && reservation.activityNo == 0 }">
      <td>${reservation.bukkeClass.className }</td>
      </c:if>
      <c:if test="${reservation.activityNo != 0 && reservation.classNo == 0 }">
      <td>${reservation.activity.activityName }</td>
      </c:if>
      <td>${reservation.reservationDate }</td>
      <td id="rStatus">${reservation.reservationStatus }&nbsp;&nbsp;</td>
       <td>
        <button id="confirm" onclick="confirm(this,${reservation.reservationNo},'승인')" class="btn btn-primary">승인</button>
        <button id="reject" onclick="reject(this,${reservation.reservationNo},'거절')" class="btn btn-danger">거절</button>
     </td>
       
    </tr>
    </c:if>
  </tbody>
  </c:forEach>
</table>
	<!-- 체크박스 여부 -->
    </section>
    <b></b>
      <div style="float: right;">
      	<button type="button" id="confirmAll">승인</button>
      	<button type="button" id="rejectAll">거절</button>
      </div>
 </div>
  </div> 
</div> 
</section>

<p>&nbsp;</p>
      <!-- 예약 목록 탭 끝 -->
      <!-- ========================= 예약관리 테이블  =========================  -->
      
      <div class="container">
      <div class="row col-lg-12" style="align:center;">
      <%--    <table class="table table-bordered">
           <thead>
               <tr>
                   <!-- 체크박스 빼도 됨 / 메뉴선택에 필요한 컬럼 넣거나 빼도 됨 -->
                   <th><input type="checkbox"></th>
                   <th>구분</th>
                   <th>예약 번호</th>
                   <th>회원 명</th>
                   <th>클래스 / 액티비티 명</th>
                   <th>예약 일</th> 
                   <th>승인여부</th>
               </tr>
           </thead>
           <c:forEach items="${reservationList }" var="reservation">
              <tbody>
                  <tr> <!-- 클래스랑 액티비티 셀렉박스로 구분 지어서 할지 고민 중 (일단 클래스만 해보는 중) -->
                      <td id="check_"><input type="checkbox"></td>
                      <td class="classType" id="typeClass">클래스</td>
                      <td id="reservationNo" name="reservationNo">${reservation.reservationNo }</td>
                      <td id="reservationId" name="reservationId">${reservation.reservationId }</td>
                      <td id="className" name="className">${reservation.className }</td>
                      <td id="reservationDate" name="reservationDate">${reservation.reservationDate }</td>
                      <td id="reservationStatus" name="reservationStatus">${reservation.reservationStatus }</td>
                      <td>
                          <button id="confirm" onclick="confirm(reservationNo)" class="btn btn-primary">승인</button>
                          <button id="reject" onclick="reject(reservationNo)" class="btn btn-danger">거절</button>
                      </td>
                  </tr>
              </tbody>
        </c:forEach>
    </table> --%>
      
   

    
      </div>
      <!-- 페이징 처리 -->
      <div class="container">
       <div class="row no-gutters mt-5">   
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
               <c:url var="before" value="reservationList.com">
                  <c:param name="page" value="${pi.currentPage - 1 }"></c:param>
               </c:url>
               <c:if test="${pi.currentPage <= 1 }">
                  <li><a href="#" onclick="firstPage()">&lt;</a></li>
               </c:if>
               <c:if test="${pi.currentPage > 1 }">
                  <li><a href="${before }">&lt;</a></li>
               </c:if>
               <!-- 페이지 -->
                <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
                  <c:url var="pagination" value="reservationList.com">
                     <c:param name="page" value="${p }"></c:param>
                  </c:url>
                  <c:if test="${p eq pi.currentPage }">
                  <li class="active" style="background-color: #ffffff;"><span>${p }</span></li>
               </c:if>
                  <c:if test="${p ne pi.currentPage }">
                     <li><a href="${pagination }">${p }</a></li>
                  </c:if>
               </c:forEach>
               <!-- 다음 -->
               <c:url var="after" value="reservationList.com">
                  <c:param name="page" value="${pi.currentPage + 1 }"></c:param>
               </c:url>
               <c:if test="${pi.currentPage >= pi.maxPage }">
                  <li><a href="#" onclick="lastPage()">&gt;</a></li>
               </c:if>
               <c:if test="${pi.currentPage < pi.maxPage }">
                  <li><a href="${after }">&gt;</a></li>
               </c:if>
              </ul>
            </div>
          </div>
        </div>
        </div>
       </div>
    </section>

<script>

</script>
</body>
</html>
<!-- 효정님 이거 보이십니까 -->
<!-- 사이드바 -->
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="../resources/js/reservation/reservation.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>


<jsp:include page="../common/footer.jsp"></jsp:include>