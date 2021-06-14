<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png"  href="resources/images/bukke_favi3.png"/>

<title>취미생활 플랫폼, 부캐</title>
<jsp:include page="./common/header.jsp">
	<jsp:param name="active" value="home" />
</jsp:include>
</head>
<link rel="stylesheet" href="../resources/css/home/home.css">

<body>
	<section class="home-slider js-fullheight owl-carousel bg-white">
		<div class="slider-item js-fullheight">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row d-md-flex no-gutters slider-text js-fullheight align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="one-third order-md-last img js-fullheight"
						style="background-image: url(resources/images/index1.jpg);">
						<!-- <h3 class="vr">Architecture Firm</h3> -->
					</div>
					<div
						class="one-forth d-flex js-fullheight align-items-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<div class="text">
							<h1 class="mb-4" id="index-text1">
								일상에 지친<br>하루의 끝에,
							</h1>
							<h4 class="index-text3">아주 평화롭지만<br>
							어떤 놀이동산보다 <br>
							신나고 재미있는 곳.<br>
							마음만 먹으면 순간이동하듯 <br>
							갈 수 있는 언제나 열려있는 곳.</h4>
							<p>
								<a href="memberRegisterForm.com" class="btn btn-primary px-4 py-3 mt-3">
										부캐릭터 만들기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="slider-item js-fullheight">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row d-flex no-gutters slider-text js-fullheight align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="one-third order-md-last img js-fullheight"
						style="background-image: url(resources/images/index2.jpg);">
						<!-- <h3 class="vr">Since - 2018</h3> -->
					</div>
					<div
						class="one-forth d-flex js-fullheight align-items-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<div class="text">
							<h1 class="mb-4" id="index-text1">즐거운 도전을<br>하고싶을 때!</h1>
							<h4 class="index-text3">내가 몰랐던 나의 능력을 <br>
							무한대로 탐험할 수 있는 곳. <br>
							즐거운 취미 여행을 <br>
							멈출 수 없는, <br>
							여기는 부캐입니다.</h4>
							<p>
								<a href="memberRegisterForm.com" class="btn btn-primary px-4 py-3 mt-3">
										부캐릭터 만들기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 유튜브 비디오 부분 -->
	<!-- <section class="ftco-section ftc-no-pb">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-5">
				<div class="col-md-4 heading-section ftco-animate">
					<h2 class="mb-4">부캐 소개영상</h2>
				</div>
				<div class="col-md-8 pl-md-5 ftco-animate">
					<div class="pl-md-4 border-line">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in.</p>
					</div>
				</div>
			</div>
			<div class="video-background">
				<div class="video-background">
					<div id="muteYouTubeVideoPlayer"
						style="width: 100%; height: 500px;"></div>
				</div>
			</div>

			<div class="video-film"></div>
		</div>
	</section> -->
	
	<!-- BUKKE 이용방법 -->			
	<section class="ftco-services" id="intro-section">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-5" id="howto">
			<div class="col-md-2"></div>
				<div class="col-md-3 heading-section ftco-animate">
					<h4 class="mb-4" id="index-text5">본래 일상을 떠나,</h4>
					<h4 class="mb-4" id="index-text5" style="color:#1552dd; float:left;">부캐</h4>
					<h4 class="mb-4" id="index-text5">를 찾아갈 때!</h4>
				</div>
				<div class="col-md-5 pl-md-5 ftco-animate">
					<div class="pl-md-4 border-line">
						<div class="wrapper intro-btn">
							<a class="cta" href="introduce.com"> <span class="intro">부캐 이용방법</span> 
							<span class="intro"> <svg width="66px" height="43px" viewBox="0 0 66 43" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
        <g id="arrow" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
          <path class="one" d="M40.1543933,3.89485454 L43.9763149,0.139296592 C44.1708311,-0.0518420739 44.4826329,-0.0518571125 44.6771675,0.139262789 L65.6916134,20.7848311 C66.0855801,21.1718824 66.0911863,21.8050225 65.704135,22.1989893 C65.7000188,22.2031791 65.6958657,22.2073326 65.6916762,22.2114492 L44.677098,42.8607841 C44.4825957,43.0519059 44.1708242,43.0519358 43.9762853,42.8608513 L40.1545186,39.1069479 C39.9575152,38.9134427 39.9546793,38.5968729 40.1481845,38.3998695 C40.1502893,38.3977268 40.1524132,38.395603 40.1545562,38.3934985 L56.9937789,21.8567812 C57.1908028,21.6632968 57.193672,21.3467273 57.0001876,21.1497035 C56.9980647,21.1475418 56.9959223,21.1453995 56.9937605,21.1432767 L40.1545208,4.60825197 C39.9574869,4.41477773 39.9546013,4.09820839 40.1480756,3.90117456 C40.1501626,3.89904911 40.1522686,3.89694235 40.1543933,3.89485454 Z" fill="#FFFFFF"></path>
          <path class="two" d="M20.1543933,3.89485454 L23.9763149,0.139296592 C24.1708311,-0.0518420739 24.4826329,-0.0518571125 24.6771675,0.139262789 L45.6916134,20.7848311 C46.0855801,21.1718824 46.0911863,21.8050225 45.704135,22.1989893 C45.7000188,22.2031791 45.6958657,22.2073326 45.6916762,22.2114492 L24.677098,42.8607841 C24.4825957,43.0519059 24.1708242,43.0519358 23.9762853,42.8608513 L20.1545186,39.1069479 C19.9575152,38.9134427 19.9546793,38.5968729 20.1481845,38.3998695 C20.1502893,38.3977268 20.1524132,38.395603 20.1545562,38.3934985 L36.9937789,21.8567812 C37.1908028,21.6632968 37.193672,21.3467273 37.0001876,21.1497035 C36.9980647,21.1475418 36.9959223,21.1453995 36.9937605,21.1432767 L20.1545208,4.60825197 C19.9574869,4.41477773 19.9546013,4.09820839 20.1480756,3.90117456 C20.1501626,3.89904911 20.1522686,3.89694235 20.1543933,3.89485454 Z" fill="#FFFFFF"></path>
          <path class="three" d="M0.154393339,3.89485454 L3.97631488,0.139296592 C4.17083111,-0.0518420739 4.48263286,-0.0518571125 4.67716753,0.139262789 L25.6916134,20.7848311 C26.0855801,21.1718824 26.0911863,21.8050225 25.704135,22.1989893 C25.7000188,22.2031791 25.6958657,22.2073326 25.6916762,22.2114492 L4.67709797,42.8607841 C4.48259567,43.0519059 4.17082418,43.0519358 3.97628526,42.8608513 L0.154518591,39.1069479 C-0.0424848215,38.9134427 -0.0453206733,38.5968729 0.148184538,38.3998695 C0.150289256,38.3977268 0.152413239,38.395603 0.154556228,38.3934985 L16.9937789,21.8567812 C17.1908028,21.6632968 17.193672,21.3467273 17.0001876,21.1497035 C16.9980647,21.1475418 16.9959223,21.1453995 16.9937605,21.1432767 L0.15452076,4.60825197 C-0.0425130651,4.41477773 -0.0453986756,4.09820839 0.148075568,3.90117456 C0.150162624,3.89904911 0.152268631,3.89694235 0.154393339,3.89485454 Z" fill="#FFFFFF"></path>
        </g></svg></span>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</section>

	<!-- BUKKE 카운트  -->	
	<section class="ftco-services ftco-counter index-img1" id="section-counter"  style="background-image: url(resources/images/class1-13.jpg);">
		<div class="container">
			<div class="row d-md-flex align-items-center justify-content-end">
				<div class="col-lg-10 count">
					<div class="row d-md-flex align-items-center">
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" >${mCount }</strong> <span id="count-number">부 캐릭터 수</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number">${sCount }</strong> <span id="count-number">사업자 수</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" >${cCount }</strong> <span id="count-number">총 부캐 클래스</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" >${aCount }</strong> <span id="count-number">총 부캐 액티비티</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 여백 고민인 부분 -->
	<section class="ftco-services" id="intro-section"></section>
	
	<!-- FOUR NEW BUKKE CLASSES  -->
	<section class="ftco-services">
	<div class="container row ftco-animate"  style="margin:auto; padding: inherit;">
		<h1 id="open-text" contenteditable spellcheck="false">new bukke class open!</h1>
		</div>
		 <div class="container" style="font-family: 'ELAND_Choice_M';">
		<div class="row">
		<c:forEach items="${fourClaList }" var="fourClaList">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
							<c:url var="cDetail" value="bukkeClassDetailView.com">
								<c:param name="classNo" value="${fourClaList.classNo }"></c:param>
							</c:url>
							<div class="img"
							style="background-image: url(resources/bClassFiles/${fourClaList.cRenameFilename });"></div>
						<div class="text px-4 pt-4">
							<h3> [${fourClaList.classType}] ${fourClaList.className }</h3>
							<a href="${cDetail }"><span class="position mb-2">${fourClaList.shopId} </span></a>
						 	<div class="faded">
								<p>${fourClaList.classAddr }</p>
							<!--	<ul class="ftco-social d-flex">
									<li class="ftco-animate"><a href="#"><span
											class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
								</ul>-->
							</div> 
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
	
	<!-- FOUR NEW ACTIVITY CLASSES  -->
	<section class="ftco-services" id="four-activity">
	<div class="container row ftco-animate"  style="margin:auto; padding: inherit;">
		<h1 id="open-text" contenteditable spellcheck="false">new activity open!</h1>
		</div>
		 <div class="container" style="font-family: 'ELAND_Choice_M';">
		<div class="row">
		<c:forEach items="${fourActList }" var="fourActList">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
							<c:url var="aDetail" value="activityDetail.com">
								<c:param name="activityNo" value="${fourActList.activityNo }"></c:param>
							</c:url>
							<div class="img"
							style="background-image: url(resources/images/activityImageFiles/${fourActList.aRenameFilename });"></div>
						<div class="text px-4 pt-4">
							<h3> [${fourActList.activityType}] ${fourActList.activityName }</h3>
							<a href="${aDetail }"><span class="position mb-2">${fourActList.shopId} </span></a>
						 	<div class="faded">
								<p>${fourActList.activityAddr }</p>
							<!--	<ul class="ftco-social d-flex">
									<li class="ftco-animate"><a href="#"><span
											class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
								</ul>-->
							</div> 
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
	
	
	<!-- <section class="home-slider js-fullheight owl-carousel bg-white">
		<div class="slider-item js-fullheight">
			<div class="container">
				<div
					class="row d-md-flex no-gutters slider-text js-fullheight align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="one-third order-md-last img js-fullheight"
						style="background-image: url(resources/images/index1.jpg);">
						<h3 class="vr">Architecture Firm</h3>
					</div>
					<div
						class="one-forth d-flex js-fullheight align-items-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						
					</div>
				</div>
			</div>
		</div>

		<div class="slider-item js-fullheight">
			<div class="container">
				<div
					class="row d-flex no-gutters slider-text js-fullheight align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="one-third order-md-last img js-fullheight"
						style="background-image: url(resources/images/index2.jpg);">
						<h3 class="vr">Since - 2018</h3>
					</div>
					<div
						class="one-forth d-flex js-fullheight align-items-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						
					</div>
				</div>
			</div>
		</div>
	</section> -->
	
	
	<!-- BUKKE 추천 수업 -->
	<section class="ftco-services">
	<div class="container">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="row col-lg-12">
						<div class="col-lg-6" id="act-top2">
							<img src="../resources/images/hobby2.jpg" class="d-block w-100"
								alt="...">
						</div>
						<div class="col-lg-6" id="act-top2">
							<div class="row">
							<div class="col-md-12 ftco-animate" id="rcmd-title">
								<h1 style="font-size:xx-large;">부캐가 추천합니다!🤩💖</h1>
							</div>
							</div>
							<div class="row">
								<!-- 클래스 미술 2개 목록 -->
								<c:forEach items="${artTwoList }" var="artTwoList">
								<div class="col-md-6 ftco-animate">
									<div class="staff">
										<c:url var="cDetail" value="bukkeClassDetailView.com">
										<c:param name="classNo" value="${artTwoList.classNo }"></c:param>
										</c:url>
										<div class="img"
											style="background-image: url(resources/bClassFiles/${artTwoList.cRenameFilename});"></div>
										<div class="text px-4 pt-4">
											<h3>${artTwoList.className }</h3>
											<a href="${cDetail }"><span class="position mb-2">${artTwoList.shopId}</span></a>
											<div class="faded">
												<p>${artTwoList.classAddr }</p></div>
										</div>
									</div>
								</div>
								</c:forEach>
								</div>
						</div>
							<!-- 	<div class="col-md-6 ftco-animate">
									<div class="staff">
										<div class="img"
											style="background-image: url(resources/images/team-2.jpg);"></div>
										<div class="text px-4 pt-4">
											<h3>David Smith</h3>
											<span class="position mb-2">Achitect</span>
											<div class="faded">
												<p>I am an ambitious workaholic, but apart from that,
													pretty simple person.</p>
												<ul class="ftco-social d-flex">
													<li class="ftco-animate"><a href="#"><span
															class="icon-twitter"></span></a></li>
													<li class="ftco-animate"><a href="#"><span
															class="icon-facebook"></span></a></li>
													<li class="ftco-animate"><a href="#"><span
															class="icon-google-plus"></span></a></li>
													<li class="ftco-animate"><a href="#"><span
															class="icon-instagram"></span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div> -->
							
					</div>
				</div>
				<div class="carousel-item">
					<div class="row col-lg-12">
						<div class="col-lg-6">
							<img src="../resources/images/hobby3.png" class="d-block w-100"
								alt="...">
						</div>
						<div class="col-lg-6" id="act-top2">
						<div class="row">
						<div class="col-md-12 ftco-animate" id="rcmd-title">
							<h1 style="color:#3c723b;">주말에 즐길 수 있는 액티비티🏄‍♂</h1>
						</div>
						</div>
							<div class="row">
								<!-- 액티비티 최근 글 2개 목록 -->
								<c:forEach items="${surfTwoList }" var="surfTwoList">
								<div class="col-md-6 ftco-animate">
									<div class="staff">
									<c:url var="aDetail" value="activityDetail.com">
								<c:param name="activityNo" value="${surfTwoList.activityNo }"></c:param>
							</c:url>
										<div class="img"
											style="background-image: url(resources/images/activityImageFiles/${surfTwoList.aRenameFilename});"></div>
										<div class="text px-4 pt-4">
											<h3>[${surfTwoList.activityType}] ${surfTwoList.activityName }</h3>
											<a href="${aDetail }"><span class="position mb-2">${surfTwoList.shopId}</span></a>
												<div class="faded">
												<p>${surfTwoList.activityAddr }</p></div>
										</div>
									</div>
								</div>
								</c:forEach>
								</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="row col-lg-12">
						<div class="col-lg-6">
							<img src="../resources/images/hobby4.png" class="d-block w-100"
								alt="...">
						</div>
							<div class="col-lg-6" id="act-top2">
						<div class="row">
						<div class="col-md-12 ftco-animate" id="rcmd-title">
							<h1 style="font-size:xx-large; color:#8443bf;">👻 슬기로운 부캐생활 👻</h1>
						</div>
						</div>
							<div class="row">
								<!-- 클래스 사진 2개 목록 -->
								<c:forEach items="${picTwoList }" var="picTwoList">
								<div class="col-md-6 ftco-animate">
									<div class="staff">
											<c:url var="cDetail" value="bukkeClassDetailView.com">
										<c:param name="classNo" value="${picTwoList.classNo }"></c:param>
										</c:url>
										<div class="img"
											style="background-image: url(resources/bClassFiles/${picTwoList.cRenameFilename});"></div>
										<div class="text px-4 pt-4">
											<h3>${picTwoList.className }</h3>
											<a href="${cDetail }"><span class="position mb-2">${picTwoList.shopId}</span></a>
											<div class="faded">
												<p>${picTwoList.classAddr }</p></div>
										</div>
									</div>
								</div>
								</c:forEach>
								</div>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	</div>
	</section>
	
	<section class="ftco-services" id="shop-info">
		<div class="container">
			<!-- BUKKE SHOPPER -->
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">HOW TO BUKKE HOST</h2>
					<p class="host-info">원스탑 클래스 및 액티비티 서비스를 통해 쉽고 편하게 경험을 공유하고 누군가의 또 다른 모습을 발굴해낼 수 있습니다</p>
				</div>
			</div>
			
			<div class="row justify-content-start mt-5 py-5 ftco-animate">
			<div class="col-md-2"></div>
			
			
				<div class="col-md-8 ftco-animate">
					<div class="row d-flex">
						<div class="col-md-6 d-flex align-items-stretch">
							<div
								class="media block-6 services services-2 d-block bg-light p-4 mb-4">
								<div
									class="icon d-flex justify-content-center align-items-center">
									<span class="flaticon-layers"></span>
								</div>
								<div class="media-body p-2 mt-3">
									<h3 class="heading">호스트 등록</h3>
									<p>간편한 가입으로 5분 만에 호스트가 되어보세요.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6 d-flex align-items-stretch">
							<div
								class="media block-6 services services-2 d-block bg-light p-4 mb-4">
								<div
									class="icon d-flex justify-content-center align-items-center">
									<span class="flaticon-layers"></span>
								</div>
								<div class="media-body p-2 mt-3">
									<h3 class="heading">관리자 승인</h3>
									<p>부캐를 가입하신 후 관리자 승인이 완료되면 자유롭게 진행할 수업을 등록해주세요.</p>
								</div>
							</div>
						</div>
						</div>
						
						<div class="row d-flex">
						<div class="col-md-6 d-flex align-items-stretch">
							<div
								class="media block-6 services services-2 d-block bg-light p-4 mb-4">
								<div
									class="icon d-flex justify-content-center align-items-center">
									<span class="flaticon-layers"></span>
								</div>
								<div class="media-body p-2 mt-3">
									<h3 class="heading">부캐 수업 오픈 및 운영</h3>
									<p>부캐는 자유로운 수업 방식을 추구합니다. 수업이 오픈 되면 모객을 위한 각종 홍보 활동을 진행합니다.</p>
								</div>
							</div>
						</div>
						<div class="col-md-6 d-flex align-items-stretch">
							<div
								class="media block-6 services services-2 d-block bg-light p-4 mb-4">
								<div
									class="icon d-flex justify-content-center align-items-center">
									<span class="flaticon-layers"></span>
								</div>
								<div class="media-body p-2 mt-3">
									<h3 class="heading">부캐 생생 후기</h3>
									<p>실제 받은 수업의 후기만 작성 가능하므로 더욱 진솔한 수업의 면모를 드러낼 수 있습니다.</p>
								</div>
							</div>
						</div>
						</div>
						</div>
						
					
				<div class="col-md-2"></div>
			</div>
			
			<div class="row ftco-animate" style="place-content: center;">
				<p>
					<a href="shopRegisterForm.com"
						class="btn btn-primary btn-lg px-4 py-3 mt-3">업체 등록하기</a>
				</p>
			</div>
		</div>
	</section>
	
	
