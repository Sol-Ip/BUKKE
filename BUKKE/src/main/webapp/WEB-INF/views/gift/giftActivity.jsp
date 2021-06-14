<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=gift"></jsp:include>
  <link rel="stylesheet" href="resources/css/gift/gift.css">
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
<div id="gradient">
	<section class="container">
			
			
		
			<br>
			<br>
			<br>
			<h1 align="center">어떤 액티비티를 원하시나요?👀</h1>
			
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
					<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${outdoor }" class="btn btn-sm animated-button thar-one" style="border:solid 2px blue;font-size:30px;font-family: 'NeoDunggeunmo';">아웃도어</a> </div>
					<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${surfing }" class="btn btn-sm animated-button thar-one" style="border:solid 2px blue;font-size:30px;font-family: 'NeoDunggeunmo';">서핑</a> </div>
				</div>
				<br>
				<div>
					<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${flower3 }" class="btn btn-sm animated-button thar-one" style="border:solid 2px blue;font-size:30px;font-family: 'NeoDunggeunmo';">스포츠</a> </div>
					<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${flower3 }" class="btn btn-sm animated-button thar-one" style="border:solid 2px blue;font-size:30px;font-family: 'NeoDunggeunmo';">수상레저</a> </div>
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
			

	</section>
</div>
<script type="text/javascript">
	var colors = new Array(
			  [62,35,255],
			  [60,255,60],
			  [255,35,98],
			  [45,175,230],
			  [255,0,255],
			  [255,128,0]);

			var step = 0;
			//color table indices for: 
			// current color left
			// next color left
			// current color right
			// next color right
			var colorIndices = [0,1,2,3];

			//transition speed
			var gradientSpeed = 0.002;

			function updateGradient()
			{
			  
			  if ( $===undefined ) return;
			  
			var c0_0 = colors[colorIndices[0]];
			var c0_1 = colors[colorIndices[1]];
			var c1_0 = colors[colorIndices[2]];
			var c1_1 = colors[colorIndices[3]];

			var istep = 1 - step;
			var r1 = Math.round(istep * c0_0[0] + step * c0_1[0]);
			var g1 = Math.round(istep * c0_0[1] + step * c0_1[1]);
			var b1 = Math.round(istep * c0_0[2] + step * c0_1[2]);
			var color1 = "rgb("+r1+","+g1+","+b1+")";

			var r2 = Math.round(istep * c1_0[0] + step * c1_1[0]);
			var g2 = Math.round(istep * c1_0[1] + step * c1_1[1]);
			var b2 = Math.round(istep * c1_0[2] + step * c1_1[2]);
			var color2 = "rgb("+r2+","+g2+","+b2+")";

			 $('#gradient').css({
			   background: "-webkit-gradient(linear, left top, right top, from("+color1+"), to("+color2+"))"}).css({
			    background: "-moz-linear-gradient(left, "+color1+" 0%, "+color2+" 100%)"});
			  
			  step += gradientSpeed;
			  if ( step >= 1 )
			  {
			    step %= 1;
			    colorIndices[0] = colorIndices[1];
			    colorIndices[2] = colorIndices[3];
			    
			    //pick two new target color indices
			    //do not pick the same as the current one
			    colorIndices[1] = ( colorIndices[1] + Math.floor( 1 + Math.random() * (colors.length - 1))) % colors.length;
			    colorIndices[3] = ( colorIndices[3] + Math.floor( 1 + Math.random() * (colors.length - 1))) % colors.length;
			    
			  }
			}

			setInterval(updateGradient,10);
	</script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>