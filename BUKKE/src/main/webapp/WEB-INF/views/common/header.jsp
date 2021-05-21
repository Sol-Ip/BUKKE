<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"> 
<link rel="stylesheet" href="resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="resources/css/animate.css">

<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">

<link rel="stylesheet" href="resources/css/aos.css">

<link rel="stylesheet" href="resources/css/ionicons.min.css">

<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/css/jquery.timepicker.css">


<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/icomoon.css">
<link rel="stylesheet" href="resources/css/style.css">


<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<header id="header">
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="home.com">BUKKE</a>

				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>

				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li id="home" class="nav-item"><a href="home.com" class="nav-link">home</a></li>
						<li id="introduce" class="nav-item"><a href="introduce.com" class="nav-link">소개</a></li>
						<li id="bclass" class="nav-item"><a href="bukkeClassList.com" class="nav-link">클래스</a></li>
						<li id="activity" class="nav-item"><a href="activityList.com" class="nav-link">액티비티</a></li>
						<li id="review" class="nav-item"><a href="reviewList.com" class="nav-link">후기</a></li>
						<li id="gift" class="nav-item"><a href="#" class="nav-link">선물하기</a></li>
						<li id="login" class="nav-item"><a href="memberLoginForm.com" class="nav-link">로그인</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
</body>
<script>
// common/header.jsp?active=home
// url으로 get방식을 따라해서 url을 설계하면 JSTL을 이용해서 받을 수 있다.
// param은 파라미터값으로 넘어온 데이터를, active는 데이터의 이름을 의미한다.
// ajax보다 백배는 간단!
	var activePage = "${param.active}";
	console.log(activePage + " 페이지 로드");
	switch(activePage) {
	case "home":
		$("#home").addClass("active");
		break;
	case "introduce":
		var a = $("#introduce");
		$("#introduce").addClass("active");
		break;
	case "bclass":
		$("#bclass").addClass("active");
		break;
	case "activity":
		$("#activity").addClass("active");
		break;
	case "review":
		$("#review").addClass("active");
		break;
	case "gift":
		$("#gift").addClass("active");
		break;
	case "login":
		$("#login").addClass("active");
		break;
	}
</script>
</html>
