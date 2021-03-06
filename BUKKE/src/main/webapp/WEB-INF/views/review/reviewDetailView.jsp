<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=review"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 상세</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link rel="stylesheet" href="../resources/css/review/review.css">
<style type="text/css">
.banner {
	/* background-color: rgb(68, 201, 244); */
	background-color: #d1b3c4;
}

.banner * {
	color: white;
}
	.textbox1{
		background-color: #555f77;
    border: none;
    border-radius: 4px;
    box-shadow: 0 1px 1px rgb(0 0 0 / 15%);
    color: #fff;
    cursor: pointer;
    display: block;
    margin-left: auto;
    outline: none;
    padding: 6px 15px;
    -webkit-transition: 350ms box-shadow;
    -moz-transition: 350ms box-shadow;
    -ms-transition: 350ms box-shadow;
    -o-transition: 350ms box-shadow;
    transition: 350ms box-shadow;
    position: relative;
    right: 60px;
	}
	
	.review-content {
		padding:30px;
	}
	.row review-info {
	justify-content: flex-end;
	}
	.img-fluid {
	    width: -webkit-fill-available;
	}
</style>
</head>
<body>

	

	<!-- fixed section -->
	<!-- <section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">Details</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Review <i
							class="ion-ios-arrow-forward"></i></span> <span>DETAILS <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section> -->
	<section class="banner hero-wrap hero-wrap-2">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">Review</h1>
					<p class="mr-2">부캐들이 남긴 활동 후기</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->


	<section class="ftco-section">
	<div class="container">
	<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">REVIEW</small></span>
					<h2 class="mb-4">${review.reviewTitle }</h2>
					&nbsp;
				</div>
				<div class="col-lg-2"></div>
			</div>
			</div>
			</section>

		<div class="container">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<div class="row review-info" style="justify-content: flex-end;">
						<!-- <div class="heading-section ftco-animate"> -->
						<h1 align="right">
							<i class="fas fa-quote-left text-success"></i>&nbsp;${review.reviewTitle }&nbsp;<i
								class="fas fa-quote-right text-success"></i> <br>
							<div class="row">
								<h4 class="col-sm">
									<i class="fas fa-user-circle text-primary"></i>&nbsp;<b>부캐명
										: </b>&nbsp;&nbsp;${review.memberId }&nbsp;&nbsp;
								</h4>
								<h4>
									<i class="far fa-calendar-alt text-warning"></i>&nbsp;<b>작성날짜
										: </b>&nbsp;${review.reviewDate }
								</h4>
							</div>
						</h1>
					</div>
				</div>
			</div>
			<div class="col-lg-2"></div>
		</div>

		<!-- -->
		<div class="container">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8"  style="background-color:#f2f2f2;">
					<div class="review-content">
					<h3>${review.reviewTitle }</h3><hr>
					<div class="review-content contents">
					<img src="../resources/reviewFiles/${review.rRenameFilename }"
						alt="class photo" class="img-fluid block-40">
						<br>
					 <div style="padding: inherit;"><h5>${review.reviewContents }</h5></div>
					 </div>
					<br>
				</div>
				<div class="col-lg-2"></div>
			</div>
		</div>
		</div>
		<br><br>
		<div class="container">
		<c:if test="${!empty loginMember}">
			<h3 class="act-type" align="center">
