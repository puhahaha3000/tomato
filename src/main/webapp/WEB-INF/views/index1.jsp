<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>tomato</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
				crossorigin="anonymous">
			<link rel="stylesheet" type="text/css" href="css/main_page.css">
		</head>
		
		<body>
			<div class="container text-center">
				<div class="row">
					<div class="col-2">
						<a href="#"><img src="img/tomatoLogo.jpg" class="img-rounded" alt="토마토" width="80px" height="80px"></a>
					</div>
					<div class="col-8">
						<div class="d-flex justify-content-center">						
						
							<form class="d-flex" role="search">
								<input class="form-control me-2" type="search" placeholder="입력해주세요" aria-label="Search">
								<button class="btn btn-outline-success searchButton" type="submit">검색</button>
							</form>
						  
						</div>
					</div>
					
					<div class="col-1" style="margin-top: 3vh;">
						<div class="mt-3"><a href="#" class="link-success" style="text-decoration-line: none;">내상점</a></div>
					</div>
					<div class="col-1" style="margin-top: 2.5vh;">
						<a href="http://localhost:8282/tomato/auth/login" class="btn btn-outline-success btn-sm" tabindex="-1" role="button" aria-disabled="true">로그인/회원가입</a>
					</div>
				</div>
				</div>
				<div class="row" style="height: 15vh;">
					<div class="col-6">
						<div class="btn-group">
							<a href="#" class="btn btn-outline-dark" aria-current="page">공지사항</a>
							<a href="#" class="btn btn-outline-dark">QnA</a>
							<a href="#" class="btn btn-outline-dark">거래게시판</a>
							<a href="member/signup_view" class="btn btn-outline-dark">회원가입</a>
						  </div>
					</div>
					
					<div class="col-3">
						
					</div>
					<div class="col-1">
						<a href="#"><img src="img/writeIcon.png" class="img-fluid" alt="쓰기"></a>
					</div>
					<div class="col-1">
						<a href="#"><img src="img/chatIcon.png" class="img-fluid" alt="채팅"></a>
					
					</div>
					<div class="col-1">
						<a href="#"><img src="img/heartIcon.png" class="img-fluid" alt="찜"></a>
					</div>
					
				</div>
				<div class="row" style="justify-content: flex-start;">
					<div class="col-1">
						<span class="h5">팝니다</span>
						
					</div>
				</div>
				<div class="row">
					<table class="table table-hover">
					
						<thead class="table-light">
							<tr>
								<th scope="col">No</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
								<th scope="col">조회수</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<tr>
								<th scope="row">1</th>
								<td>제목자리1</td>
								<td>작성자자리</td>
								<td>작성일자리</td>
								<td>조회수자리</td>

							</tr>
							<tr>
								<th scope="row">2</th>
								<td>제목자리</td>
								<td>작성자자리</td>
								<td>작성일자리</td>
								<td>조회수자리</td>

							</tr>
							<tr>
								<th scope="row">3</th>
								<td>제목자리</td>
								<td>작성자자리</td>
								<td>작성일자리</td>
								<td>조회수자리</td>

							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col" style="justify-content: center; display: flex;" >
						<a href="#" class="btn btn-outline-dark" tabindex="-1" role="button" aria-disabled="true">더보기</a>					  
					</div>
				</div>
				<div class="row" style="justify-content: flex-start;">
					<div class="col-1" style="margin-top: 3vh;">
						<span class="h5">삽니다</span>
					</div>
				</div>
				<div class="row">
					<table class="table table-hover">
					
						<thead class="table-light">
							<tr>
								<th scope="col">No</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
								<th scope="col">조회수</th>
							</tr>
						</thead>
						<tbody class="table-group-divider">
							<tr>
								<th scope="row">1</th>
								<td>제목자리</td>
								<td>작성자자리</td>
								<td>작성일자리</td>
								<td>조회수자리</td>

							</tr>
							<tr>
								<th scope="row">2</th>
								<td>제목자리</td>
								<td>작성자자리</td>
								<td>작성일자리</td>
								<td>조회수자리</td>

							</tr>
							<tr>
								<th scope="row">3</th>
								<td>제목자리</td>
								<td>작성자자리</td>
								<td>작성일자리</td>
								<td>조회수자리</td>

							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col" style="justify-content: center; display: flex;">
						<a href="#" class="btn btn-outline-dark" tabindex="-1" role="button" aria-disabled="true">더보기</a>
					</div>
				</div>
				
			</div>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
				crossorigin="anonymous"></script>
		</body>

		</html>