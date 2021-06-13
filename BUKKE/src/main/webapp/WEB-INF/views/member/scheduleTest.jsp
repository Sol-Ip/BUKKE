<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Page</title>
<jsp:include page="../common/header.jsp"></jsp:include>
<!-- 사이드바 -->
<link rel="stylesheet" href="../resources/css/member/mypageSidebar.css">
<link rel="stylesheet" href="../resources/css/mypage/banner.css">
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
	width: 1100px;
	padding-top: 40px;
	padding-bottom: 120px;
	/* padding-left : 300px; */
	left: 80%;
	/* margin-left : 200px; */
	max-width: 900px;
	margin: 0 auto;
}
.banner {
		background: linear-gradient(270deg, rgba(41,206,140,1) 0%, rgba(40,189,168,1) 100%);
	}
.banner * {
	color: white;
}
.l-navbar {
	height: 1049px !important;
}
nav>* {
	width: 100%;
}
</style>
</head>
<body>
	<!-- fixed section -->
	<section class="banner hero-wrap hero-wrap-2" style="background-image: url('resources/images/mypageuser_1.jpg'); background-position:50% 80%;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">MY ACTIVITY</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="memberMyPage.com">MY INFORMATION</a></span>
					</p>
				</div>
			</div>
		</div>
		<jsp:include page="../member/memberMySideBar.jsp"></jsp:include>
	</section>
	 <!-- fixed section END-->

	<div id="info-title" class="container">
		<div class="row justify-content-center">
			<div class="col-md-8 heading-section ftco-animate">
				<div class="text1">
					<h3 class="h3Class" style="align-self: center;">BUKKE</h3>
					<h1 class="h1Class">
						<span class="fontawesome-star star"
							style="position: absolute; right: 500px;"></span> <span>MY SCHEDULE</span> <span class="fontawesome-star star"></span>
					</h1>
				</div>
			</div>
		</div>
	</div>



	<!--===================== 풀캘린더 시작 =========== -->
	<section class="ftco-animate ">
		<div class="container">
			
			<table class ="d-none"  id="data-table"> <!-- d-none 부트스트랩의 hide 기능 -->
				<c:forEach var="schedule" items="${sList}" varStatus="status">
				<tr>
					<td id=""><c:out value="${schedule.classNo}" /></td>
					<td id=""><c:out value="${schedule.activityNo}" /></td>
					<td id=""><c:out value="${schedule.title}" /></td>
					<td id=""><c:out value="${schedule.startDate}" /></td>
					<td id=""><c:out value="${schedule.endDate}" /></td>
					<td id=""><c:out value="${schedule.reservationStatus}" /></td>
					<td id=""><c:out value="${schedule.color}" /></td>
				</tr>
				</c:forEach>
			</table>
			<div class="row">
				<div class="col-sm-12">
					<div id='calendar'></div>
				</div>
			</div>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<h5>Popover in a modal</h5>
							<p>
								This <a href="#" role="button"
									class="btn btn-secondary popover-test" title="Popover title"
									data-bs-content="Popover body content is set in this attribute.">button</a>
								triggers a popover on click.
							</p>
							<hr>
							<h5>Tooltips in a modal</h5>
							<p class="tooltip-test"></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
				</div>
			</div>
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
			plugins : [ 'interaction', 'dayGrid' ],
			header : {
				left : 'prevYear,prev,next,nextYear today',
				center : 'title',
				right : 'dayGridMonth,dayGridWeek,dayGridDay'
			},
			// defaultDate: '2020-02-12', <- 미표기 시 현재 날짜로 감
			locale : initialLocaleCode,
			navLinks : true, // can click day/week names to navigate views
			editable : true,
			eventLimit : true, // allow "more" link when too many events
			selectable : true,
			events : 'https://fullcalendar.io/demo-events.json?overload-day',
			dateClick : function(info) {
			},

			eventClick : function(info) {
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
				var eventObj = info.event;
				/* 이부분에 ajax추가해서 클래스정보 가져오기 */
				$(".modal-title").html(eventObj.id);
				$(".tooltip-test").html(eventObj.title + "," + eventObj.start + "," + eventObj.test);
				$(".modal").modal("show");
			},

			events: [
				<c:forEach var="schedule" items="${sList}" varStatus="status">
		        {
		        	<c:if test="${schedule.classNo} != 0">
		         	id:'${schedule.classNo}',
		         	</c:if>
		         	<c:if test="${schedule.activityNo} != 0">
		         	id:'${schedule.activityNo}',
		         	</c:if>
		          	title: '${schedule.title}',
		          	start:'${schedule.startDate}',
		          	end:'${schedule.endDate}',
		          	color: '${schedule.color}',
		          	textColor: 'white'
		       },
		      </c:forEach>
		       ]
		});

		calendar.render();
	});
</script>
<script>
	$(document).ready(function() {
		$(".modal").on("shown.bs.modal", function() {
			$("#ipt1").focus();
		});
	});
</script>
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include> 
