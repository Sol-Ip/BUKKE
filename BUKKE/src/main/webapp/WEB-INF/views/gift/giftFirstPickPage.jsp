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
	#clcl {
  background: #00b4ff;
  color: #333;
  font: 100% Arial, Sans Serif;
  height: 100%;
  margin: 0;
  padding: 0;
  overflow-x: hidden;
}

#clcl-wrap {
    bottom: 0;
  left: 0;
  padding-top: 50px;
  position: fixed;
  right: 0;
  top: 0;
  z-index: -1;
}

/* KEYFRAMES */

@-webkit-keyframes animateCloud {
    0% {
        margin-left: -1000px;
    }
    100% {
        margin-left: 100%;
    }
}

@-moz-keyframes animateCloud {
    0% {
        margin-left: -1000px;
    }
    100% {
        margin-left: 100%;
    }
}

@keyframes animateCloud {
    0% {
        margin-left: -1000px;
    }
    100% {
        margin-left: 100%;
    }
}

/* ANIMATIONS */

.x1 {
  -webkit-animation: animateCloud 35s linear infinite;
  -moz-animation: animateCloud 35s linear infinite;
  animation: animateCloud 35s linear infinite;
  
  -webkit-transform: scale(0.65);
  -moz-transform: scale(0.65);
  transform: scale(0.65);
}

.x2 {
  -webkit-animation: animateCloud 20s linear infinite;
  -moz-animation: animateCloud 20s linear infinite;
  animation: animateCloud 20s linear infinite;
  
  -webkit-transform: scale(0.3);
  -moz-transform: scale(0.3);
  transform: scale(0.3);
}

.x3 {
  -webkit-animation: animateCloud 30s linear infinite;
  -moz-animation: animateCloud 30s linear infinite;
  animation: animateCloud 30s linear infinite;
  
  -webkit-transform: scale(0.5);
  -moz-transform: scale(0.5);
  transform: scale(0.5);
}

.x4 {
  -webkit-animation: animateCloud 18s linear infinite;
  -moz-animation: animateCloud 18s linear infinite;
  animation: animateCloud 18s linear infinite;
  
  -webkit-transform: scale(0.4);
  -moz-transform: scale(0.4);
  transform: scale(0.4);
}

.x5 {
  -webkit-animation: animateCloud 25s linear infinite;
  -moz-animation: animateCloud 25s linear infinite;
  animation: animateCloud 25s linear infinite;
  
  -webkit-transform: scale(0.55);
  -moz-transform: scale(0.55);
  transform: scale(0.55);
}

/* OBJECTS */

.cloud {
  background: #fff;
  background: -moz-linear-gradient(top,  #fff 5%, #f1f1f1 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(5%,#fff), color-stop(100%,#f1f1f1));
  background: -webkit-linear-gradient(top,  #fff 5%,#f1f1f1 100%);
  background: -o-linear-gradient(top,  #fff 5%,#f1f1f1 100%);
  background: -ms-linear-gradient(top,  #fff 5%,#f1f1f1 100%);
  background: linear-gradient(top,  #fff 5%,#f1f1f1 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fff', endColorstr='#f1f1f1',GradientType=0 );
  
  -webkit-border-radius: 100px;
  -moz-border-radius: 100px;
  border-radius: 100px;
  
  -webkit-box-shadow: 0 8px 5px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 8px 5px rgba(0, 0, 0, 0.1);
  box-shadow: 0 8px 5px rgba(0, 0, 0, 0.1);

  height: 120px;
  position: relative;
  width: 350px;
}

.cloud:after, .cloud:before {
    background: #fff;
  content: '';
  position: absolute;
  z-indeX: -1;
}

.cloud:after {
  -webkit-border-radius: 100px;
  -moz-border-radius: 100px;
  border-radius: 100px;

  height: 100px;
  left: 50px;
  top: -50px;
  width: 100px;
}

.cloud:before {
  -webkit-border-radius: 200px;
  -moz-border-radius: 200px;
  border-radius: 200px;

  width: 180px;
  height: 180px;
  right: 50px;
  top: -90px;
}

@font-face {
     font-family: 'DungGeunMo';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
#fon1{
    font-family: 'DungGeunMo';
    font-size: 60px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp">
	<jsp:param name="active" value="gift" />
</jsp:include>


			
			<section>
			<div id="clcl">
<div id="background-wrap">

    <div class="x2">
        <div class="cloud"></div>
    </div>

    <div class="x1">
        <div class="cloud"></div>
    </div>

    <div class="x3">
        <div class="cloud"></div>
    </div>

			<br>
			<br>
			<div align="center">
			<div id="fon1" style="font: bold;">
			<h1>취미를 고민하고 계신가요?</h1>
			<h1>알맞은 취미를 추천해드려요😎</h1>
			</div>
			<br><br>
    		<div id="fon1">
			<h2>클릭 몇번으로 취미를 발견!</h2>
			<h2>버튼을 누르시면 해당 영역으로 이동합니다</h2>
			</div>
			<br><br>
			</div>
			<div align="center">
				<c:url var="bukkeClass" value="giftBukkeClass.com">
					
				</c:url>
		
				<c:url var="activity" value="giftActivity.com">
					
				</c:url>
				<a href="${bukkeClass }"><input class="btn btn-lg btn-danger" type="submit" value="클래스"></a> &nbsp;&nbsp;
				<a href="${activity }"><input class="btn btn-lg btn-primary r" type="submit" value="액티비티"></a>
			</div>
			<br>
			<br>
			<br>
			<br>
			<div class="x3">
        <div class="cloud"></div>
    		</div>
    <div class="x4">
        <div class="cloud"></div>
    </div>

    <div class="x5">
        <div class="cloud"></div>
    </div>
</div>
<br>
		</div>
		</section>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>