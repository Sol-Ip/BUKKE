<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐 - 선물하기</title>
<style>
	.hero-wrap {
		content: '';
		background-image: url('/resources/images/bg-gift-center.png');
		z-index: 1;
	}
	.banner {
		background-color: rgb(255, 81, 114);
	}
	/*Lets start with the cloud formation rather*/

/*The container will also serve as the SKY*/

*{ margin: 0; padding: 0;}

body {
  /*To hide the horizontal scroller appearing during the animation*/
  overflow: hidden;
}

#clouds{
  padding: 100px;
  background: #c9dbe9;
  background: -webkit-linear-gradient(top, #c9dbe9 0%, #fff 100%);
  background: -linear-gradient(top, #c9dbe9 0%, #fff 100%);
  background: -moz-linear-gradient(top, #c9dbe9 0%, #fff 100%);
  height: 200px;
}

/*Time to finalise the cloud shape*/
.cloud {
  width: 200px; height: 70px;
  background: #fff;
  
  border-radius: 200px;
  -moz-border-radius: 200px;
  -webkit-border-radius: 200px;
  
  position: relative; 
}

.cloud:before, .cloud:after {
  content: '';
  position: absolute; 
  background: #fff;
  width: 100px; height: 80px;
  position: absolute; top: -15px; left: 10px;
  
  border-radius: 100px;
  -moz-border-radius: 100px;
  -webkit-border-radius: 100px;
  
  -webkit-transform: rotate(30deg);
  transform: rotate(30deg);
  -moz-transform: rotate(30deg);
}

.cloud:after {
  width: 120px; height: 120px;
  top: -55px; left: auto; right: 15px;
}

/*Time to animate*/
.x1 {
  -webkit-animation: moveclouds 15s linear infinite;
  -moz-animation: moveclouds 15s linear infinite;
  -o-animation: moveclouds 15s linear infinite;
}

/*variable speed, opacity, and position of clouds for realistic effect*/
.x2 {
  left: 200px;
  
  -webkit-transform: scale(0.6);
  -moz-transform: scale(0.6);
  transform: scale(0.6);
  opacity: 0.6; /*opacity proportional to the size*/
  
  /*Speed will also be proportional to the size and opacity*/
  /*More the speed. Less the time in 's' = seconds*/
  -webkit-animation: moveclouds 25s linear infinite;
  -moz-animation: moveclouds 25s linear infinite;
  -o-animation: moveclouds 25s linear infinite;
}

.x3 {
  left: -250px; top: -200px;
  
  -webkit-transform: scale(0.8);
  -moz-transform: scale(0.8);
  transform: scale(0.8);
  opacity: 0.8; /*opacity proportional to the size*/
  
  -webkit-animation: moveclouds 20s linear infinite;
  -moz-animation: moveclouds 20s linear infinite;
  -o-animation: moveclouds 20s linear infinite;
}

.x4 {
  left: 470px; top: -250px;
  
  -webkit-transform: scale(0.75);
  -moz-transform: scale(0.75);
  transform: scale(0.75);
  opacity: 0.75; /*opacity proportional to the size*/
  
  -webkit-animation: moveclouds 18s linear infinite;
  -moz-animation: moveclouds 18s linear infinite;
  -o-animation: moveclouds 18s linear infinite;
}

.x5 {
  left: -150px; top: -150px;
  
  -webkit-transform: scale(0.8);
  -moz-transform: scale(0.8);
  transform: scale(0.8);
  opacity: 0.8; /*opacity proportional to the size*/
  
  -webkit-animation: moveclouds 20s linear infinite;
  -moz-animation: moveclouds 20s linear infinite;
  -o-animation: moveclouds 20s linear infinite;
}

@-webkit-keyframes moveclouds {
  0% {margin-left: 1000px;}
  100% {margin-left: -1000px;}
}
@-moz-keyframes moveclouds {
  0% {margin-left: 1000px;}
  100% {margin-left: -1000px;}
}
@-o-keyframes moveclouds {
  0% {margin-left: 1000px;}
  100% {margin-left: -1000px;}
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="active" value="gift" />
</jsp:include>

<section class="banner hero-wrap hero-wrap-2">
	<div class="container">
		<div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-2 bread">gift</h1>
			</div>
		</div>
	</div>
</section>
	
	<section>
		<%-- <div class="container ftco-animate" align="center">
			<br>
			<br>
			<br>
			<h1>선물을 고민하고 계신가요?</h1>
			<h1>알맞은 선물을 추천해드려요</h1>
			<br>
			<br>
			<h2>클릭 몇번으로 선물을 추천드려요</h2>
			<h2>버튼을 누르시면 해당 영역으로 이동합니다</h2>
			<br>
			<br>
			<div align="center">
				<c:url var="bukkeClass" value="giftBukkeClass.com">
					
				</c:url>
		
				<c:url var="activity" value="giftActivity.com">
					
				</c:url>
				<a href="${bukkeClass }"><input class="btn btn-lg btn-danger" type="submit" value="선물하기"></a> &nbsp;&nbsp;
				<a href="${activity }"><input class="btn btn-lg btn-primary r" type="submit" value="액티비티"></a>
			</div>
			<br>
			<br>
			<br>
			<br>

		</div> --%>
		<!--
So we will have an animated background with 5 clouds moving across the screen.
Steps: 
1. create the clouds
2. Animate them to move across the screen
3. Stylize the clouds(can be done as step #2 also)
-->
<div id="clouds" style="height: 1000px;">
  <div class="cloud x1"></div>
  <!-- Time for multiple clouds to dance around -->
  <div class="cloud x2"></div>
  <div class="cloud x3"></div>
  <div class="cloud x4"></div>
  <div class="cloud x5"></div>
  <div align="center">
  <h1>선물을 고민하고 계신가요?</h1>
			<h1>알맞은 선물을 추천해드려요</h1>
			<br>
			<br>
			<h2>클릭 몇번으로 선물을 추천드려요</h2>
			<h2>버튼을 누르시면 해당 영역으로 이동합니다</h2>
			<br>
			<br>
	</div>
			<div align="center">
				<c:url var="bukkeClass" value="giftBukkeClass.com">
					
				</c:url>
		
				<c:url var="activity" value="giftActivity.com">
					
				</c:url>
				<a href="${bukkeClass }"><input class="btn btn-lg btn-danger" type="submit" value="선물하기"></a> &nbsp;&nbsp;
				<a href="${activity }"><input class="btn btn-lg btn-primary r" type="submit" value="액티비티"></a>
		</div>
<!-- Thats the markup! -->
<!-- That looks cool. We are done!! -->



<!--  Disregard --><a style="position: fixed; bottom: 10px; right: 10px;color:#CCC" href="https://plus.google.com/111052275277622928148?rel=me">Google+</a>
	</section>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>