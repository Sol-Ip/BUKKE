<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=login"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 목록</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
	<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
	<link rel="stylesheet" href="../resources/css/mypage/reviewComment.css">
		<link rel="stylesheet" href="../resources/css/mypage/mypageLike.css">
	
	
<style type="text/css">
	#comment1{
	font-size: 30px;
	   font-family: 'MaruBuri-Regular';
	}
	
@font-face {
    font-family: 'Cafe24SsurroundAir';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'MaruBuri-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
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
					<h1 class="mb-2 bread">내가 쓴 댓글 목록</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Review <i
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
	<div class="container ftco-animate">
		<div class="row justify-content-center">
			<div class="col-md-8 heading-section ftco-animate">
				<span class="subheading subheading-with-line"><small
					class="pr-2 bg-light">REVIEW</small></span>
					<br><br><br><br><br><br>
				<section class="text1">
				<h3 class="h3Class" style="align-self: center;">Hey everyone look at this</h3>
						<h1 class="h1Class">
							<span class="fontawesome-star star" style="position: absolute; right: 500px;"></span> <span>COMMENT LIST</span> <span
								class="fontawesome-star star"></span>
						</h1>	
				</section>		
			</div>
		</div>
	</div>
	
	<!-- 공지사항 리스트 -->
		
		<br><br><br>
		<div class="container">
				<div class="row">
				  <div id="admin" class="col s12">
				    <div class="card material-table">
				      <div class="table-header" style="background-color:#50BCDF">
				        <span class="table-title" style="font-size: 35px;font-family: 'Cafe24SsurroundAir';">내가 쓴 댓글</span>
				        <div class="actions">
				          <a class="modal-trigger waves-effect btn-flat nopadding" style="font-family:font-family: 'MaruBuri-Regular';"><i class="material-icons">BUKKE</i></a>
				        </div>
				      </div>
				      <table id="datatable">
				        <thead>
				          <tr>
				            <th style="text-align:center ;font-size: 30px;">내용</th>
				            <th></th>
				            <th></th>
				            <th style="font-size: 30px; ">작성자</th>
				            <th style="font-size: 30px;">날짜</th>
				            <th style="font-size: 30px;">삭제</th>
				          </tr>
				        </thead>
				        <tbody>
				        <c:forEach items="${rcList }" var="reviewComment">
				          <tr>
				            <td style="text-align: center;" id="comment1">${reviewComment.commentContents }</td>
				            <td></td>
				            <td></td>
				            <td id="comment1">${reviewComment.memberId }</td>
				            <td id="comment1">${reviewComment.commentDate }</td>
				            <td style="font-size: 30px;font-family: 'Cafe24SsurroundAir';">
				            	<button class="btn btn-primary">삭제</button>
				            </td>
				          </tr>
				         </c:forEach>
				        </tbody>
				      </table>
				      
				    </div>
				  </div>
				</div>
				   </section>
				<%-- <div class="col-12">
					<div class="card mb-4">
						<div class="card-header pb-0 text-center">
							<h5>내가 댓글 남긴 후기 글 목록</h5>
						</div>
						<div class="card-body px-0 pt-0 pb-2">
							<div class="table-responsive p-0">
								<table class="table align-items-center mb-0">
									<thead>
										<tr>
											<th
												class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7 ps-1" style="width: 50px;"></th>
											<th
												class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7 text-center">제목</th>
											<th
												class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7"></th>
											<th
												class="text-uppercase text-secondary text-xs font-weight-bolder opacity-7" style="text-align: right">작성자</th>
											<th
												class="text-center text-uppercase text-secondary text-xs font-weight-bolder opacity-7">날짜</th>
											 
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${rcList }" var="review">
											<tr>
												<td>
												</td>
												<td style="">
													<p class="text-xs font-weight-bold mb-0">
														<ul class="notice1">
													<c:url var="rDetail" value="reviewDetail.com">
														<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
													</c:url>
													
													<li class="menu"><a href="${rDetail }">${review.reviewTitle }</a>
																<ul class="hide">
																	
																</ul></li>
														</ul>
													</p>
													<p class="text-xs text-secondary mb-0"></p>
												</td>
												<td class="align-middle text-center text-sm"><span
													class="badge badge-sm bg-gradient-success"></span></td>
												<td class="align-middle text-right"><span
													class="text-secondary text-xs font-weight-bold">${review.memberId }</span></td>
												<td class="align-middle text-center"><span
													class="text-secondary text-xs font-weight-bold">${review.reviewDate }</span>
												</td>
												
												 <c:if test="${loginMember.memberId=='admin' }"> 
												<td class="align-middle text-center"><span
													class="text-secondary text-xs font-weight-bold">
														<c:url var="nDetail" value="noticeDetail.com">
															<c:param name="noticeNo" value="${notice.noticeNo }"></c:param>
														</c:url>
														<c:url var="nDelete" value="noticeDelete.com">
															<c:param name="noticeNo" value="${notice.noticeNo }"></c:param>
															<c:param name="nRenameFilename" value="${notice.nRenameFilename }"></c:param>
														</c:url>
																<a href="${nDetail}">수정 /</a> 
																<a href="${nDelete}">삭제</a>
													</span>
												</td>
											 	</c:if> 
											</tr>
											 
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div> --%>
			</div>
		</div>
		
		 <%-- <c:if test="${loginMember.memberId=='admin' }"> 
		<div>
			<button type="button" class="btn btn-outline-secondary"
				style="float: right;"><a href="noticeWriteView.com">글쓰기</a></button>
		</div>
	 	</c:if>  --%>
		
		
		<!-- 페이징처리 -->
		<div class="container">
		<div class="row no-gutters mt-5 ftco-animate">
          <div class="col text-center">
            <div class="block-27">
              	<!-- 이전 -->
              	<ul>
				<c:url var="before" value="commentListbyId.com">
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
					<c:url var="pagination" value="commentListbyId.com">
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
				<c:url var="after" value="commentListbyId.com">
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
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>