<%-- 				<b>좋아요 </b>&nbsp;&nbsp;<span id="hearCnt">${review.reviewLikeCnt }</span>&nbsp;&nbsp; --%>
				<span id="hearCnt">${review.reviewLikeCnt }</span><b>명이 이 글을 좋아합니다.</b><br><br>
				<button id="heart" class="" name=""></button>
				<script>
					$(document).ready(function() {
						var heartYN = "${heartYN}";
						if (heartYN == "Y") {
							$("#heart")
									.prop("class",
											"btn btn-danger btn-lg fas fa-heart");
							//$("#heart").prop('name',heartval)
						} else {
							$("#heart")
									.prop("class",
											"btn btn-danger btn-lg far fa-heart");
							//$("#heart").prop('name',heartval)
						}
						$("#heart").on("click", function() {
							var heartSpan = $("#hearCnt");
							var sendData = {
								'reviewNo' : '${review.reviewNo}',
								'likeCheck' : heartYN,
								'memberId' : '${loginMember.memberId}'
							};
							$.ajax({
								url : "heart.com",
								type : "post",
								data : sendData,
								dataType : "json",
								success : function(
										data) {
									if (heartYN == 'Y') {
										$(
												'#heart')
												.prop(
														"class",
														"btn btn-danger btn-lg far fa-heart");
									} else {
										$(
												'#heart')
												.prop(
														"class",
														"btn btn-danger btn-lg fas fa-heart");
									}
									heartYN = data.heartYN;
									heartSpan
											.text(data.likeCount);
								}
							});
						});
					});
				</script>
			
			
			</h3>
				<c:if test="${loginMember.memberId eq review.memberId }">
					<!-- 사업자에게만 버튼 보이게 하기 -->
					<div align="right">
						<c:url var="rModify" value="reviewModifyView.com">
							<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
						</c:url>
						<!-- renameFilename 은 실제 저장된 파일 이름  -->
						<c:url var="rDelete" value="reviewDelete.com">
							<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
							<c:param name="rRenameFilename"
								value="${review.rRenameFilename }"></c:param>
						</c:url>
						<a href="${rModify }"><input class="btn btn-lg btn-warning"
							type="submit" value="수정"></a> <a href="${rDelete }"><input
							class="btn btn-lg btn-danger" type="submit" value="삭제"></a>
					</div>
				</c:if>
			</c:if>
		</div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 heading-section ftco-animate">
					<span class="subheading subheading-with-line"></span>
					<!-- <div class="row">
						<i class="far fa-comments fa-2x text-info"></i>&nbsp;&nbsp;
						<h2 class="mb-4">Comments</h2>&nbsp;
						
					</div> -->
						<c:if test="${empty loginMember && empty loginShopper}">
						<h2 align="center">로그인 후 댓글입력해주세요</h2>
						</c:if>	
				</div>
			</div>
			<!-- 댓글 등록 -->
			<!-- <table class="col-md-12 card card-lg" align="center" border="1"
				cellspacing="0">
				<tr>
					<div class="form-group">
						<input type="text"
							class="form-control" id="rContent" placeholder="댓글을 입력하세요.">
						<button class="btn float-right btn-lg btn-primary " id="rSubmit">등록하기</button>
					</div>
				</tr>
				
			</table> -->
			<!-- 댓글 등록2 -->
			
			<br><br>
			<c:if test="${!empty loginMember || !empty loginShopper}">
			 <div class="comment-form">
				<div class="form" name="form">
					<div class="form-row">
						<textarea class="input"
							placeholder="댓글을 등록해 주세요" id="rContent" required style="position: relative;right: 60px;"></textarea>
					</div>
					<div class="form-row">
						<button type="button" id="rSubmit" class="textbox1">댓글 등록</button>
					</div>
				</div>
			</div>
			</c:if>
			<section>
			<h3 class="mb-5 h4 font-weight-bold" id="comment1"></h3>
			 <table id="commentGo">
				<tbody></tbody>
			</table>
			</section>
			<!-- 댓글 갯수 -->
			
			
		</div>
		<script>
			$(function() {
				getCommentList();
				$("#rSubmit").on("click", function() {
					var reviewNo = '${review.reviewNo }';
					var rContent = $("#rContent").val();
					$.ajax({
						url : "addComment.com",
						type : "post",
						data : {
							"reviewNo" : reviewNo,
							"commentContents" : rContent
						},
						success : function(data) {
							if (data == "success") {
								// 댓글 불러오기
								getCommentList();
								console.log("성공");
								// 작성 후 내용 초기화
								$("#rContent").val("");
							} else {
								alert("댓글 등록 실패..");
							}
						},
						error : function(request, status, error) {
							//  alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
						}
					});
				});
			});

			  function getCommentList() {

				var reviewNo = '${review.reviewNo }';

				$
						.ajax({
							url : "commentList.com",
							type : "get",
							data : {
								"reviewNo" : reviewNo
							},
							dataType : "json",
							success : function(data) {
								// db에 있는 데이터를 json형태로 가져와서
								// 댓글 목록 테이블의 tbody에 넣어주어야 함.
								//console.log(data);
								// tbody에 필요한 tr, td 태그를 만들면서
								// 데이터를 tbody에 꽂아줄 것임.
								var $tableBody = $("#commentGo");
								$tableBody.html(""); // 비워주기
								var comments ="";
								$("#comment1").text("COMMENT (" + data.length + ")"); // 댓글 갯수 표시
								if (data.length > 0) {
									for ( var i in data) {
											comments +='<div class="pt-3 mt-3">';
											comments +='<ul class="comment-list" id="commentGo">';
											comments +='<li class="comment">';
											comments +='<div class="vcard bio">';
											comments +='<img src="resources/images/review/sms.png">';
											comments +='</div>';
											comments +='<div class="comment-body">';
											comments +='<h3>'+data[i].memberId;
											comments +='</h3>';
											comments +='<div class="meta mb-2">'+data[i].commentDate+'</div>';
											comments +='<p>'+data[i].commentContents+'</p>';
											comments +='<p><a href="#" >delete</a></p>';
											comments +='</div>';
											comments +='</li>';
											comments +='</ul>';
											comments +='</div>';	
									}
									$("#commentGo").html(comments);
								} else {

								}
							},
							error : function(request, status, error) {
								// alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
							}
						});
			} 
			 
			function modifyComment(obj) {
				$trModify = $("<tr>");
				$trModify
						.append("<td colspan='3'><input type='text' size='50'></td>");
				$trModify
						.append("<td><button onclick='modifyCommentCommit()'>수정완료</button></td>");
				$(obj).parent().parent().after($trModify);
			}
			function modifyCommentCommit() {

			}
			function removeComment(reviewNo, commentNo) {
				// /deleteComment.com?refReviewNo="+reviewNo+"&commentNo="+data[i].commentNo+"
				$.ajax({
					url : "deleteComment.com",
					type : "get",
					data : {
						"reviewNo" : reviewNo,
						"commentNo" : commentNo
					},
					success : function(data) {
						if (data == "success") {
							getCommentList();
						} else {
							alert("댓글 조회 실패!");
						}
					},
					error : function() {

					}
				});
			}
		</script>
	</section>

</body>
<jsp:include page="../common/footer.jsp"></jsp:include>
</html>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>