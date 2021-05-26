<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=bclass"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐, 새로운 나 ! - Class</title>
<link rel="stylesheet" href="resources/css/bClass-custom/bClassListView.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/bClass-custom/bClassDetailView.css">
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
					<h1 class="mb-2 bread">CLASS DETAILS</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Class Details <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- fixed section END-->

	<!-- Class detail section-->

	<!-- ================ Class Detail ================ -->
	<section class="ftco-section">
		<div class="container">
		<div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">CLASS DETAILS</h2>
				</div>
			</div>
			<div class="row">
			<!-- 클래스 분류 -->
				<div class="col-lg-12 ftco-animate"> 
					<ul id="type-ul">
						<li><h3 class="act-type">[&nbsp;</h3></li>
						<li><h3 id="act-type">${bukkeClass.classType}</h3></li>
						<li><h3 class="act-type">&nbsp;>&nbsp;</h3></li>
						<li><h3 id="act-type">${bukkeClass.classTypedetails}</h3></li>
						<li><h3 class="act-type">&nbsp;]</h3></li>
					</ul>
				</div>
				<div class="col-lg-8 ftco-animate">
					<p>
						<img src="../resources/bClassFiles/${bukkeClass.cRenameFilename }" alt="class photo" class="img-fluid">
					</p>
					<h2 class="mb-3 mt-5" style="font-family: 'KOTRA_BOLD-Bold';">강좌명 : ${bukkeClass.className }</h2>
					<hr>
					<%-- <H6>${bukkeClass.classInfo }</H6>
					<p>Molestiae cupiditate inventore animi, maxime sapiente optio,
						illo est nemo veritatis repellat sunt doloribus nesciunt! Minima
						laborum magni reiciendis qui voluptate quisquam voluptatem soluta
						illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti
						tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor
						minima esse vero ut ea, repudiandae suscipit!</p>
					<h2 class="mb-3 mt-5">#2. Creative WordPress Themes</h2>
					<p>Temporibus ad error suscipit exercitationem hic molestiae
						totam obcaecati rerum, eius aut, in. Exercitationem atque quidem
						tempora maiores ex architecto voluptatum aut officia doloremque.
						Error dolore voluptas, omnis molestias odio dignissimos culpa ex 
						earum nisi consequatur quos odit quasi repellat qui officiis
						reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p> --%>
						
						
					<div style="padding: 30px;">
						<h5>${bukkeClass.classInfo }</h5>
					</div>
					<hr>

					<div class="tag-widget post-tag-container mb-5 mt-5">
						<div class="meta">
							<div>
								<button class="btn btn-outline-danger">
									<span class="icon-heart icon-large"></span> 찜하기
								</button>
								<button class="btn btn-outline-warning">
									<span class="icon-smile icon-large"></span> 찜하기
								</button>
								<button class="btn btn-outline-danger">❤</button>
								<button class="btn btn-outline-danger">
									<i class="fas fa-bookmark fa-2x"></i>
								</button>

								<span class="icon-eye-open"></span>
							</div>

						</div>
					</div>
					
				</div>

				<!-- ================  Detail END================ -->


				<!-- =============== side bar =============== -->

				<div class="col-lg-4 sidebar ftco-animate">
					<div class="media block-6 services services-2 d-block bg-light p-4 mb-4 ">
					<div class="sidebar-box ftco-animate">
					<h2 align="center">
						<i class="fas fa-list fa-lg"></i>&nbsp;Information
					</h2>
					<hr>
					<br>
						<div class="block-21 mb-4 d-flex">
							<ul id="type-ul">
									<li><h3 class="act-type">
											<b>시작일</b>&nbsp;&nbsp;<i class="far fa-calendar-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.classStartDate }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>종료일</b>&nbsp;&nbsp;<i class="fas fa-calendar-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.classEndDate }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>업체명</b>&nbsp;&nbsp;<i class="fas fa-id-card-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.shopId }</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>조회 수</b>&nbsp;&nbsp;<i class="far fa-eye"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">조회수 들어오기</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b>찜 갯수</b>&nbsp;&nbsp;<i class="fas fa-heartbeat"></i></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">찜 개수 들어오기</h3></li>
									<br>
									<br>
									<li><h3 class="act-type">
											<b> 주소 </b>&nbsp;&nbsp;<i class="fas fa-map-marked-alt fa-lg"></i>&nbsp;&nbsp;&nbsp;
										</h3></li>
									<li><h3 id="act-type">${bukkeClass.classAddr }</h3></li>
								</ul>
						</div>

							<!-- 사업자에게만 버튼 보이게 하기 -->
							<div align="center">
								<c:url var="cModify" value="bukkeClassModify.com">
									<c:param name="activityNo" value="${bukkeClass.classNo }"></c:param>
								</c:url>
								<!-- renameFilename 은 실제 저장된 파일 이름  -->
								<c:url var="cDelete" value="bukkeClassDelete.com">
									<c:param name="classNo" value="${bukkeClass.classNo }"></c:param>
									<c:param name="cRenameFilename" value="${bukkeClass.cRenameFilename }"></c:param>
								</c:url>
								<a href="${cModify }"><input class="btn btn-lg btn-warning" type="submit" value="수정"></a> 
									<a href="#"><input class="btn btn-lg btn-danger" type="submit" value="삭제"></a>
							</div>
						</div>
					</div>

					<div class="ftco-animate">
						<input type="submit" class="btn btn-lg btn-primary" value="버튼 1">
						<button class="btn btn-lg btn-primary" type="submit">버튼 1</button>
						<button class="btn btn-lg btn-primary" type="submit">버튼 1</button>
					</div>
					<br>
					<br>
					<div class="sidebar-box ftco-animate">
						<h3>Popular Articles</h3>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(resources/images/image_1.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> Oct. 04,
											2018</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Dave Lewis</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(resources/images/image_2.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> Oct. 04,
											2018</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Dave Lewis</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(resources/images/image_3.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> Oct. 04,
											2018</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Dave Lewis</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END COL -->

				<!-- =============== side bar END =============== -->
	</section>
	
	<!-- 후기 보기 -->
	<section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading subheading-with-line"><small class="pr-2 bg-light">CLASS REVIEW</small></span>
            <h2 class="mb-4">Class Review</h2>
            <p>후기들을 볼 수 있습니다.</p>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
            <c:forEach items="${rList }" var="review">
	              <div class="item">
	                <div class="testimony-wrap p-4 pb-5">
	                  <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)"><!-- 리뷰 사진 넣을 예정 -->
	                    <span class="quote d-flex align-items-center justify-content-center">
	                      <i class="icon-quote-left"></i>
	                    </span>
	                  </div>
		              <div class="text">
		                    <p class="mb-5 pl-4 line">${review.reviewContents }</p>
			                  <div class="pl-5">
				                <p class="name">${review.memberId }</p>
				                <span class="position">${review.reviewTitle }</span>
			                  </div>
		              </div>
	                </div>
	              </div>
              </c:forEach>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(images/person_2.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="pl-5">
	                    <p class="name">Garreth Smith</p>
	                    <span class="position">CEO Founder of Interior Design</span>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(images/person_3.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="pl-5">
	                    <p class="name">Garreth Smith</p>
	                    <span class="position">Exterior Designer</span>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <div class="pl-5">
	                    <p class="name">Garreth Smith</p>
	                    <span class="position">Landscape Designer</span>
	                  </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
                  </div>
                  <div class="text">
                    <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
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
    <!-- 후기 끝 -->


	<!--  detail section END-->

</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>