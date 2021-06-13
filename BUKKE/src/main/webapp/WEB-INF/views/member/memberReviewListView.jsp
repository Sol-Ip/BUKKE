<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=login"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<link rel="stylesheet" href="../resources/css/mypage/mypageReview.css">
<link rel="stylesheet" href="../resources/css/mypage/banner.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet"> <!--CDN 링크 -->
<meta charset="UTF-8">
<title>좋아요 목록</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

</head>
<style type="text/css">
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
</style>
<body>
	<!-- fixed section -->
	<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/mypageuser_1.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">MY REVIEW</h1>
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
								style="position: absolute; right: 500px;"></span> <span>REVIEW LIST</span> <span class="fontawesome-star star"></span>
						</h1>
					</div>
				</div>
			</div>
		</div>
		
	<!-- 작성한 리뷰글  없을 시 목록 출력-->
		<c:if test="${rList.isEmpty() }">
		<section class="ftco-section ftco-animate">
		<div class="container">
				<div class="row">
				<div class="non-cmt">
					<h1>&nbsp;&nbsp;작성한 리뷰가 없습니다 😲</h1>
					</div>
				</div>
			</div>
        </section>
		</c:if>
	
	<!-- 작성한 리뷰글 있을 시 목록 출력-->
	<c:if test="${rList.size() > 0 }">
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<ul class="list">
					<c:forEach items="${rList }" var="review">
						<li class="list-item">
							<div class="list-content">
								<c:url var="rDetail" value="reviewDetail.com">
									<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
								</c:url>
								<h3>
									<i class="fas fa-stream" style="color: blue"></i>
									<a href="${rDetail }" id="title1">${review.reviewTitle }</a>
								</h3>
								<img src="../resources/reviewFiles/${review.rRenameFilename }"
									id="class-img" class="block-20" alt="Colorlib Template" />
								<p>${review.reviewContents }</p>
								<a href="${rDetail }">Click</a>
							</div>
						</li>
					</c:forEach>
				</ul>
				<%-- <c:forEach items="${rList }" var="review">
	
				<div class="col-sm-4 ftco-animate">
					<div class="project">
						<img src="../resources/reviewFiles/${review.rRenameFilename }"
							id="class-img" class="block-20" alt="Colorlib Template">
						<div class="text d-flex">
							<c:url var="rDetail" value="reviewDetail.com">
								<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
							</c:url>
							<h3>
								<a href="${rDetail }">${review.reviewTitle }</a>
							</h3>
							
			
						</div>
											

					</div>
					<br>
				</div>
			</c:forEach> --%>

			</div>
		</div>
	
	<!-- 페이징 처리 -->
		<div class="container">
    	<div class="row no-gutters mt-5">	
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
	            <c:url var="before" value="reviewListbyId.com">
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
	               <c:url var="pagination" value="reviewListbyId.com">
	                  <c:param name="page" value="${p }"></c:param>
	               </c:url>
	               <c:if test="${p eq pi.currentPage }">
						<li class="active" style="background-color: white;"><span>${p }</span></li>
					</c:if>
	               <c:if test="${p ne pi.currentPage }">
	                  <li><a href="${pagination }">${p }</a></li>
	               </c:if>
            	</c:forEach>
            	<!-- 다음 -->
	            <c:url var="after" value="reviewListbyId.com">
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
    	</section>
    	</c:if>
<script src="../resources/js/member/mypageSidebar.js"></script>	
	<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>