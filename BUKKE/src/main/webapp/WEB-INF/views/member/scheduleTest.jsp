<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Page</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<!-- 풀캘린더 -->
<link rel="stylesheet" href="../resources/css/calendar/main.css">
<link rel="stylesheet" href="../resources/css/calendar/core_main.css">


<style>  
  
   body {
    /* margin: 40px 10px; */
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  } 

  #calendar { 
  	width : 1100px;
  	padding-top : 40px;
  	padding-bottom : 120px;
  	/* padding-left : 300px; */
  	left : 80%;
  	/* margin-left : 200px; */
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head> 
<!-- <body id="body-pd"> -->

<body id="">

   <!-- fixed section -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
               <h1 class="mb-2 bread">OPEN MYPAGE</h1>
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="home.com">Home <i class="ion-ios-arrow-forward"></i></a></span> 
                  <span>MyPage <i class="ion-ios-arrow-forward"></i></span>
               </p>
            </div>
         </div>
      </div>
      
      <!-- ======================= 사이드 바 시작 =============================== -->
         <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">BUKKE</a>
                </div>
                <div class="nav__list">
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 정보</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">정보 수정</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">부캐 일정</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">부캐 일정보기</a>
                            <a href="#" class="collapse__sublink">좋아요 목록</a>
                            <a href="#" class="collapse__sublink">찜 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="folder-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">내 활동</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">작성한 게시글</a>
                            <a href="#" class="collapse__sublink">작성한 댓글</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">선물 내역</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">받은 선물</a>
                            <a href="#" class="collapse__sublink">보낸 선물</a>
                        </ul>
                    </div>
                    
                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">채팅</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">채팅 목록</a>
                        </ul>
                    </div>

                    <div href="#" class="nav__link collapse1">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">알림</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">예약 알림</a>
                        </ul>
                    </div>
                </div>
                
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">Log out</span>
                </a>
            </div>
        </nav>
    </div>
   </section>
   <br><br>
   <!-- ======================= 사이드 바 끝 =============================== -->
  
      <!--===================== 풀캘린더 시작 =========== -->
      <section>
	      <div class="container">
	      <div class="row justify-content-center mb-5 pb-3">
				<div class="col-md-7 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">BUKKE</small></span>
					<h2 class="mb-4">SCHEDULE</h2>
				</div>
			</div>
	      	<div class="row">
		      	<div class="col-sm-12">
		      		<div id='calendar'></div>
		      	</div>
	      	</div>
	      	<hr>
	      	
	   <button type="button" class="btn btn-primary" id="btn1">모달창오픈</button>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
  <h5>Popover in a modal</h5>
  <p>This <a href="#" role="button" class="btn btn-secondary popover-test" title="Popover title" data-bs-content="Popover body content is set in this attribute.">button</a> triggers a popover on click.</p>
  <hr>
  <h5>Tooltips in a modal</h5>
  <p><a href="#" class="tooltip-test" title="Tooltip">This link</a> and <a href="#" class="tooltip-test" title="Tooltip">that link</a> have tooltips on hover.</p>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="button" class="btn btn-primary">Save changes</button>
</div>
</div>
</div>
</div>

<script>
$(document).ready(function() {
	$("#btn1").click(function() {
	 $(".modal").modal("show");
	}); 
	//$("#ipt1").focus();
	$(".modal").on("shown.bs.modal", function () {
	$("#ipt1").focus();
	}); 
	});

</script>


      </section>
      
      <!-- ======================= 풀캘린더 끝 ================= -->
<!-- 마이페이지 사이드바 -->
<script src="../resources/js/member/mypageSidebar.js"></script>
<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<!-- 캘린더 -->
<script src="../resources/js/calendar/core_main.js"></script>
<script src="../resources/js/calendar/day_main.js"></script>
<script src="../resources/js/calendar/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var localeSelectorEl = document.getElementById('locale-selector');
    
    var initialLocaleCode = 'ko';
    
    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      header: {
        left: 'prevYear,prev,next,nextYear today',
        center: 'title',
        right: 'dayGridMonth,dayGridWeek,dayGridDay'
      },
     // defaultDate: '2020-02-12', <- 미표기 시 현재 날짜로 감
      locale: initialLocaleCode,
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      selectable: true,
      events: 'https://fullcalendar.io/demo-events.json?overload-day',
      dateClick: function(info) {
         
      },
      
      eventClick: function(info){
    	  /*   
    	  var eventObj = info.event;
    	 // $('#calNo').val(eventObj.id);
   	  $('#deleteCalNo').val(eventObj.id);
    	  $('#title').val(eventObj.title);
    	  $('#startDate').val(moment(eventObj.start).format('YYYY-MM-DD'));
    	  $('#startTime').val(moment(eventObj.start).format('HH:mm'));
    	  $('#endDate').val(moment(eventObj.end).format('YYYY-MM-DD'));
    	  $('#endTime').val(moment(eventObj.end).format('HH:mm'));
    	  $('#calInfo').val(eventObj.groupId); */
    	  //$("input:radio[name=color]:radio[value='"+eventObj.backgroundColor+"']").prop('checked', true);
    	 // $("#delete-btn").append("<a id='deletebtn' class='btn btn-theme04' href='deleteCal.do?calNo="+eventObj.id+"'>삭제</a>");
    	  detailModal.modal('show');
      },
      
    		  
      events: [
        {
          title: 'All Day Event',
          start: '2021-06-01'
        },
        {
          title: 'Long Event',
          start: '2021-06-07',
          end: '2021-06-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2021-06-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2021-06-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2021-06-11',
          end: '2021-06-13'
        },
        {
          title: 'Meeting',
          start: '2021-06-12T10:30:00',
          end: '2021-06-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2021-06-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2021-06-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2021-06-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2021-06-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2021-06-13T07:00:00'
        },
        {
         
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2021-06-28',
          color : 'pink'
          
        }
      ]
    });

    calendar.render(); 
  });
  
 
</script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include> 
