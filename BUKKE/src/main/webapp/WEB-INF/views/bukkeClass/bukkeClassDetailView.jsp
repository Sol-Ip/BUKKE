<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp?active=bclass"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐, 새로운 나 ! - Class</title>
<link rel="stylesheet"
	href="resources/css/bClass-custom/bClassListView.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
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
					<h1 class="mb-2 bread">CLASS</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="home.com">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Class <i
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
			<div class="row">
				<div class="col-lg-12 ftco-animate"> <!-- 클래스 분류 -->
					<h3>[SHOP_ID] ${bukkeClass.className } </h3>
				</div>
				<div class="col-lg-8 ftco-animate">
					<p>
						<img src="../resources/bClassFiles/${bukkeClass.cRenameFilename }" alt="class photo" class="img-fluid">
					</p>

					<H6>${bukkeClass.classInfo }</H6>
						
						
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
						reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
					<p>
						<img src="resources/images/image_2.jpg" alt="" class="img-fluid">
					</p>
					<p>Quisquam esse aliquam fuga distinctio, quidem delectus
						veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde
						aut non tenetur tempore, nisi culpa voluptate maiores officiis
						quis vel ab consectetur suscipit veritatis nulla quos quia
						aspernatur perferendis, libero sint. Error, velit, porro. Deserunt
						minus, quibusdam iste enim veniam, modi rem maiores.</p>
					<p>Odit voluptatibus, eveniet vel nihil cum ullam dolores
						laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga
						iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis
						porro explicabo soluta commodi libero voluptatem similique id
						quidem? Blanditiis voluptates aperiam non magni. Reprehenderit
						nobis odit inventore, quia laboriosam harum excepturi ea.</p>
					<p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam
						ipsam quidem, dolor distinctio similique asperiores voluptas enim,
						exercitationem ratione aut adipisci modi quod quibusdam iusto,
						voluptates beatae iure nemo itaque laborum. Consequuntur et
						pariatur totam fuga eligendi vero dolorum provident. Voluptatibus,
						veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur
						recusandae!</p>
					<p>Voluptas dolores dignissimos dolorum temporibus, autem
						aliquam ducimus at officia adipisci quasi nemo a perspiciatis
						provident magni laboriosam repudiandae iure iusto commodi debitis
						est blanditiis alias laborum sint dolore. Dolores, iure,
						reprehenderit. Error provident, pariatur cupiditate soluta
						doloremque aut ratione. Harum voluptates mollitia illo minus
						praesentium, rerum ipsa debitis, inventore?</p>
					<div class="tag-widget post-tag-container mb-5 mt-5">
						<div class="tagcloud">
							<a href="#" class="tag-cloud-link">Life</a> <a href="#"
								class="tag-cloud-link">Sport</a> <a href="#"
								class="tag-cloud-link">Tech</a> <a href="#"
								class="tag-cloud-link">Travel</a>
						</div>
					</div>

					<div class="about-author d-flex p-4 bg-light">
						<div class="bio mr-5">
							<img src="resources/images/person_1.jpg" alt="Image placeholder"
								class="img-fluid mb-4">
						</div>
						<div class="desc">
							<h3>George Washington</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Ducimus itaque, autem necessitatibus voluptate quod mollitia
								delectus aut, sunt placeat nam vero culpa sapiente consectetur
								similique, inventore eos fugit cupiditate numquam!</p>
						</div>
					</div>
				</div>

				<!-- ================  Detail END================ -->


				<!-- =============== side bar =============== -->

				<div class="col-lg-4 sidebar ftco-animate">

					<div class="sidebar-box ftco-animate">
						<h3>상세 정보</h3>
						<div class="block-21 mb-4 d-flex">
							<div class="meta">
								<h3 class="heading">Even the all-powerful Pointing has no
									control about the blind texts</h3>

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
					<div class="ftco-animate">
					<c:url var="cModify" value="bukkeClassModify.com">
		               <c:param name="classNo" value="${ bukkeClass.classNo }"></c:param>
		            </c:url>
					<input type="submit" class="btn btn-lg btn-primary" value="버튼 1">
					<button class="btn btn-lg btn-primary" type="submit">버튼 1</button>
					<a href="${cModify }"><button class="btn btn-lg btn-primary" type="submit">수정</button></a>
					</div>
					<br><br>
					<div class="sidebar-box ftco-animate">
						<h3>Category</h3>
						<ul class="categories">
							<li><a href="#">Interior Design <span>(6)</span></a></li>
							<li><a href="#">Exterior Design <span>(8)</span></a></li>
							<li><a href="#">Industrial Design <span>(2)</span></a></li>
							<li><a href="#">Landscape Design <span>(2)</span></a></li>
						</ul>
					</div>


					<div class="sidebar-box ftco-animate">
						<h3>Tag Cloud</h3>
						<ul class="tagcloud m-0 p-0">
							<a href="#" class="tag-cloud-link">House</a>
							<a href="#" class="tag-cloud-link">Office</a>
							<a href="#" class="tag-cloud-link">Land</a>
							<a href="#" class="tag-cloud-link">Building</a>
							<a href="#" class="tag-cloud-link">Table</a>
							<a href="#" class="tag-cloud-link">Intrior</a>
							<a href="#" class="tag-cloud-link">Exterior</a>
						</ul>
					</div>

					<div class="sidebar-box ftco-animate">
						<h3>Archives</h3>
						<ul class="categories">
							<li><a href="#">December 2018 <span>(30)</span></a></li>
							<li><a href="#">Novemmber 2018 <span>(20)</span></a></li>
							<li><a href="#">September 2018 <span>(6)</span></a></li>
							<li><a href="#">August 2018 <span>(8)</span></a></li>
						</ul>
					</div>


					<div class="sidebar-box ftco-animate">
						<h3>Paragraph</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ducimus itaque, autem necessitatibus voluptate quod mollitia
							delectus aut, sunt placeat nam vero culpa sapiente consectetur
							similique, inventore eos fugit cupiditate numquam!</p>
					</div>
				</div>
				<!-- END COL -->
			</div>
		</div>
	</section>
	
	<!-- 후기 보기 -->
	<section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading subheading-with-line"><small class="pr-2 bg-light">CLASS REVIEW</small></span>
            <h2 class="mb-4">Class Review</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel">
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
	                    <p class="name">[일반회원 아이디]</p>
	                    <span class="position">[후기 제목]</span>
                    </div>
                  </div>
                </div>
              </div>
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