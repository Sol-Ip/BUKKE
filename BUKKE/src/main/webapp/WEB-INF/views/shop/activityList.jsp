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

// font stuff
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,600,700,900);


// colour stuff
@white: #ffffff;
@lightBG: #dce1df;
@salmon: #ff6666;

@teal: #0096a0;
@tealMid: #0ebac7;
@tealContrast: #33ffff;
@tealShade:	#007c85;

@darkGrey: #4f585e;

body {
  background: @lightBG;
  color: @darkGrey;
  font-family: 'Source Sans Pro', sans-serif;
  text-rendering: optimizeLegibility;
}

a.btn {
  background: @teal;
  border-radius: 4px;
	box-shadow: 0 2px 0px 0 rgba(0,0,0,0.25);
  color: @white;
  display: inline-block;
  padding: 6px 30px 8px;
  position: relative;
  text-decoration: none;
	transition: all 0.1s 0s ease-out;
}

.no-touch a.btn:hover {
  background: lighten(@teal,2.5);
  box-shadow: 0px 8px 2px 0 rgba(0, 0, 0, 0.075);
  transform: translateY(-2px);
  transition: all 0.25s 0s ease-out;
}

.no-touch a.btn:active,
a.btn:active {
  background: darken(@teal,2.5);
  box-shadow: 0 1px 0px 0 rgba(255,255,255,0.25);
  transform: translate3d(0,1px,0);
  transition: all 0.025s 0s ease-out;
}

div.cards {
  margin: 80px auto;
  max-width: 960px;
  text-align: center;
}

div.card {
  background: @white;
  display: inline-block;
  margin: 8px;
  max-width: 300px;
  perspective: 1000;
  position: relative;
  text-align: left;
  transition: all 0.3s 0s ease-in;
  width: 300px;
  z-index: 1;

  img {
    max-width: 300px;
  }
  
  .card__image-holder {
    background: rgba(0,0,0,0.1);
    height: 0;
    padding-bottom: 75%;
  }

  div.card-title {
    background: @white;
    padding: 6px 15px 10px;
    position: relative;
    z-index: 0;
    
    a.toggle-info {
      border-radius: 32px;
      height: 32px;
      padding: 0;
      position: absolute;
      right: 15px;
      top: 10px;
      width: 32px;
      
      span {
        background: @white;
        display: block;
        height: 2px;
        position: absolute;
        top: 16px;
        transition: all 0.15s 0s ease-out;
        width: 12px;
      }
      
      span.left {
        right: 14px;
        transform: rotate(45deg);
      }
      span.right {
        left: 14px;
        transform: rotate(-45deg);
      }
    }
    
    h2 {
      font-size: 24px;
      font-weight: 700;
      letter-spacing: -0.05em;
      margin: 0;
      padding: 0;
      
      small {
        display: block;
        font-size: 18px;
        font-weight: 600;
        letter-spacing: -0.025em;
      }
    }
  }

  div.card-description {
    padding: 0 15px 10px;
    position: relative;
    font-size: 14px;
  }

  div.card-actions {
  	box-shadow: 0 2px 0px 0 rgba(0,0,0,0.075);
    padding: 10px 15px 20px;
    text-align: center;
  }
  
  div.card-flap {
    background: darken(@white,15);
    position: absolute;
    width: 100%;
    transform-origin: top;
    transform: rotateX(-90deg);
  }
  div.flap1 {
    transition: all 0.3s 0.3s ease-out;
    z-index: -1;
  }
  div.flap2 {
    transition: all 0.3s 0s ease-out;
    z-index: -2;
  }
  
}

div.cards.showing {
  div.card {
    cursor: pointer;
    opacity: 0.6;
    transform: scale(0.88);
  }
}

.no-touch  div.cards.showing {
  div.card:hover {
    opacity: 0.94;
    transform: scale(0.92);
  }
}

div.card.show {
  opacity: 1 !important;
  transform: scale(1) !important;

  div.card-title {
    a.toggle-info {
      background: @salmon !important;
      span {
        top: 15px;
      }
      span.left {
        right: 10px;
      }
      span.right {
        left: 10px;
      }
    }
  }
  div.card-flap {
    background: @white;
    transform: rotateX(0deg);
  }
  div.flap1 {
    transition: all 0.3s 0s ease-out;
  }
  div.flap2 {
    transition: all 0.3s 0.2s ease-out;
  }
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
							class="pr-2 bg-light">ACTIVITY & CLASS LIST</small></span>
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
							<h2 class="mb-4">ACTIVITY & CLASS LIST</h2>
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

  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?wave" alt="wave" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?beach" alt="beach" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?mountain" alt="mountain" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?field" alt="field" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?water" alt="water" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?river" alt="river" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?kite" alt="kite" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?underwater" alt="underwater" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card__image-holder">
      <img class="card__image" src="https://source.unsplash.com/300x225/?desert" alt="desert" />
    </div>
    <div class="card-title">
      <a href="#" class="toggle-info btn">
        <span class="left"></span>
        <span class="right"></span>
      </a>
      <h2>
          Card title
          <small>Image from unsplash.com</small>
      </h2>
    </div>
    <div class="card-flap flap1">
      <div class="card-description">
        This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
      </div>
      <div class="card-flap flap2">
        <div class="card-actions">
          <a href="#" class="btn">Read more</a>
        </div>
      </div>
    </div>
  </div>

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
						<li class="active"><span>${p }</span></li>
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