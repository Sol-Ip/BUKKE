<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부캐에 오신것을 환영합니다</title>
<style>
@font-face {
     font-family: 'DungGeunMo';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
	@font-face {
    font-family: 'Chosunilbo_myungjo';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Chosunilbo_myungjo.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	.banner {
		background-color: #FF3CAC;
		background-image: linear-gradient(225deg, #FF3CAC 0%, #784BA0 50%, #2B86C5 100%);
	}
	.banner * {
		color: white;
	}
	@import url("https://fonts.googleapis.com/css?family=Rubik:700&display=swap");
* {
    box-sizing: border-box;
}
#pt{
	font-family: 'Chosunilbo_myungjo';
	font-size: 20px;
}
#ptg{
	font-family: 'Chosunilbo_myungjo';
	font-size: 18px;
}
#flow{
	width: 300px;
    height: 300px; 
    border-radius: 70%;
    overflow: hidden;
    position: relative;
    right: -20px;
    position: relative; left: 40px;
}
#imgflow{
	width: 100%;
	height: 100%;
	overflow: hidden;
}
*::before, *::after {
    box-sizing: border-box;
}
#ptH3{
	font-family: 'DungGeunMo';
	font-size: 35px;
}

button {
    position: relative;
    display: inline-block;
    cursor: pointer;
    outline: none;
    border: 0;
    vertical-align: middle;
    text-decoration: none;
    font-size: inherit;
    font-family: inherit;
}

button.learn-more {
    font-weight: 600;
    color: #382b22;
    text-transform: uppercase;
    padding: 1.25em 2em;
    background: #fff0f0;
    border: 2px solid #b18597;
    border-radius: 0.75em;
    transform-style: preserve-3d;
    transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), background 150ms cubic-bezier(0, 0, 0.58, 1);
}

button.learn-more::before {
    position: absolute;
    content: '';
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: #f9c4d2;
    border-radius: inherit;
    box-shadow: 0 0 0 2px #b18597, 0 0.625em 0 0 #ffe3e2;
    transform: translate3d(0, 0.75em, -1em);
    transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), box-shadow 150ms cubic-bezier(0, 0, 0.58, 1);
}

button.learn-more:hover {
    background: #ffe9e9;
    transform: translate(0, 0.25em);
}

button.learn-more:hover::before {
    box-shadow: 0 0 0 2px #b18597, 0 0.5em 0 0 #ffe3e2;
    transform: translate3d(0, 0.5em, -1em);
}

button.learn-more:active {
    background: #ffe9e9;
    transform: translate(0em, 0.75em);
}

button.learn-more:active::before {
    box-shadow: 0 0 0 2px #b18597, 0 0 #ffe3e2;
    transform: translate3d(0, 0, -1em);
}
</style>
</head>
<body>
<jsp:include page="./common/header.jsp">
	<jsp:param name="active" value="introduce" />
</jsp:include>

<section class="banner hero-wrap hero-wrap-2">
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
			<div class="col-md-9 ftco-animate text-center">
				<h1 class="mb-2 bread">introduce</h1>
				<h3 class="mr-2">본업에 지친 본캐들을 위한<br>취미생활 클래스</h3>
			</div>
        </div>
    </div>
