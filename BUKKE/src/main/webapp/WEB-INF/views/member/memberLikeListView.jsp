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
	<link rel="stylesheet" href="../resources/css/mypage/banner.css">
	<link rel="stylesheet" href="../resources/css/mypage/mypageLike.css">
	
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--CDN 링크 -->

</head>
<style>
.non-cmt {
	margin: auto;
	font-family: 'Cafe24SsurroundAir';
	text-align: center;
	}
	
@font-face {
	font-family: 'Cafe24SsurroundAir';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
/* 버튼 */
.link-btn {
	border: none;
	display: block;
	text-align: center;
	cursor: pointer;
	text-transform: uppercase;
	outline: none;
	overflow: hidden;
	position: relative;
	color: #fff;
	font-weight: 700;
	font-size: 15px;
	background-color: #222;
	padding: 17px 60px;
	margin: 0 auto;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.20);
}

.link-btn span {
	font-family: 'EliceDigitalBaeum_Bold';
	font-size: large;
	position: relative;
	z-index: 1;
}

.link-btn:after {
	content: "";
	position: absolute;
	left: 0;
	top: 0;
	height: 490%;
	width: 140%;
	background: #78c7d2;
	-webkit-transition: all .5s ease-in-out;
	transition: all .5s ease-in-out;
	-webkit-transform: translateX(-98%) translateY(-25%) rotate(45deg);
	transform: translateX(-98%) translateY(-25%) rotate(45deg);
}

.link-btn:hover:after {
	-webkit-transform: translateX(-9%) translateY(-25%) rotate(45deg);
	transform: translateX(-9%) translateY(-25%) rotate(45deg);
</style>
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
								class="ion-ios-arrow-forward"></i></a></span> 
								<span>Likes <i class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
		<jsp:include page="../member/memberMySideBar.jsp"></jsp:include>
		
   </section>
	 <!-- fixed section END-->
	 
	<section class="ftco-section ftco-animate">
		<div class="container ">
			<div class="row justify-content-center">
				<div class="col-md-8 heading-section ftco-animate">
					<div class="text1">
						<h3 class="h3Class" style="align-self: center;">BUKKE</h3>
						<h1 class="h1Class">
							<span class="fontawesome-star star"
								style="position: absolute; right: 500px;"></span> <span>LIKE LIST</span> <span class="fontawesome-star star"></span>
						</h1>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
		<!-- 좋아요 없을 시 목록 출력-->
		<c:if test="${rlList.isEmpty() }">
		<section class="ftco-section ftco-animate">
		<div class="container">
				<div class="row">
				<div class="non-cmt">
					<h1> 아직 <i class="fas fa-heart" style="color:red;"></i> 를 누른 게시글없네요! 😵</h1><br>
					<h3><b>후기 게시판으로 가볼까요 ?</b></h3><br><br>
					<a href="reviewList.com"><button class="link-btn"><span>후기글로 이동</span></button></a>
					</div>
				</div>
			</div>
        </section>
		</c:if>
		
	<!-- 좋아요 있을 시 목록 출력-->
	<c:if test="${rlList.size() > 0 }">
	<section class="">
		<div class="container">
			<div class="row">
				<header>
				</header>
				<div class="container">
				<div class="flex-container">
				
					<c:forEach items="${rlList }" var="review">
					<div class="preview-card">
						<div class="preview">
							
							<table><img src="../resources/reviewFiles/${review.rRenameFilename }"
									id="class-img" class="block-20" alt="Colorlib Template"/></table>
						</div>
						<c:url var="rDetail" value="reviewDetail.com">
								<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
							</c:url>
						<h2></h2>
						<div class="info">
							<p class="date"></p>
							<p class="author">${review.reviewTitle }<a href="${rlDetail }" style="color: black;"></p>
							<div class="like">
							
								<i class="fa fa-heart" aria-hidden="true" style="color: #dc3545;"></i> ${review.reviewLikeCnt }
							</div>
						</div>
						<div class="hover-shadow"></div>
					</div>
					</c:forEach>
					
					</div>
				</div>

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
    	</c:if>
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
	<script src="../resources/js/member/mypageSidebar.js"></script>
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>