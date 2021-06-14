<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp">
	<jsp:param name="active" value="review" />
</jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미생활 플랫폼, 부캐</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<style>
.form-control-borderless {
    border: none;
}

.form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
    border: none;
    outline: none;
    box-shadow: none;
}

.project:after {
	background-color: #d1b3c4;
	border-radius:50px;
}

.project {
	border-radius:50px;
	font-family: 'KOTRA_BOLD-Bold';
}

.staff {
	font-family: 'KOTRA_BOLD-Bold';
}

.banner {
	/* background-color: rgb(68, 201, 244); */
	background-color: #d1b3c4;
}

.banner * {
	color: white;
}


#topLike-img {
	border-radius:50px;
	width : 400px;
	height : 250px;
}

/* #keep-img {
	width: 200px;
	height: 200px;
	border-radius: 50%;
	position: relative;
	margin-top: -75px;
	margin-left: 40px;
} */

#text-id1 {
	width: 300px;
	height: auto;
}

.text-id1 {
	font-family: 'trana';
}

/* title css */
#preview {
	text-align: center;
	padding: 5em;
	position: relative;
   	top: 0;
   	width: 88%;
   	margin: 0;
   	left: 0;
   	height: 100%;
   	margin-left: 0;
}

#preview h2 {
	font-size: 3em;
	font-family: 'NeoDunggeunmo';
}

/* #preview p {
	font-size: 1em;
	font-family: 'KOTRA_BOLD-Bold';
} */

