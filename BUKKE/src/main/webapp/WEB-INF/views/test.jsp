<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="common/header.jsp"></jsp:include> 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;display=swap'><link rel="stylesheet" href="./style.css">
<script src="./jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link href="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.css?version=1.3" rel="stylesheet" type="text/css" media="screen">
<script src="${pageContext.servletContext.contextPath}/resources/js//jquery-1.8.3.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.js?version=1.3"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>전체<input type="checkbox" id="allCk"></div>
<div>테스트1<input id="ck1" type="checkbox"></input></div>
<div>테스트2<input id="ck2" type="checkbox"></input></div>
<div>테스트3<input id="ck3" type="checkbox"></input></div>

<button type="button" id="btn1">1번 체크/언체크</button>
<button type="button" id="btn2">2번 체크/언체크</button>
<button type="button" id="btn3">3번 체크/언체크</button>
<script>
	$('#btn1').click(function(){
		var checked = $('#ck1').is(':checked');
		$('#ck1').prop('checked',!checked);
	});
	
	$('#btn2').click(function(){
		var checked = $('#ck2').is(':checked');
		$('#ck2').prop('checked',!checked);
	});
	
	$('#btn3').click(function(){
		var checked = $('#ck3').is(':checked');
		$('#ck3').prop('checked',!checked);
	});
	
	$('#allCk').click(function(){
		var checked = $('#allCk').is(':checked');
		
		if(checked)
			$('input:checkbox').prop('checked',true);
	});
</script>
</body>
</html>