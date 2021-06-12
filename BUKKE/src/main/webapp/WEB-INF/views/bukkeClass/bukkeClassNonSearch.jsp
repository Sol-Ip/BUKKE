<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=activity"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐, 새로운 나 ! - Bukke Class</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
</head>
<style>
.banner {
	background-color: #003cf2;
}

.banner * {
	color: white;
}

/* 검색결과 style*/
@font-face {
	font-family: 'EliceDigitalBaeum_Bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/EliceDigitalBaeum_Bold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.non-search-cmt {
	font-family: 'EliceDigitalBaeum_Bold';
}

.non-search {
	padding: 80px;
	margin: auto;
	justify-content: center;
}

.search-kwd {
	font-size: xxx-large;
	color: #0033c7;
	}
	/* 버튼 */
	
.link-btn {
  border: none;
  display: block;
  text-align: center;
  cursor: pointer;
  text-transform: uppercase;
  outline: none;
  overflow: hidden;
  position: relative;
  color: #fff;
  font-weight: 700;
  font-size: 15px;
  background-color: #222;
  padding: 17px 60px;
  margin: 0 auto;
  box-shadow: 0 5px 15px rgba(0,0,0,0.20);
}

.link-btn span {
	font-family: 'EliceDigitalBaeum_Bold';
	font-size: large;
  position: relative; 
  z-index: 1;
}

.link-btn:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 490%;
  width: 140%;
  background: #78c7d2;
  -webkit-transition: all .5s ease-in-out;
  transition: all .5s ease-in-out;
  -webkit-transform: translateX(-98%) translateY(-25%) rotate(45deg);
  transform: translateX(-98%) translateY(-25%) rotate(45deg);
}

.link-btn:hover:after {
  -webkit-transform: translateX(-9%) translateY(-25%) rotate(45deg);
  transform: translateX(-9%) translateY(-25%) rotate(45deg);
}

</style>
<body>
	<section class="banner hero-wrap hero-wrap-2">
		<div class="container">
			<div class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">Bukke Class</h1>
					<p class="mr-2">마음에 드는 클래스를 신청하세요</p>
				</div>
			</div>
		</div>
	</section>		
		
		<!-- ========================= 리스트 시작 =========================  -->
		
	<section class="ftco-section">
		
					

		<!-- ========================= 검색란 =========================  -->

		<div class="container ftco-animate">
			<div class="row justify-content-center">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">SEARCH</h2><br>
					<!-- 검색결과 <span id="act-count">0</span>건 -->
				</div>
			
				<form class="col-md-8 card card-lg" action="bukkeClassSearch.com" method="get">
					<div class="card-body row no-gutters align-items-center">
						<div class="col-auto">
							<i class="fas fa-search h4 text-body"></i>
						</div>
						<!--end of col-->
						<div class="col">
							<input class="form-control form-control-borderless"
								type="search" name="classKeyword" value="${classSearch.classKeyword }" placeholder="검색어를 입력해주세요">
						</div>
						<!--end of col-->
						<div class="col-auto">
							<button class="btn btn-lg btn-primary" type="submit">Search</button>
						</div>
						<!--end of col-->
					</div>
				</form>
			</div>
			
			
			
			
		</div>
			<!--end of col-->
	
		<!-- ========================= 검색란 END =========================  -->

	</section>

	<!-- ========================= 검색 없을 때 =========================  -->
	<section class="ftco-animate">
		<div class="container">
			<div class="row non-search">
				<h1 class="non-search-cmt">
					" <b class="search-kwd">${classSearch.classKeyword }</b>" 를
					검색한 결과가 없습니다 😥
				</h1>
			</div>

			<div class="list-button">
				<a href="bukkeClassList.com"><button class="link-btn"><span>목록으로 돌아가기</span></button></a>
			</div>

		</div>
	</section>
	<br><br><br><br>
	<!-- ========================= 검색 없을 때 END =========================  -->

<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>