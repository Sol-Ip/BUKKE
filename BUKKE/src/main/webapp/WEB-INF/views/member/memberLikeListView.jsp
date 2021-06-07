<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=login"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좋아요 목록</title>
	<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
	<link rel="stylesheet" href="../resources/css/mypage/mypageReview.css">
	
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--CDN 링크 -->
	
<style type="text/css">
		@import url('https://fonts.googleapis.com/css?family=Dancing+Script|Rozha+One');

* {
  box-sizing: border-box;
}

header h1 {
  margin-left: 100px;
  text-align: center;
  font-size: 72px;
  color: whitesmoke;
  font-family: "Rozha One";
  text-shadow: 0 0 5px grey;
  min-width: 690px;
  color: black;
  
}

header h1 span {
  font-family: "Dancing Script";
  position: relative;
  top: 20px;
  left: -30px;
  font-size: 60px;
  display: inline-block;
  transform: rotate(-16deg);
  
}

.preview table {
  border-collapse: collapse;
  border: 1px solid grey;
  width: 100%;
  height:100%;
  background-color: white;
}

.preview td {
  border: 1px solid rgb(243, 244, 245);
  min-width: 2px;
  min-height: 2px;
}

/* preview styles */

.preview-card {
  position: relative;
  margin-bottom: 40px;
  margin-left: 15px;
  margin-right: 15px;
  cursor: pointer;
}

.preview {
  width: 300px;
  height: 300px;
  overflow: hidden;
}

.preview-card h2 {
  position: absolute;
  top: 0;
  margin-top: 5px;
  width: 300px;
  text-align: center;
  z-index: 1000;
}

.info {
  position: absolute;
  bottom: -10px;
  left: 10px;
  width: 300px;
  z-index: 100;
}

.info p, .info div {
  display: inline-block;
}

.like {
  position: absolute;
  bottom: 15px;
  right: 20px;
}

.like i {
  color: rgb(245, 45, 36);
}

.flex-container {
  margin: auto;
  padding-left: 50px;
  padding-right: 50px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.info p {
  display: none;
  transition: all 0.6s ease;
}

h2 {
  display: none;
  color: rgb(68, 69, 73);
}

.preview-card:hover .info p, .preview-card:hover h2 {
  display: inline-block;
}

.hover-shadow {
  position: absolute;
  width: 300px;
  height: 300px;
  top: 0;
  left: 0;
  background-image: linear-gradient(0deg, rgb(200, 200, 200), transparent 15%, transparent 85%, rgb(200, 200, 200));
  display: none;
}

/* screen with a picture */

.show-picture {
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  position: fixed;
  background-color: rgba(99, 99, 99, 0.7);
  z-index: 1000;
  display: none;
}

.show-picture table {
  border-collapse: collapse;
  margin: auto;
  border: 1px solid grey;
}

.show-picture td {
  width: 10px;
  height: 10px;
  border: 1px solid grey;
  background-color: white;
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
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">좋아요 목록</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Likes <i
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
	</section>
	<!-- fixed section END-->
	<div class="container ftco-animate">
		<div class="row justify-content-center">
			<div class="col-md-8 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-light">REVIEW</small></span>
				<h2>Likes</h2>
				
			</div>
		</div>
	
	</div>
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<header>
					<h1>
						내가 누른 좋아요
					</h1>
				</header>
				<div class="container">
				<div class="flex-container">
				
					<div class="preview-card">
						<div class="preview">
							<table></table>
						</div>
						<h2>A picture #1</h2>
						<div class="info">
							<p class="date">12 Dec 2017</p>
							<p class="author">by Author</p>
							<div class="like">
								<i class="fa fa-heart" aria-hidden="true"></i> 165
							</div>
						</div>
						<div class="hover-shadow"></div>
					</div>
					
					</div>
					

					

				</div>

				<div class="show-picture">
					<table></table>
					<h1>OK</h1>
				</div>
				<%-- <ul class="list">
					<c:forEach items="${rlList }" var="review">
						<li class="list-item">
							<div class="list-content">
								<c:url var="rDetail" value="reviewDetail.com">
								<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
							</c:url>
							<h3>
								<a href="${rDetail }">${review.reviewTitle }</a>
							</h3>
								<img src="../resources/reviewFiles/${review.rRenameFilename }"
									id="class-img" class="block-20" alt="Colorlib Template" />
								<i class="fas fa-heart" style="color: #dc3545;"></i>
								<p>${review.reviewContents }</p>
								<a href="${rDetail }">Click</a>
							</div>
						</li>
					</c:forEach>
				</ul> --%>
			</div>
		</div>
	</section>
	
	<!-- 페이징 처리 -->
		<div class="container">
    	<div class="row no-gutters mt-5">	
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
	            <c:url var="before" value="reviewLikeList.com">
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
	               <c:url var="pagination" value="reviewLikeList.com">
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
	            <c:url var="after" value="reviewLikeList.com">
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
	<script type="text/javascript">

	function makeGrid() {
	  var table = $("table");
	  var grid = "";
	  for(var x = 0; x < 50; x++) {
	    grid += "<tr>";
	    for(var y = 0; y < 50; y++) {
	      grid += "<td></td>";
	    }
	    grid += "</tr>";
	  }
	  table.html(grid);
	}

	makeGrid();


	// fadeIn эффект при наведении

	$(".preview-card").on("mouseenter", function() {
	  $(this).find($(".hover-shadow")).fadeIn("fast");
	});

	$(".preview-card").on("mouseleave", function() {
	  $(this).find($(".hover-shadow")).fadeOut("fast");
	})



	</script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>