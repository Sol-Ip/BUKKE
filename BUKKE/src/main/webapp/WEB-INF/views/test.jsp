<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="common/header.jsp"></jsp:include> 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;display=swap'><link rel="stylesheet" href="./style.css">

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link href="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.css?version=1.3" rel="stylesheet" type="text/css" media="screen">
<script src="${pageContext.servletContext.contextPath}/resources/js//jquery-1.8.3.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.js?version=1.3"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" name="time" class="timepicker">

<script>
$('.timepicker').timepicker({
    timeFormat: 'p h:mm',
    interval: 60,
    minTime: '09',
    maxTime: '11:00pm',
    defaultTime: '14',
    startTime: '00:00',
    dynamic: false,
    dropdown: true,
    scrollbar: true
});	 
</script>
</body>
</html>