<%-- <!-- 후기 좋아요 탑3 -->
	<section class="ftco-section testimony-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">BUKKE</small></span>
					<h2 class="mb-4">BEST REVIEW</h2>
					<!-- <p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in</p> -->
				</div>
			</div>
			<br>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="row">
						<c:forEach items="${rListTopLikes }" var="review">
							<div class="col-sm-4 ftco-animate">
								<div class="item">
									<div class="testimony-wrap p-4 pb-5">
										<div class="text d-flex">
											<c:url var="rDetail" value="reviewDetail.com">
												<c:param name="reviewNo" value="${review.reviewNo }"></c:param>
											</c:url>
											<h3>
												<a href="${rDetail }"><div class="user-img mb-5"
														id="keep-img"
														style="background-image: url(../resources/reviewFiles/${review.rRenameFilename })"></div></a>
											</h3>

										</div>

									</div>
									<span class="quote d-flex"> <i class="icon-quote-left"></i>
									</span>
									<div class="text">
										<p class="mb-5 pl-4 line">${review.reviewContents }</p>
										<div class="pl-5">
											<p class="name">${review.memberId }</p>

										</div>
									</div>

								</div>
							</div>
						</c:forEach>
					</div>
					<br>
					</div>
				</div>
			</div>
	</section> --%>

	<!-- <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">Expert Team</small></span>
					<h2 class="mb-4">Our Architect Team</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img"
							style="background-image: url(resources/images/team-1.jpg);"></div>
						<div class="text px-4 pt-4">
							<h3>John Wilson</h3>
							<span class="position mb-2">Co-Founder / CEO</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate"><a href="#"><span
											class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img"
							style="background-image: url(resources/images/team-2.jpg);"></div>
						<div class="text px-4 pt-4">
							<h3>David Smith</h3>
							<span class="position mb-2">Achitect</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate"><a href="#"><span
											class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img"
							style="background-image: url(resources/images/team-3.jpg);"></div>
						<div class="text px-4 pt-4">
							<h3>David Smith</h3>
							<span class="position mb-2">Achitect</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate"><a href="#"><span
											class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img"
							style="background-image: url(resources/images/team-4.jpg);"></div>
						<div class="text px-4 pt-4">
							<h3>David Smith</h3>
							<span class="position mb-2">Achitect</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social d-flex">
									<li class="ftco-animate"><a href="#"><span
											class="icon-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-google-plus"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

