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
<div id="gradient">
			<div class="container"> 
			  <!-- Example row of columns -->
			
						
						<br>
						<br>
						<br>
						<h1 align="center">스포츠에 관심이 있으시군요!🌹</h1>
						<h2 align="center">어떤 장르를 좋아하세요?</h2>
						<br>
						<div align="center">
					
								 <c:url var="sports" value="giftListForAct.com">
										<c:param name="activityType" value="스포츠"></c:param>
			                     		<c:param name="activityTypeDetails" value="익스트림 스포츠"></c:param>
			                  		</c:url>
										<h3>
											<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${sports }" class="btn btn-sm animated-button thar-one" style="font-size:30px;font-family: 'NeoDunggeunmo';z-index: 100;">익스트림 스포츠</a> </div>
										</h3>
									<c:url var="sports2" value="giftListForAct.com">
										<c:param name="activityType" value="스포츠"></c:param>
			                     		<c:param name="activityTypeDetails" value="구기 스포츠"></c:param>
			                  		</c:url>
										<h3>
											<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${sports2 }" class="btn btn-sm animated-button thar-two" style="border:solid 2px red;font-size:30px;font-family: 'NeoDunggeunmo';z-index: 100;">구기 스포츠</a> </div>
										</h3>	
									<c:url var="sports3" value="giftListForAct.com">
										<c:param name="activityType" value="스포츠"></c:param>
			                     		<c:param name="activityTypeDetails" value="라켓 스포츠"></c:param>
			                  		</c:url>
										<h3>
											<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${sports3 }" class="btn btn-sm animated-button thar-two" style="border:solid 2px red;font-size:30px;font-family: 'NeoDunggeunmo';z-index: 100;">라켓 스포츠</a> </div>
										</h3>
						</div>
										
						<br>
						<br>
						<br>
						<br>
			</div>
								<!-- 버튼 -->
		</div>
	<!-- fixed section END-->
			
		<%-- 	<br>
			<br>
			<br>
			<h1>꽃에 관심이 있으시군요</h1>
			<h2>관심있는 장르가 있으신가요?</h2>
			<br>
			<br>
			<div align="center">

				
				
						<c:url var="flower" value="giftList.com">
							<c:param name="classType" value="플라워"></c:param>
                     		<c:param name="classTypedetails" value="가드닝"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower }"><input class="btn btn-lg btn-primary" type="submit" style="font-size:30px;font-family: 'NeoDunggeunmo' value="가드닝"></a>&nbsp;
							</h3>
						<c:url var="flower2" value="giftList.com">
							<c:param name="classType" value="플라워"></c:param>
                     		<c:param name="classTypedetails" value="꽃 바구니"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower2 }"><input class="btn btn-lg btn-primary" type="submit" style="font-size:30px;font-family: 'NeoDunggeunmo' value="꽃 바구니"></a>&nbsp;
							</h3>	
						<c:url var="flower3" value="giftList.com">
							<c:param name="classType" value="플라워"></c:param>
                     		<c:param name="classTypedetails" value="꽃다발 및 부케"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower3 }"><input class="btn btn-lg btn-primary" type="submit"style="font-size:30px;font-family: 'NeoDunggeunmo' value="꽃다발 및 부케"></a>&nbsp;
							</h3>
						<c:url var="flower4" value="giftList.com">
							<c:param name="classType" value="플라워"></c:param>
                     		<c:param name="classTypedetails" value="플라워리스, 테이블리스"></c:param>
                  		</c:url>
							<h3>
								<a href="${flower4 }"><input class="btn btn-lg btn-primary" type="submit" value="플라워리스, 테이블리스"></a>&nbsp;
							</h3>			
			
			<br>
			<br>
			<br>
			<br>
			 --%>
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