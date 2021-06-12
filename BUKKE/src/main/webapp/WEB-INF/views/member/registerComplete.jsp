<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">
		<head>
			<meta charset="utf-8" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge" />
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
			<meta name="description" content="" />
			<meta name="author" content="" />
			<title>회원가입 성공</title>
			<link href="/resources/css/style.css" rel="stylesheet" />
			<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
		</head>
		<body>
			<div id="layoutError">
				<div id="layoutError_content">
					<main>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-6">
									<div class="text-center mt-4">
										<p class="lead">회원가입 성공</p>
										<p>부캐의 일원이 되신것을 환영합니다!</p>
										<c:choose>
											<c:when test="${msg eq 'shopmember'}">
												<p>부캐 기능의 원활한 사용을 위해<br>관리자 승인을 기다려주세요.(최대 1일 소요)</p>
											</c:when>
											<c:otherwise></c:otherwise>
										</c:choose>
										<a href="home.com">
											<i class="fas fa-arrow-left me-1"></i>
											홈으로 이동
										</a>
									</div>
								</div>
							</div>
						</div>
					</main>
				</div>
			</div>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		</body>
	</html>