#preview h2{
	color: #fff;
	background: #e8c2ca;
	padding: 6px;
	text-transform: uppercase;
	line-height: 2;
	letter-spacing: 3px;
	display: inline;
	white-space: pre;
}
@font-face {
    font-family: 'NeoDunggeunmo';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.3/NeoDunggeunmo.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'KOTRA_BOLD-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
</style>
</head>
<body>


<section class="banner hero-wrap hero-wrap-2">
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-2 bread">Review</h1>
				<p class="mr-2">부캐들이 남긴 활동 후기♡</p>
			</div>
        </div>
    </div>
</section>

	<!-- 좋아요 많은순 3개 리스트 -->
	<%-- <div class="container ftco-animate">
	<br><br>
	<div class="row">
	<i class="btn btn-danger fas fa-heart" height: auto></i>&nbsp;&nbsp;
		<div class="text-primary" id="text-id1" height:auto>
		가장 많은 좋아요를 받은 후기
		</div>
		</div>
		<br>
	<div class="container">
	<br>	<br><br>
			<div class="row">
			
			<c:forEach items="${rListTopLikes }" var="review">
				<div class="col-sm-4 ftco-animate">
					<div class="item">
					<div class="testimony-wrap p-4 pb-5">
					
						<div class="text d-flex">
						<c:url var="rDetail" value="reviewDetail.com">
                     		<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
                  		</c:url>
							<h3>
								<a href="${rDetail }"><div class="user-img mb-5" id="keep-img" 
					style="background-image: url(../resources/reviewFiles/${review.rRenameFilename })"></div></a>
							</h3>
							 
						</div>
						<div class="col-sm text-info"  align="right">글쓴이 : ${review.memberId }</div>
						
						</div>
					</div>
					<br>
				</div>
			</c:forEach>
			</div>
		</div>
	
	</div> --%>
	<!-- 좋아요 많은순 3개 리스트 끝 -->
	
	
	<br><br>
	<!-- =================== 검색 시작 ====================== -->
	<div class="container ftco-animate">
			<br />
			<div class="row justify-content-center" >
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">REVIEW</small></span>
					<h2 class="mb-4">SEARCH</h2>
				</div>

			<form class="col-md-8 card card-lg" action="reviewSearch.com"
				method="get">
				<div class="card-body row no-gutters align-items-center">
					<!-- <div class="col-auto">
						<i class="fas fa-search h4 text-body"></i>
					</div> -->
					<select class="selectpicker btn-lg btn-inverse" name="reviewCategory">
						<option value="all"
							<c:if test="${search.reviewCategory == 'all' }">selected</c:if>>전체</option>
						<option value="writer"
							<c:if test="${search.reviewCategory == 'writer' }">selected</c:if>>작성자</option>
						<option value="title"
							<c:if test="${search.reviewCategory == 'title' }">selected</c:if>>제목</option>
						<option value="content"
							<c:if test="${search.reviewCategory == 'content' }">selected</c:if>>내용</option>
					</select> 
					<!--end of col-->
					<div class="col">
						<input
							class="form-control form-control-lg form-control-borderless"
							type="text" name="reviewKeyword" value="${search.reviewKeyword }"
							placeholder="검색어를 입력해주세요">
					</div>
					<!--end of col-->
					<div class="col-auto">
						<button class="btn btn-lg btn-primary" type="submit" style="background-color:#b392ac; border:#b392ac;'">Search</button>
					</div>
					<!--end of col-->
				</div>
			</form>
		</div>
			<!--end of col-->
			<hr>
		</div><br><br>
		<!-- =========== 검색 끝 ============ -->
		
		<!-- 좋아요 많은순 3개 리스트 -->
	<section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row justify-content-start mb-5 pb-2">
          <div class="col-md-4 heading-section ftco-animate">
          	<span class="subheading subheading-with-line"><small class="pr-2 bg-light">BEST REVIEW</small></span>
            <h2 class="mb-4">인기 리뷰</h2>
          </div>
          <div class="col-md-8 pl-md-5 heading-section ftco-animate">
          	<div class="pl-md-4 border-line">
	          	<p>액티비티, 클래스 리뷰 중에서 좋아요를 가장 많이 받은 리뷰들을 한 눈에 확인 할 수 있어요 ! 
	          	여러분도 즐겁고 재미있는 액티비티, 클래스를 참여해서 나의 추억을 담을 리뷰들을 작성해보아요 ! 
	          	</p>
          	</div>
          </div>
        </div>
    	</div>
		<div class="container">
			<div class="row">
				<c:forEach items="${rListTopLikes }" var="review">
					<div class="col-md-6 col-lg-3 ftco-animate">
							<div class="project">
								<img src="../resources/reviewFiles/${review.rRenameFilename }" id="topLike-img" class="img-fluid" alt="Colorlib Template">
								<div class="text">
								<c:url var="rDetail" value="reviewDetail.com">
		                     		<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
		                  		</c:url>
									<span>[❤ 좋아요 수 : ${review.reviewLikeCnt }]</span>
									<a href="${rDetail }"><h3>${review.reviewTitle }</h3></a>
								</div>
								<!-- <a href="images/work-4.jpg"class="icon image-popup d-flex justify-content-center align-items-center">
									<span class="icon-expand"></span>
								</a> -->
							</div>
					</div>
					</c:forEach>
			</div>
		</div>
	</section>
		
	<!-- <div align="center">후기 전체보기 (최신순)</div>	
	<br><br><br><br> -->
	<!-- <div class="container">
		<div id="preview">
	        <h2>👏 BUKKE REVIEW LIST 👏</h2>
	    </div>
    </div> -->
    <br><br><br>
    <div class="container">
    		<div class="row justify-content-start mb-5 pb-2">
          <div class="col-md-4 heading-section ftco-animate">
          	<span class="subheading subheading-with-line"><small class="pr-2 bg-light">REVIEW LIST</small></span>
            <h2 class="mb-4">리뷰 리스트</h2>
          </div>
          <div class="col-md-8 pl-md-5 heading-section ftco-animate">
          	<div class="pl-md-4 border-line">
	          	<p>액티비티, 클래스의 모든 리뷰를 한 눈에 볼 수 있어요 ! 재미있게 활동하고 쓰는 리뷰는 나의 일기처럼 사용할 수 있고,
	          	다양한 사람들과 공유할 수도 있어요 !
	          	</p>
          	</div>
          </div>
        </div>
    	</div>

	<!-- 클래스 전체 수업 이미지 목록 -->
	
		<%-- <div class="container">
			<div class="row">
			<c:forEach items="${rList }" var="review">
				<div class="col-sm-4 ftco-animate">
					<div class="item">
					<div class="testimony-wrap p-4 pb-5">
						
						
						<c:url var="rDetail" value="reviewDetail.com">
                     		<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
                  		</c:url>
							<h3>
								<a href="${rDetail }"><div class="user-img mb-5" id="keep-img" 
					style="background-image: url(../resources/reviewFiles/${review.rRenameFilename })"></div></a>
							</h3>
							
						
						<div class="col-sm text-info"  align="right">글쓴이 : ${review.memberId }</div>
						<a href="resources/reviewFiles/${review.rRenameFilename}" class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
						</div>
					</div>
					<br>
				</div>
			</c:forEach>
			</div>
		</div> --%>

		<div class="container">
			<div class="row">
			<c:forEach items="${rList }" var="review">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
					<c:url var="rDetail" value="reviewDetail.com">
						<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
					</c:url>
						<a href="${rDetail }">
							<div class="img" style="background-image: url(resources/reviewFiles/${review.rRenameFilename });"></div>
						</a>
						<div class="text px-4 pt-4">
							<span class="position mb-2" style="color : #3a6ea5;">${review.reviewTitle }</span>
							<div class="faded">
								<p>${review.memberId }</p>
								<!-- <ul class="ftco-social d-flex">
									<li class="ftco-animate"><a href="#"><span
											class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
								</ul> -->
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div> 


	<!-- 글쓰기 버튼 -->
	<!--  일반회원마이페이지에서 본인이 들었던거만 후기남길수있게 글로 버튼위치바꿈 -->	
		<!-- <div style="float: right; padding-right : 350px;" class="ftco-animate">
			<a href="reviewWriteView.com"><button class="btn btn-lg btn-primary" type="submit">글쓰기</button></a>
		</div>
	<br style="clear:both"> -->
	 
	<!-- 페이징 처리 -->
		<div class="container">
    	<div class="row no-gutters mt-5">	
          <div class="col text-center">
            <div class="block-27">
              <!-- 이전 --> 
              <ul>
	            <c:url var="before" value="reviewList.com">
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
	               <c:url var="pagination" value="reviewList.com">
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
	            <c:url var="after" value="reviewList.com">
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
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>