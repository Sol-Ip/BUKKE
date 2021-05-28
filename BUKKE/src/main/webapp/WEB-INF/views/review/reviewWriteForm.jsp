<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../common/header.jsp?active=review"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
</head>
<body>
	<!-- fixed section -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Review Write</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Review <i class="ion-ios-arrow-forward"></i></span> <span>WRITE <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
	<!-- fixed section END-->
	<br style="clear:both">
	
	<!-- <div class="container"> -->
			<div class="row justify-content-center mb-5">
				<div class="col-md-6 heading-section ftco-animate">
					<span class="subheading subheading-with-line"><small
						class="pr-2 bg-white">REVIEW</small></span>
					<h2 class="mb-2">WRITE</h2>
				</div>
			</div>
	
	<form action="reviewAdd.com" method="post" enctype="multipart/form-data">
		<div class="container">
		<table align="center" border="1" cellspacing="0">
			
			<!-- <tr>
				<td>제목</td>
				<td><input type="text" size="50" name="reviewTitle"></td>
			</tr> -->
			
			<%-- <tr>
				<td>작성자</td>
				<td><input type="text" size="50" name="memberId" value="${loginMember.memberId }" readonly></td>
			</tr> --%>
			<div class="float-center form-group" align="center">
			<input type="text" name="reviewTitle" class="form-control mt-4 mb-2"
				placeholder="제목을 입력해주세요." required>
			<input type="text" class="form-control" size="50" name="memberId" value="${loginMember.memberId }" readonly></td>
				<textarea class="form-control" rows="10" name="reviewContents"
					placeholder="내용을 입력해주세요" required></textarea>
				<input type="file" class="form-control" size="50" name="uploadFile">
				
				<input type="submit" class="float-center btn btn-lg btn-primary" value="등록">&nbsp;&nbsp;
				<input type="reset" class="float-center btn btn-lg btn-outline-warning" value="취소">	
			</div>

			<!-- <tr>
				<td>내용</td>
				<td><textarea rows="7" cols="50" name="reviewContents"></textarea></td>
			</tr> -->
			
			
			<!-- <tr>
				<td>첨부파일</td>
				<td><input type="file" size="50" name="uploadFile"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">&nbsp;&nbsp;
					<input type="reset" value="취소">
				</td>
			</tr> -->
		</table>
		</div>
	</form>	
</body>
</html>
<jsp:include page="../common/footer.jsp"></jsp:include>