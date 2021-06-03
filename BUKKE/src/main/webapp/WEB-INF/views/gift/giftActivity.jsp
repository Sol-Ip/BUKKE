<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=gift"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선물하기</title>
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
					<h1 class="mb-2 bread">Gift</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Gift-Activity <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->
	<section class="container">
		<div class="container ftco-animate" align="center">
			
			
		
			<br>
			<br>
			<br>
			<h1>어떤 액티비티를 원하시나요?</h1>
			
			<br>
			<br>
			<div align="center">

				<c:url var="outdoor" value="">
				</c:url>
				<c:url var="surfing" value="">
				</c:url>
				<c:url var="sports" value="">
				</c:url>
				<c:url var="waterSports" value="">
				</c:url>
				<div>
					<a href="${outdoor }"><input class="btn btn-lg btn-primary" type="submit" value="아웃도어"></a> &nbsp;
					<a href="${surfing }"><input class="btn btn-lg btn-secondary" type="submit" value="서핑"></a>&nbsp;
				</div>
				<br>
				<div>
					<a href="${sports }"><input class="btn btn-lg btn-success" type="submit" value="스포츠"></a> &nbsp;
					<a href="${waterSports }"><input class="btn btn-lg btn-danger" type="submit" value="수상 레저"></a> &nbsp;	
				</div>
				<button id="typeButton" class="" name="">아웃도어</button>


				<table class="form-control-borderless" align="center" border="1" cellspacing="0" id="rtb">
					<tbody class="form-control-borderless"></tbody>
				</table>
				<script>
					$('#typeButton').on("click",function(){
						console.log("버튼이눌리긴할까");
						
				
						var $tableBody = $("#rtb tbody");
						$tableBody.html(""); // 비워주기
						var $tr;
						var $btnArea1;
						var $btnArea2;	
						$tr = $("<tr>");				
						$btnArea1 = $("<td>")
							.append("<a href='#' onclick=''>등산 및 트래킹  </a>")
						$btnArea2 = $("<td>")
							.append("<a href='#' onclick=''>낚시 </a>")
										
						$tr.append($btnArea1);
						$tr.append($btnArea2);
						$tableBody.append($tr);
						
						
					});
					
					

					/* $(document).ready(function() {
						var sportsType = ${heart};
						var heartYN = "${heartYN}";
						console.log(heartYN);
						console.log('${reviewLikes.memberId}');
						console.log('${loginMember.memberId}');
						if (heartYN == "Y") {$("#heart").prop("class", "btn btn-danger fas fa-heart");
											//$("#heart").prop('name',heartval)
						} else {
						$("#heart").prop("class","btn btn-danger far fa-heart");
											//$("#heart").prop('name',heartval)
						}

						$("#heart").on("click",function() {
							console.log("여기까진잘나옴");
							var heartSpan = $("#hearCnt");
							var sendData = {
									'reviewNo' : '${review.reviewNo}',
									'likeCheck' : heartYN,
									'memberId' : '${loginMember.memberId}'
									};
						$.ajax({url : "heart.com",
								type : "post",
								data : sendData,
								dataType : "json",
								success : function(data) {
									if (heartYN == 'Y') {
										$('#heart').prop("class", "btn btn-danger far fa-heart");
									} else {
										$('#heart').prop("class", "btn btn-danger fas fa-heart");
									}
									heartYN = data.heartYN;
									heartSpan.text(data.likeCount);
								}
								});
						});
					}); */
				</script>
				
				
				
			</div>
			<br>
			<br>
			<br>
			<br>
			

		</div>
	</section>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>