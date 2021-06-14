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
<link rel="stylesheet" href="../resources/css/mypage/banner.css">
<link rel="stylesheet" href="../resources/css/mypage/reviewComment.css">


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
@font-face {
	font-family: 'MaruBuri-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff')
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
}

.card .card-body .message {
  padding-left: 80px;
  }
  
  &::after {
    clear: both;
}

.card .card-body .actions {
  margin-top: 5px;
}

</style>
</head>
<body>
	<!-- fixed section -->
	<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/mypageuser_1.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">MY ACTIVITY</h1>
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
								style="position: absolute; right: 500px;"></span> <span>COMMENT LIST</span> <span class="fontawesome-star star"></span>
						</h1>
					</div>
				</div>
			</div>
		</div>


	<!-- 댓글 없을 시 목록 출력-->
		<c:if test="${rcList.isEmpty() }">
		<section class="ftco-section ftco-animate">
		<div class="container">
				<div class="row">
				<div class="non-cmt">
					<h1> 아직 작성하신 댓글이 없네요! 🙄</h1><br>
					<h3><b>작성하러 가볼까요 ?</b></h3><br><br>
					<a href="reviewList.com"><button class="link-btn"><span>작성하러 가기</span></button></a>
					</div>
				</div>
			</div>
        </section>
		</c:if>
			
		<!-- 댓글 있을 시 목록 출력-->
			<c:if test="${rcList.size() > 0 }">
		<section class="ftco-section ftco-animate">
		<div class="container">
				<%-- <div class="row">
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
				</div> --%>
			 <c:forEach items="${rcList }" var="reviewComment"> 
				<div class="container">
						  <div class="card">
						    <div class="card-body">
						      <img src="https://lh3.googleusercontent.com/proxy/_VEhXIVMYLQVEzVLPvToZ1ai3Po0L6tyG86TZ-lqnwZuiAfUHK2N5ZFiNutCWOiN8WdL93BUHnk0ClbzSDKf1rhcmjCZwkUwglt9JXfIb6oxDDW-UBq_RXNTgQ" style="width:60px"class="float-left rounded-circle">
						     <c:url var="rcDetail" value="reviewDetail.com">
									<c:param name="reviewNo" value="${reviewComment.reviewNo }"></c:param>
							</c:url>
						      <div class="message">
						        <h5 class="card-title">${reviewComment.memberId }</h5>
						        <h6 class="card-subtitle mb-2 text-muted">${reviewComment.commentDate }</h6>
						        <p class="card-text">${reviewComment.commentContents }</p>
						      </div>
						      <div class="actions">
						        <a href="${rcDetail }" class="card-link">Click!</a>
						      </div>
						    </div>
						  </div>
						  
			  
			</div>
			</c:forEach>

</div>
			</div>
				   
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
						<li class="active" style="background-color: white;"><span>${p }</span></li>
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
        </section>
        </c:if>
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<script type="text/javascript">
//Design:  Chris Burton
//URL:     chrisburton.me
//JS by: https://github.com/vitorarjol

Vue.component('like', {
 template: "<div class='like-data'><button class='icon-rocknroll' v-class='active: liked' v-on='click: toggleLike'>&hearts;</button><span class='like-count' v-class='active: liked'>{{ likesCount }}</span></div>",
 data: function() {
     return {
         liked: false,
         likesCount: 0
     }
 },
 methods: {
     toggleLike: function() {
         this.liked = !this.liked;
         this.liked ? this.likesCount++ : this.likesCount--;
     }
 }
});
new Vue({
 el: '#app',
});
</script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>