<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!DOCTYPE html>
	<html lang="en">
		<head>
			<meta charset="utf-8" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge" />
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
			<meta name="description" content="" />
			<meta name="author" content="" />
			<title>회원정보변경</title>
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
										<p class="lead">회원정보 변경</p>
										<c:choose>
											<c:when test="${msg eq 'success'}">
												<p>회원정보가 변경되었습니다.</p>
												<a href="memberMyPage.com">
												<i class="fas fa-arrow-left me-1"></i>
												마이페이지로 이동
												</a>
											</c:when>
											<c:otherwise>
												<p>회원정보 변경 실패</p>
												<a href="home.com">
												<i class="fas fa-arrow-left me-1"></i>
												홈으로 이동
												</a>
											</c:otherwise>
										</c:choose>
										
										
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