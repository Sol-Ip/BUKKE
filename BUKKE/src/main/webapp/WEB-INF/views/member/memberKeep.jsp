<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Page</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<!-- tab -->
<link rel="stylesheet" href="../resources/css/mypage/tab.css"> 

<!-- 회원정보 -->
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link rel="stylesheet" href="../resources/css/member/mypage.css">


</head>
<style>
	.item {
	background-color : #ffffff;
	}
	
	#keep-img {
		width:200px;
		height:200px;
		border-radius : 50%;
		position : relative;
		margin-top : -75px;
		margin-left : 40px;
	}
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
<body id="">

   <!-- fixed section -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">OPEN MYPAGE</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>BOOKMARK <i
							class="ion-ios-arrow-forward"></i></span>
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
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
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
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
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

	<!--===================== 회원 정보 관리 시작 =========== -->
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">${loginMember.memberNick }'S BOOKMARK LIST</h2>
				</div>
			</div>
		</div>
	</section>

	<div class="container">
		<!-- 찜 목록이 없는 경우 -->
		<c:if test="${kList.size() == 0 }">
			<h1>찜 목록이 없습니다.</h1>
		</c:if>
	</div>

	<!-- <div class="tabset retable">

			<input type="radio" name="tabset" id="tab1" aria-controls="marzen"checked> 
			<label for="tab1">전체</label> 
			<input type="radio" name="tabset" id="tab2" aria-controls="rauchbier"> 
			<label for="tab2">액티비티</label> 
			<input type="radio" name="tabset" id="tab3" aria-controls="dunkles"> 
			<label for="tab3">클래스</label>
				
				 <div class="tab-panels"> 
					<section id="marzen" class="tab-panel">  -->
					
		<!-- 찜 목록이 있는 경우 -->
			<c:if test="${kList.size() > 0 }">
		<div class="container">
				<%-- <input type="hidden" class="keepNo" value="${ keep.keepNo }"name="keepNo"> --%>
				<div class="row ftco-animate">
					<div class="row col-md-12">
			<c:forEach items="${kList }" var="keep">
						<div class="col-md-4">
							<div class="item">
								<div class="testimony-wrap p-4 pb-5">
										<c:if test="${keep.classNo == 0 && keep.activityNo != 0 }">
											<div class="user-img mb-5" id="keep-img"
												style="background-image: url(../resources/images/activityImageFiles/${keep.activity.aRenameFilename})">
											</div>
											<%-- <div class="user-img mb-5" id="keep-img">
											<img src="resources/images/activityImageFiles/${keep.activity.aRenameFilename}">
											</div> --%>
										</c:if>
										<c:if test="${keep.classNo != 0 && keep.activityNo == 0 }">
											<div class="user-img mb-5" id="keep-img"
												style="background-image: url(../resources/bClassFiles/${keep.bukkeClass.cRenameFilename })">
											</div>
										</c:if>

								<c:if test="${keep.classNo == 0 && keep.activityNo != 0 }">
									<div class="text">
										<div class="pl-5">
											<p class="name">${keep.activity.activityType }</p>
											<span class="position">${keep.activity.shopId }</span>
										</div>
										<br>
										<p class="mb-5 pl-4 line">${keep.activity.activityName}</p>
									</div>
								</c:if>

								<c:if test="${keep.classNo != 0 && keep.activityNo == 0 }">
									<div class="text">
										<div class="pl-5">
											<p class="name">${keep.bukkeClass.classType }</p>
											<span class="position">${keep.bukkeClass.shopId }</span>
										</div>
										<br>
										<p class="mb-5 pl-4 line">${keep.bukkeClass.className}</p>
									</div>
								</c:if>
							</div>
							</div>
						</div>
			</c:forEach>
					</div>
				</div>
			<!-- </section>
			</div>-->
			</div> 
			
		
		
		
		<!-- =============== 페이징 처리 =============== -->
		<div class="container">
		<div class="row no-gutters mt-5 ftco-animate">
          <div class="col text-center">
            <div class="block-27">
              	<!-- 이전 -->
              	<ul>
				<c:url var="before" value="KeepListbyId.com">
					<c:param name="page" value="${pi.currentPage - 1 }"></c:param> <!-- controller의 param value값 -->
				</c:url>
				<c:if test="${pi.currentPage <= 1 }">
					<li><a href="#" onclick="firstPage()">&lt;</a></li>
				</c:if>
				<c:if test="${pi.currentPage > 1 }">
					<li><a href="${before}">&lt;</a></li>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
					<c:url var="pagination" value="KeepListbyId.com">
						<c:param name="page" value="${p}"></c:param>
					</c:url>
					<c:if test="${p eq pi.currentPage }">
						<li class="active"><span>${p }</span></li>
					</c:if>
					<c:if test="${p ne pi.currentPage }"> <!-- ne : not equal -->
						<li><a href="${pagination}">${p }</a></li>
					</c:if>
				</c:forEach>
				
				<!-- 다음 -->
				<c:url var="after" value="KeepListbyId.com">
					<c:param name="page" value="${pi.currentPage + 1}"></c:param>
				</c:url>
				<c:if test="${pi.currentPage >= pi.maxPage }">
					<li><a href="#" onclick="lastPage()">&gt;</a></li>
				</c:if>
				<c:if test="${pi.currentPage < pi.maxPage }">
					<li><a href="${after}">&gt;</a></li>
				</c:if>
				</ul>
			</div>
          </div>
        </div>
        </div>
		</c:if>
		<!-- =============== 페이징 처리 END =============== -->
		
</body>
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<script type="text/javascript" src="../resources/js/activity/activityListView.js"></script>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>