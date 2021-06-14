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
  <link rel="stylesheet" href="resources/css/gift/gift.css">
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
								class="ion-ios-arrow-forward"></i></a></span> <span>Gift-Class <i
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
			<h1 align="center">미술에 관심이 있으시군요!✨</h1>
						<h2 align="center">관심있는 장르가 있으신가요?</h2>
			<br>
			<div align="center">
<%-- 
				<c:url var="flower" value="">
				</c:url>
				<c:url var="art" value="">
				</c:url>
				<c:url var="handicraft" value="">
				</c:url>

				<c:url var="beauty" value="">
				</c:url>
				<c:url var="music" value="">
				</c:url>
				<c:url var="cook" value="">
				</c:url>

				<div>
					<a href="${flower }"><input class="btn btn-lg btn-primary" type="submit" value="플라워"></a> &nbsp;
					<a href="${art }"><input class="btn btn-lg btn-secondary" type="submit" value="미술"></a>&nbsp;
					<a href="${cook }"><input class="btn btn-lg btn-info" type="submit" value="요리"></a>
				</div>
				<br>
				<div>
					<a href="${handicraft }"><input class="btn btn-lg btn-success" type="submit" value="수공예"></a> &nbsp;
					<a href="${beauty }"><input class="btn btn-lg btn-danger" type="submit" value="뷰티"></a> &nbsp;
					<a href="${music }"><input class="btn btn-lg btn-warning" type="submit" value="음악"></a>
				</div>
					 --%>
						
			<c:url var="art" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="수채화"></c:param>
                  		</c:url>
							<h3>
									<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${art }" class="btn btn-sm animated-button thar-one" style="border:solid 2px red;font-size:30px;font-family: 'NeoDunggeunmo';">수채화</a> </div>
							</h3>
						<c:url var="art2" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="오일 파스텔"></c:param>
                  		</c:url>
							<h3>
									<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${art2}" class="btn btn-sm animated-button thar-one" style="border:solid 2px orange;font-size:30px;font-family: 'NeoDunggeunmo';">오일파스텔</a> </div>
							</h3>	
						<c:url var="art3" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="드로잉"></c:param>
                  		</c:url>
							<h3>
								<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${art3}" class="btn btn-sm animated-button thar-one" style="border:solid 2px yellow;font-size:30px;font-family: 'NeoDunggeunmo';">드로잉</a> </div>
							</h3>
						<c:url var="art4" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="동양화, 만화"></c:param>
                  		</c:url>
							<h3>
								<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${art2}" class="btn btn-sm animated-button thar-one" style="border:solid 2px green;font-size:30px;font-family: 'NeoDunggeunmo';">동양화,만화</a> </div>
							</h3>
						<c:url var="art5" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="캘리스라피, 서예"></c:param>
                  		</c:url>
							<h3>
								<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${art2}" class="btn btn-sm animated-button thar-one" style="border:solid 2px pink;font-size:30px;font-family: 'NeoDunggeunmo';">캘리그라피,서예</a> </div>
							</h3>
						<c:url var="art6" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="디지털 드로잉"></c:param>
                  		</c:url>
							<h3>
								<div class="col-md-3 col-sm-3 col-xs-6"> <a href="${art2}" class="btn btn-sm animated-button thar-one" style="border:solid 2px gray;font-size:30px;font-family: 'NeoDunggeunmo';">디지털드로잉</a> </div>
							</h3>							
			<%-- <br>
			<br>
			<br>
			<h1>미술에 관심이 있으시군요</h1>
			<h2>관심있는 장르가 있으신가요?</h2>
			<br>
			<br>
			<div align="center">

				
				
						<c:url var="art" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="수채화"></c:param>
                  		</c:url>
							<h3>
								<a href="${art }"><input class="btn btn-lg btn-primary" type="submit" value="수채화"></a>&nbsp;
							</h3>
						<c:url var="art2" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="오일 파스텔"></c:param>
                  		</c:url>
							<h3>
								<a href="${art2 }"><input class="btn btn-lg btn-primary" type="submit" value="오일 파스텔"></a>&nbsp;
							</h3>	
						<c:url var="art3" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="드로잉"></c:param>
                  		</c:url>
							<h3>
								<a href="${art3 }"><input class="btn btn-lg btn-primary" type="submit" value="드로잉"></a>&nbsp;
							</h3>
						<c:url var="art4" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="동양화, 만화"></c:param>
                  		</c:url>
							<h3>
								<a href="${art4 }"><input class="btn btn-lg btn-primary" type="submit" value="동양화, 만화"></a>&nbsp;
							</h3>
						<c:url var="art5" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="캘리스라피, 서예"></c:param>
                  		</c:url>
							<h3>
								<a href="${art5 }"><input class="btn btn-lg btn-primary" type="submit" value="캘리스라피, 서예"></a>&nbsp;
							</h3>
						<c:url var="art6" value="giftList.com">
							<c:param name="classType" value="미술"></c:param>
                     		<c:param name="classTypedetails" value="디지털 드로잉"></c:param>
                  		</c:url>
							<h3>
								<a href="${art6 }"><input class="btn btn-lg btn-primary" type="submit" value="디지털 드로잉"></a>&nbsp;
							</h3>							
			
			<br>
			<br>
			<br>
			<br> --%>
			
			
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