<!-- 	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-2">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">Blog</small></span>
					<h2 class="mb-4">Recent Blog</h2>
				</div>
				<div class="col-md-8 pl-md-5 heading-section ftco-animate">
					<div class="pl-md-4 border-line">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('resources/images/image_1.jpg');">
						</a>
						<div class="text d-flex py-4">
							<div class="meta mb-3">
								<div>
									<a href="#">Jan. 20, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<div class="desc pl-3">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry" data-aos-delay="100">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('resources/images/image_2.jpg');">
						</a>
						<div class="text d-flex py-4">
							<div class="meta mb-3">
								<div>
									<a href="#">Jan. 20, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<div class="desc pl-3">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 ftco-animate">
					<div class="blog-entry" data-aos-delay="200">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('resources/images/image_3.jpg');">
						</a>
						<div class="text d-flex py-4">
							<div class="meta mb-3">
								<div>
									<a href="#">Jan. 20, 2019</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="icon-chat"></span>
										3</a>
								</div>
							</div>
							<div class="desc pl-3">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<!-- IMAGE GIF -->
	<section class="ftco-services" style="padding:0px;">
		<div class="container">
			<div class="row col-lg-12">
				<div class="col-lg-4"></div>
				<div class="col-lg-4">
					<img src="https://team.frip.co.kr/static/media/phone-banner.1a4cdd7d.gif" />
				</div>
				<div class="col-lg-4"></div>
			</div>
		</div>
	</section>

 

