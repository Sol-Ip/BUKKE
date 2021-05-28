<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<style>
	
	.backgroundModal{
		position: fixed;
		background-color: white;
		width: 30%;
		left:40%;
		margin-left:-5%;
		height: 300px;
		display: none;
		top:30%;
		z-index: 1000;
		margin-top: -20px;
	
	}
	.modalContents{
		width: 100%;
		position: relative;
		 z-index: 1000; 
		 
	}
	.head{
  		height: 30px;
  		padding: 12px 30px;
  		overflow: hidden;
  		background: #e2525c;
  		
	}
	.good-job{
		 text-align: center;
		  color: #e2525c;
		  position: relative;
		   z-index: 1000; 
	}
	#close{
		width: 150px;
		  height: 30px;
		  box-sizing: border-box;
		  background: transparent;
		  border: 0;
		  padding: 1rem;
		  font-size: 1.rem;
		   position: relative; 
		  z-index: 3; 
		  background-color: #808080;
		  color: #fff;
		  border-radius: 2px;
			padding: 13px;
			margin: 0.4rem 0;
			}
	.page-wrapper{
		z-index: 1000;
		
	}
	h2{
		
	}
	</style>


<body>
	 <div id="backgroundModal" class="backgroundModal">
	 	<div class="modal-wrapper">
    <div class="head">
      <a class="btn-close trigger" href="#">
      </a>
    </div>
    <div class="modalContents">
        <div class="good-job">
          <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
          <h1>당신의 아이디는!</h1>
          <br>
          <div class="page-wrapper">
          		<h2 id="idValue">잠좀자자</h2>
  				<button id="close">취소</button>
			</div>
        </div>
    </div>
</div>
</div> 


</body>
</html>