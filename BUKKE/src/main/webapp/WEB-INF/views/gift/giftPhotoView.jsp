<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=gift"></jsp:include>
  <link rel="stylesheet" href="resources/css/gift/gift.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천하기</title>
</head>
<body>

	<!-- fixed section -->
	<!-- fixed section END-->
<div id="gradient">
	<section class="container">
			
			
			
			<br>
			<br>
			<br>
			<h1 align="center">사진에 관심이 있으시군요🤳</h1>
			<h2 align="center">관심있는 장르가 있으신가요?</h2>
			<br>
			<br>
			<div align="center">

				
				
						<c:url var="photo" value="giftList.com">
							<c:param name="classType" value="사진"></c:param>
                     		<c:param name="classTypedetails" value="사진"></c:param>
                  		</c:url>
							<h3>
								<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${photo }" class="btn btn-sm animated-button thar-one" style="font-size:30px; font-size:30px; font-family: 'NeoDunggeunmo';z-index:1000 ;">사진</a> </div>
							</h3>
						<c:url var="photo2" value="giftList.com">
							<c:param name="classType" value="사진"></c:param>
                     		<c:param name="classTypedetails" value="영상제작"></c:param>
                  		</c:url>
							<h3>
								<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${photo2 }" class="btn btn-sm animated-button thar-two" style="font-size:30px; border:solid 2px red;font-family: 'NeoDunggeunmo';z-index:1000 ;">영상제작</a> </div>
							</h3>	
						
						<c:url var="photo3" value="giftList.com">
							<c:param name="classType" value="사진"></c:param>
                     		<c:param name="classTypedetails" value="포토샵"></c:param>
                  		</c:url>
							<h3>
								<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${photo3 }" class="btn btn-sm animated-button thar-three" style="font-size:30px; border:solid 2px green; font-size:30px;;font-family: 'NeoDunggeunmo';z-index:1000 ;">포토샵</a> </div>
							</h3>
													
			
			<br>
			<br>
			<br>
			<br>
			
			
		</div>
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