<script type="text/javascript">
var show = function(){
    $('#modal-popup').modal();
};

$(window).load(function(){
    var timer = window.setTimeout(show,5000);
});
</script>
	<script async src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript">
		var player;
		
		function onYouTubePlayerAPIReady(){
			player = new YT.Player('muteYouTubeVideoPlayer', {
				videoId : 'CTP92nqfrog',
				playerVars : {
					autoplay : 1, 		// Auto-play the video on load
					controls : 0, 		// Show pause/play buttons in player
					rel : 0,
					start : 1,
					end : 60,
					showinfo : 0, 		// Hide the video title
					modestbranding : 0, // Hide the Youtube Logo
					loop : 1, 			// Run the video in a loop
					playlist : '',
					fs : 0, 			// Hide the full screen button
					cc_load_policy : 0, // Hide closed captions
					iv_load_policy : 3, // Hide the Video Annotations
					autohide : 1		// Hide video controls when playing
				},
				events:{
					onReady:function(e){
						e.target.mute();
					}
				}
			});
		}
	</script>
</body>
<div class="modal fade"  id="modal-popup" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <p class="modal-title"></p>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span></button>
      </div>
      <a href="giftFirstPageView.com"><img src="/resources/images/recommendation.png"></a>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
</html>
<jsp:include page="./common/footer.jsp"></jsp:include>
