<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>취미생활 플랫폼, 부캐</title>
</head>
<style>
	.index-img1 {
	background-image: url(resources/images/class1.jpg);
	min-height:1450px;
	width:100%;
	background-size : cover;
	}
</style>
<body>
	<jsp:include page="./common/header.jsp">
		<jsp:param name="active" value="home" />
	</jsp:include>

	<section class="home-slider js-fullheight owl-carousel bg-white">
		<div class="slider-item js-fullheight">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row d-md-flex no-gutters slider-text js-fullheight align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="one-third order-md-last img js-fullheight"
						style="background-image: url(resources/images/index2.jpg);">
						<!-- <h3 class="vr">Architecture Firm</h3> -->
					</div>
					<div
						class="one-forth d-flex js-fullheight align-items-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<div class="text">
							<h1 class="mb-4">
								내 안의 <br>또 다른 나 !
							</h1>
							<h4>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</h4>
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
						style="background-image: url(resources/images/index1.jpg);">
						<!-- <h3 class="vr">Since - 2018</h3> -->
					</div>
					<div
						class="one-forth d-flex js-fullheight align-items-center ftco-animate"
						data-scrollax=" properties: { translateY: '70%' }">
						<div class="text">
							<h1 class="mb-4"> 나만의 독특한 <br> 부캐를 부타캐 </h1>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</p>
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
	<section class="ftco-section ftc-no-pb">
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
	</section>


	<section class="ftco-section ftco-counter img" id="section-counter"
		style="background-image: url(resources/images/bg_3.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row d-md-flex align-items-center justify-content-end">
				<div class="col-lg-10">
					<div class="row d-md-flex align-items-center">
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" data-number="18">0</strong> <span>Years
										of Experienced</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" data-number="351">0</strong> <span>Happy
										Clients</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" data-number="564">0</strong> <span>Finished
										Projects</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" data-number="300">0</strong> <span>Working
										Days</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-services ftco-counter index-img1" id="section-counter"  style="background-image: url(resources/images/class1.jpg);">
		<div class="container">
			<div class="row d-md-flex align-items-center justify-content-end">
				<div class="col-lg-10">
					<div class="row d-md-flex align-items-center">
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" data-number="18">0</strong> <span>Years
										of Experienced</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" data-number="351">0</strong> <span>Happy
										Clients</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" data-number="564">0</strong> <span>Finished
										Projects</span>
								</div>
							</div>
						</div>
						<div
							class="col-md d-flex justify-content-center counter-wrap ftco-animate">
							<div class="block-18">
								<div class="text">
									<strong class="number" data-number="300">0</strong> <span>Working
										Days</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-services">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-5">
				<div class="col-md-4 heading-section ftco-animate">
					<h2 class="mb-4">Our Work Flow</h2>
				</div>
				<div class="col-md-8 pl-md-5 ftco-animate">
					<div class="pl-md-4 border-line">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="flaticon-idea"></span>
						</div>
						<div class="media-body p-2 mt-3">
							<h3 class="heading">Perfectly Design</h3>
							<p>Even the all-powerful Pointing has no control about the
								blind texts it is an almost unorthographic.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="flaticon-compass-symbol"></span>
						</div>
						<div class="media-body p-2 mt-3">
							<h3 class="heading">Carefully Planned</h3>
							<p>Even the all-powerful Pointing has no control about the
								blind texts it is an almost unorthographic.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon d-flex justify-content-center align-items-center">
							<span class="flaticon-layers"></span>
						</div>
						<div class="media-body p-2 mt-3">
							<h3 class="heading">Smartly Execute</h3>
							<p>Even the all-powerful Pointing has no control about the
								blind texts it is an almost unorthographic.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row justify-content-start mt-5 py-5">
				<div class="col-md-4 heading-section ftco-animate">
					<h2 class="mb-4">Our Services</h2>
					<p>Even the all-powerful Pointing has no control about the
						blind texts it is an almost unorthographic.</p>
				</div>
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
									<h3 class="heading">Design</h3>
									<p>Even the all-powerful Pointing has no control about the
										blind texts it is an almost unorthographic.</p>
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
									<h3 class="heading">Industrial Design</h3>
									<p>Even the all-powerful Pointing has no control about the
										blind texts it is an almost unorthographic.</p>
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
									<h3 class="heading">Architecture Support</h3>
									<p>Even the all-powerful Pointing has no control about the
										blind texts it is an almost unorthographic.</p>
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
									<h3 class="heading">Renovation</h3>
									<p>Even the all-powerful Pointing has no control about the
										blind texts it is an almost unorthographic.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pb">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-2">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">Projects</small></span>
					<h2 class="mb-4">Featured Projects</h2>
				</div>
				<div class="col-md-8 pl-md-5 heading-section ftco-animate">
					<div class="pl-md-4 border-line">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in. A small river named Duden flows by their
							place and supplies it with the necessary regelialia. It is a
							paradisematic country, in which roasted parts of sentences fly
							into your mouth.</p>
						<p class="category mt-5">
							<span class="active mr-2"><a href="#">All Work</a></span> <span
								class="mr-2"><a href="#">Interior</a></span> <span class="mr-2"><a
								href="#">Exterior</a></span> <span class="mr-2"><a href="#">Landscape</a></span>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container-wrap">
			<div class="row no-gutters">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/work-1.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Interior Design</span>
							<h3>
								<a href="project.html">Office Interior Design</a>
							</h3>
						</div>
						<a href="resources/images/work-1.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/work-2.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Interior Design</span>
							<h3>Office Interior Design</h3>
						</div>
						<a href="resources/images/work-2.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/work-3.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Interior Design</span>
							<h3>Office Interior Design</h3>
						</div>
						<a href="resources/images/work-3.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/work-4.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Interior Design</span>
							<h3>Office Interior Design</h3>
						</div>
						<a href="resources/images/work-4.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/work-5.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Landscape Design</span>
							<h3>Office Interior Design</h3>
						</div>
						<a href="resources/images/work-5.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/work-6.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Exterior Design</span>
							<h3>Office Interior Design</h3>
						</div>
						<a href="resources/images/work-6.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/work-7.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Exterior Design</span>
							<h3>Office Interior Design</h3>
						</div>
						<a href="resources/images/work-7.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="resources/images/work-8.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Interior Design</span>
							<h3>Office Interior Design</h3>
						</div>
						<a href="resources/images/work-8.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section testimony-section bg-light">
		<div class="container">
			<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-light">Testimony</small></span>
					<h2 class="mb-4">Our satisfied customer says</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in</p>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel">
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(resources/images/person_1.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">CEO Founder of Commercial
											Building</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(resources/images/person_2.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">CEO Founder of Interior Design</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(resources/images/person_3.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">Exterior Designer</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(resources/images/person_1.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">Landscape Designer</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
								<div class="user-img mb-5"
									style="background-image: url(resources/images/person_1.jpg)">
									<span
										class="quote d-flex align-items-center justify-content-center">
										<i class="icon-quote-left"></i>
									</span>
								</div>
								<div class="text">
									<p class="mb-5 pl-4 line">Far far away, behind the word
										mountains, far from the countries Vokalia and Consonantia,
										there live the blind texts.</p>
									<div class="pl-5">
										<p class="name">Garreth Smith</p>
										<span class="position">System Analyst</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
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
	</section>

	<section class="ftco-section bg-light">
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
	</section>

	<section class="ftco-section ftco-client">
		<div class="container">
			<div class="row justify-content-start mb-5 pb-2">
				<div class="col-md-4 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">Clients</small></span>
					<h2 class="mb-4">Our CLients</h2>
				</div>
				<div class="col-md-8 pl-md-5 heading-section ftco-animate">
					<div class="pl-md-4 border-line">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
			</div>
			<div class="row ftco-animate">
				<div class="col-md-12">
					<div class="carousel-client owl-carousel">
						<div class="item">
							<a href="#" class="client text-center p-5"> CLient Logo 1 </a>
						</div>
						<div class="item">
							<a href="#" class="client text-center p-5"> CLient Logo 2 </a>
						</div>
						<div class="item">
							<a href="#" class="client text-center p-5"> CLient Logo 3 </a>
						</div>
						<div class="item">
							<a href="#" class="client text-center p-5"> CLient Logo 4 </a>
						</div>
						<div class="item">
							<a href="#" class="client text-center p-5"> CLient Logo 5 </a>
						</div>
						<div class="item">
							<a href="#" class="client text-center p-5"> CLient Logo 6 </a>
						</div>
						<div class="item">
							<a href="#" class="client text-center p-5"> CLient Logo 7 </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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
</html>
<jsp:include page="./common/footer.jsp"></jsp:include>