</section>
		
		<section class="ftco-section">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-5 p-md-5 img img-2" style="background-image: url(resources/images/introduce1.jpg);">
					</div>
					<div class="col-md-7 wrap-about pb-md-5 ftco-animate">
	          <div class="heading-section mb-5 pl-md-5">
	          	<div class="pl-md-5 ml-md-5">
		          	<span class="subheading subheading-with-line"><small class="pr-2 bg-white">About</small></span>
		            <h2 class="mb-4" style=" font-family: 'DungGeunMo'; font-size: 30px;">평소의 나의 모습이 아닌 "새로운 나!"</h2>
		            
	            </div>
	          </div>
	          <div class="pl-md-5 ml-md-5 mb-5 ">
							<p id="pt">'부캐'란 게임에서 사용하던 용어로 '본 캐릭터' 외에 새롭게 만든 '부 캐릭터'의 줄임말입니다. 지금은 많은 사람들이 '평소의 나의 모습이 아닌 새로운 모습이나 캐릭터'를 칭하는 말로 쓰이고 있습니다. </p>
							<P id="pt">최근 직장인들 사이에서 취미생활을 위한 다양한 원데이 클래스, 액티비티 등 취미활동을 통해 행복과 만족감을 얻는 사람들이 늘고 있습니다. 워라벨을 중시하면서 일과 삶의 분리를 하려는 사람들이 증가하였기 때문입니다</P>
							<p id="pt">부캐에서는 일상생활에서 벗어나 오로지 '나'로써 온전한 시간을 취미생활을 통해 느낄 수 있도록 다양한 클래스와 액티비티의 정보를 공유하며 누구든지 취미를 만들 수 있는 서비스를 제공하고 있습니다.</p>
							<p><a href="#" class="btn-custom">question go <span class="ion-ios-arrow-forward"></span></a></p>
						</div>
					</div>
				</div>
				<br>
				<div class="row mt-5 pt-4">
					<div class="col-md-4 ftco-animate">
						
						<h3 class="h4" id="ptH3"><img src="resources/images/review/sms.png" style="width: 35px;">Mission</h3>
						<p id="ptg">취미로 일상을 아름답게 하고자 합니다. 힘들고 지친 일상 속에서 새로운 내가 되어 취미생활을 즐기며 우리의 취미가 즐거운 삶, 도움이 되는 삶이 될 수 있도록 노력합니다.
							취미가 새로운 가치가 될 수 있도록 부캐에서는 더욱 더 노력할 것입니다.</p>
					</div>
					<div class="col-md-4 ftco-animate">
						<h3 class="h4" id="ptH3"><img src="resources/images/review/note.png" style="width: 35px;">Vission</h3>
						<p id="ptg">부캐는 모든 사람들이 행복한 마음으로 살  수 있도록 세상을 바꾸고자 합니다. 하나의 기쁨이 모여 여러 행복을 만들 수 있도록 부캐는 클래스와 액티비티 활성화를 위해 노력하고 있습니다.
							소소한 행복이 가져오는 행복의 가치를 더욱 더 높일 것입니다.</p>
					</div>
					<div class="col-md-4 ftco-animate">
						<h3 class="h4" id="ptH3"><img src="resources/images/review/cal.png" style="width: 35px;">Promise</h3>
						<p id="ptg">부캐를 이용하는 고객들이 만족할 수 있는 클래스와 액티비티를 제공하고 있습니다. 즐겁고 안전하게 즐길 수 있도록 부캐에서는 최선을 다 할것을 약속합니다.
							취미가 없었던 사람들도 취미를 만들 수 있도록 노력하겠습니다.</p>
					</div>
				</div>
			</div>
		</section>
				<!-- fixed section End! -->
		<br><br>
		<section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(resources/images/bg_3.jpg);" data-stellar-background-ratio="0.5">
    	<div class="container">
    		<div class="row d-md-flex align-items-center justify-content-end">
    			<div class="col-lg-10">
    				<div class="row d-md-flex align-items-center">
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="180">0</strong>
		                <span>New 액티비티 </span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="351">0</strong>
		                <span>New 클래스</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="564">0</strong>
		                <span>오늘의 총 수강</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="300">0</strong>
		                <span>오늘의 후기</span>
		              </div>
		            </div>
		          </div>
	          </div>
          </div>
        </div>
    	</div>
    </section>
							<!-- 새 메뉴  -->
							<section class="ftco-services">
			<div class="container">
				<div class="row justify-content-start mb-5 pb-5">
          <div class="col-md-4 heading-section ftco-animate">
            <h2 class="mb-4" style="font-size: 45px;">Our Work Flow</h2>
          </div>
          <div class="col-md-8 pl-md-5 ftco-animate">
          	<div class="pl-md-4 border-line">
	          	<p id="ptg"> 우리는 부캐를 이용하는 사람들을 위해 다양한 일을 하고 있습니다. 당신이 원할 때에 언제나 어디서나 즐길 수  있도록 열심히 노력하고 있습니다.</p>
          	</div>
          </div>
        </div>
				<div class="row">
          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
               <div class="icon d-flex justify-content-center align-items-center" style="background-color: white;">
              </div> 
              		<div id="flow"><img src="https://cdn.pixabay.com/photo/2015/03/28/09/17/men-695653_960_720.jpg" id="imgflow"></div>
              <div class="media-body p-2 mt-3"  style="text-align: center" >
                <h3 class="heading" id="ptH3" style="background-color: #8A2BE2;color: white;"> Perfectly Design</h3>
                <p id="ptg">부캐를 이용하는 여러분들의 취미를 위해 다양한 크리에이티브를 가진 문화/예술 분야의 작가님들이 함께하고 있습니다.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
               <div class="icon d-flex justify-content-center align-items-center" style="background-color: white;">
              </div> 
              	<div id="flow"><img src="https://mblogthumb-phinf.pstatic.net/MjAxNzA0MTJfMjg2/MDAxNDkyMDAyMTgzOTQ1.byIzpTp_oGbA10vOHeycjfMACCnGXHhU3bvrTG5JwNsg.eU_Q3wtsQXRbX1llPUkOX4u8USmc8GOpxg8r4Zkm63Qg.JPEG.candle_room/17_%EB%B3%B5%EC%82%AC.jpg?type=w2" id="imgflow"></div>
              <div class="media-body p-2 mt-3" style="text-align: center">
                <h3 class="heading" id="ptH3" style="background-color: #8A2BE2;color: white;">Beautiful Life</h3>
                <p id="ptg">부캐는 일상을 아름답게 할 수 있습니다. '취미로 살맛나는 세상'을 만들겠습니다. 우리의 취미가 즐거운 삶을 만들어 갈 수 있도록 노력하고 있습니다.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services d-block">
               <div class="icon d-flex justify-content-center align-items-center" style="background-color: white;">
              </div> 
              <div id="flow"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/02_%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8F%B0_%EC%8B%A4%EC%82%AC01.png/1280px-02_%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8F%B0_%EC%8B%A4%EC%82%AC01.png" id="imgflow"></div>
              <div class="media-body p-2 mt-3" style="text-align: center">
                <h3 class="heading" id="ptH3" style="background-color: #8A2BE2;color: white;">Accurate review</h3>
                <p id="ptg">부캐는 일회성이 아닌 일상의 변화시키는 취미생활을 응원합니다. 후기 게시판에서 여러분들의 후기를 맘껏 자랑하고 소개해주세요. </p>
              </div>
            </div>      
          </div>
        </div>
			</div>
			<br><br><br><br>
			<hr>
			<br><br><br><br>
			
			
							<!-- 지도 -->
			<section>
			<div class="container">
				<div class="row justify-content-start mb-5 pb-5">
          <div class="col-md-4 heading-section ftco-animate">
            <h2 class="mb-4" style="font-size:45px; ">COMPANY</h2>
          </div>
          <div class="col-md-8 pl-md-5 ftco-animate">
          	<div class="pl-md-4 border-line">
	          	<p id="ptg"> </p>
          	</div>
          </div>
        </div>
        </div>
			<div>
				<div id="maps" style="width:90%;height:500px; position: relative; left: 5%">
				<div></div>
				<div></div>
				</div>
			</div>
			</section>
			
    </section>
		
			
		
			<!--사용설명서 -->
    <section class="ftco-section testimony-section bg-light">
		            <button class="learn-more" style="position: relative; left: 45%; font-family: 'DungGeunMo';"><a href="noticeList.com">부캐 사용설명서</a></button>
    </section>
    
   <!-- 지도 스크립트 부분 -->
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4dba342dbd27f0cb9dd734f93e5c8160&libraries=services"></script>
<script>
var mapContainer = document.getElementById('maps'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(37.51572, 127.03760), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var maps = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch('서울특별시 강남구 논현동 239-1', function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: maps,
        position: coords
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;">부캐 본사</div>'
    });
    infowindow.open(maps, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});     
</script>        


</body>
</html> 
<jsp:include page="./common/footer.jsp"></jsp:include>
