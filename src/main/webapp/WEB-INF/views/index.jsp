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
					<div class="col-3">
						<img src="img/tomatoLogo.jpg" class="img-rounded" alt="토마토" width="80px" height="80px">
					</div>
					<div class="col-sm-7">
						<div class="d-flex justify-content-end">						
						<nav class="navbar bg-body-tertiary">
							<form class="d-flex" role="search">
								<input class="form-control me-2" type="search" placeholder="입력해주세요" aria-label="Search">
								<button class="btn btn-outline-success searchButton" type="submit">검색</button>
							  </form>
						  </nav>
						</div>
					</div>
					
					<div class="col-1" style="margin-top: 3vh;">
						<div class="mt-3"><a href="#" class="link-success" style="text-decoration-line: none;">내상점</a></div>
					</div>
					<div class="col-1" style="margin-top: 2.5vh;">
						<button type="button" class="btn btn-outline-primary btn-sm">로그인/회원가입</button>
					</div>
				</div>
				</div>
				<div class="row">
					<div class="col-6">
						<div class="btn-group">
							<a href="#" class="btn btn-outline-dark" aria-current="page">공지사항</a>
							<a href="#" class="btn btn-outline-dark">QnA</a>
							<a href="#" class="btn btn-outline-dark">거래게시판</a>
						  </div>
					</div>
					
					<div class="col-3">
						
					</div>
					<div class="col-1">
						쓰기
					</div>
					<div class="col-1">
						채팅
					</div>
					<div class="col-1">
						찜
					</div>
					
				</div>
				<div class="row">
					<div class="col-1">
						팝니다
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
					<div class="col">
						<p>
						
							<button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
							  더보기
							</button>
						  </p>
						  <div class="collapse" id="collapseExample">
							<div class="card card-body">
							  숨겨진 리스트 등장!
							</div>
						  </div>
					</div>
				</div>
				<div class="row">
					<div class="col-1">
						삽니다
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
					<div class="col">
						<p>
							<button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
							  더보기
							</button>
						  </p>
						  <div class="collapse" id="collapseExample2">
							<div class="card card-body">
							  숨겨진 리스트 등장!
							</div>
						  </div>
					</div>
				</div>
				
			</div>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
				crossorigin="anonymous"></script>
		</body>

		</html>