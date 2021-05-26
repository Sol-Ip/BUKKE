<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=review"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 상세</title>
</head>
<body>
	
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Details</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Review <i class="ion-ios-arrow-forward"></i></span> <span>DETAILS <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
	<!-- fixed section END-->
	<section class="ftco-section">
	<div class="container">

			<!-- <div class="container"> -->
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">REVIEW</small></span>
					<h2 class="mb-4">DETAILS</h2>
				</div>
			</div>
	
	<br style="clear:both">
	<h1 align="center">${review.reviewNo }번 글 상세보기</h1>
	<br><br>
	<table align="center" width="450" border="1">
		<tr>
			<td width="80">번호</td>
			<td>${review.reviewNo }</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${review.reviewTitle }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${review.memberId }</td>
		</tr>
		<tr>
			<td>작성날짜</td>
			<td>${review.reviewDate }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${review.reviewContents }</td>
			
		</tr>
			
		<td>첨부파일</td>
		<td><img src="resources/reviewFiles/${review.rRenameFilename }" style="width:300px; height:300px;"></td>
		
		<tr>
			<td colspan="2" align="center">
				<c:url var="rModify" value="reviewModifyView.com">
					<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
				</c:url>
				<c:url var="rDelete" value="reviewDelete.com">
					<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
					<c:param name="rRenameFilename" value="${review.rRenameFilename }"></c:param>
				</c:url>
				<a href="${rModify }">수정 페이지로 이동</a> &nbsp;
				<a href="${rDelete }">삭제하기</a>
			</td>
		</tr>							
	</table>
	<br><br>

	<!-- 댓글 등록 -->
	<table align="center" width="500" border="1" cellspacing="0">
		<tr>
			<td><textarea rows="3" cols="55" id="rContent"></textarea></td>
			<td>
				<button id="rSubmit">등록하기</button>
			</td>
			
		</tr>
	</table>

	<!-- 댓글 목록 -->
	<table align="center" width="500" border="1" cellspacing="0" id="rtb">
		<thead>
			<tr>
				<!-- 댓글 갯수 -->
				<td colspan="2"><b id="rCount"></b></td>
			</tr>
		</thead>
		<tbody></tbody>
	</table>
	</section>
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
					error:function(request,status,error){
				      //  alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
				       }
				}); 
			});
		});

		function getCommentList() {
			
			 var reviewNo = '${review.reviewNo }';
			
			$.ajax({
						url : "commentList.com",
						type : "get",
						data : {"reviewNo" : reviewNo},
						dataType : "json",
						success : function(data) {
							// db에 있는 데이터를 json형태로 가져와서
							// 댓글 목록 테이블의 tbody에 넣어주어야 함.
							//console.log(data);
							// tbody에 필요한 tr, td 태그를 만들면서
							// 데이터를 tbody에 꽂아줄 것임.
							var $tableBody = $("#rtb tbody");
							$tableBody.html(""); // 비워주기
							var $tr;
							var $rWriter;
							var $rContent;
							var $rCreateDate;
							var $btnArea;
							$("#rCount").text("댓글 (" + data.length + ")"); // 댓글 갯수 표시
							if (data.length > 0) {
								for ( var i in data) {
									$tr = $("<tr>");
									$rWriter = $("<td width='100'>").text(
											data[i].memberId);
									$rContent = $("<td>").text(
											data[i].commentContents);
									$rCreateDate = $("<td width='100'>").text(
											data[i].commentDate);
									$btnArea = $("<td>")
									.append(
											"<a href='#' onclick='modifyComment(this);'>수정 </a>")
									.append(
											"<a href='#' onclick='removeComment("
															+ reviewNo + ","
															+ data[i].commentNo
															+ ");'> 삭제</a>");
									$tr.append($rWriter);
									$tr.append($rContent);
									$tr.append($rCreateDate);
									$tr.append($btnArea);
									$tableBody.append($tr);
								
								}
							}
						},
						error:function(request,status,error){
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

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>