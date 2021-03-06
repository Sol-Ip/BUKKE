<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ACTIVITY & CLASS List</title> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/activity-custom/activityListView.css">

<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<!-- tab -->
<link rel="stylesheet" href="../resources/css/mypage/tab.css"> 
<link rel="stylesheet" href="../resources/css/shop/shopList.css"> 
<style type="text/css">
 #btbt{
 	font-family: "Noto Sans KR", sans-serif;
  font-size: 1rem;
  font-weight: 400;
  text-align: center;
  text-decoration: none;

  display: inline-block;
  width: auto;

  border: none;
  border-radius: 4px;
  color: blue;
  background-color: white;
 }
</style>
</head>
<body>
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2"
		  style="background-color: yellow;"
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
							class="pr-2 bg-light">CLASS LIST</small></span>
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
							<h2 class="mb-4">CLASS LIST</h2>
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
		
	 <div class="cards">
	 <c:forEach items="${bList }" var="bList">
  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" style="width: 100%" src="../resources/bClassFiles/${bList.cRenameFilename }" alt="wave" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          <small>${bList.className }</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
      		${bList.classInfo }
      </div>
	        <c:url var="bDetail" value="bukkeClassDetailView.com">
				<c:param name="classNo" value="${bList.classNo }"></c:param>
			</c:url>
      <div class="card-flap flap2">
        <div class="card-actions">
          <button onclick="location.href = '${bDetail}' " id="btbt">Click</button>
        </div>
      </div>
    </div>
  </div>
  </c:forEach>
</div>



	 

<p>&nbsp;</p>
		<!-- 예약 목록 탭 끝 -->
		<!-- ========================= 예약관리 테이블  =========================  -->
		
		<div class="container">
		<div class="row col-lg-12" style="align:center;">
		<%-- 	<table class="table table-bordered">
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
	            <c:url var="before" value="shopClassList.com">
	               <c:param name="page" value="${shopPi.currentPage - 1 }"></c:param>
	            </c:url>
	            <c:if test="${shopPi.currentPage <= 1 }">
	               <li><a href="#" onclick="firstPage()">&lt;</a></li>
	            </c:if>
	            <c:if test="${shopPi.currentPage > 1 }">
	               <li><a href="${before }">&lt;</a></li>
	            </c:if>
	            <!-- 페이지 -->
                <c:forEach var="p" begin="${shopPi.startPage }" end="${shopPi.endPage }">
	               <c:url var="pagination" value="shopClassList.com">
	                  <c:param name="page" value="${p }"></c:param>
	               </c:url>
	               <c:if test="${p eq shopPi.currentPage }">
						<li class="active" style="background-color: white;"><span>${p }</span></li>
					</c:if>
	               <c:if test="${p ne shopPi.currentPage }">
	                  <li><a href="${pagination }">${p }</a></li>
	               </c:if>
            	</c:forEach>
            	<!-- 다음 -->
	            <c:url var="after" value="shopClassList.com">
	               <c:param name="page" value="${shopPi.currentPage + 1 }"></c:param>
	            </c:url>
	            <c:if test="${shopPi.currentPage >= shopPi.maxPage }">
	               <li><a href="#" onclick="lastPage()">&gt;</a></li>
	            </c:if>
	            <c:if test="${shopPi.currentPage < shopPi.maxPage }">
	               <li><a href="${after }">&gt;</a></li>
	            </c:if>
              </ul>
            </div>
          </div>
        </div>
        </div>
    	</div>
    </section>
   <script type="text/javascript">
   $(document).ready(function(){
	   var zindex = 10;
	   
	   $("div.card").click(function(e){
	     e.preventDefault();

	     var isShowing = false;

	     if ($(this).hasClass("show")) {
	       isShowing = true
	     }

	     if ($("div.cards").hasClass("showing")) {
	       // a card is already in view
	       $("div.card.show")
	         .removeClass("show");

	       if (isShowing) {
	         // this card was showing - reset the grid
	         $("div.cards")
	           .removeClass("showing");
	       } else {
	         // this card isn't showing - get in with it
	         $(this)
	           .css({zIndex: zindex})
	           .addClass("show");

	       }

	       zindex++;

	     } else {
	       // no cards in view
	       $("div.cards")
	         .addClass("showing");
	       $(this)
	         .css({zIndex:zindex})
	         .addClass("show");

	       zindex++;
	     }
	     
	   });
	 });
   </script>
</body>
</html>

<!-- 사이드바 -->
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>


<jsp:include page="../common/footer.jsp"></jsp:include>