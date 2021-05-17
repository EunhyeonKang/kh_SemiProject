<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>freeBoard</title>

		<link rel="stylesheet" href="/css/freeBoard.css">
		<!-- jQuery -->
		<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
		<!-- 부트스트랩 css -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
			integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
		<!-- 부트스트랩 js -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
			crossorigin="anonymous"></script>

	</head>

	<body>

		<!-- Header -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
			<div class="container">
				<h3>자유게시판</h3>
				<br>
				<table class="table table-hover">
					<thead class="thead-dark">
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회</th>
							<th>좋아요</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>1</td>
							<td><a href="#">테스트 글입니다. 제목인 것일까요</a></td>
							<td>유저01</td>
							<td>2021-05-12</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2</td>
							<td>테스트 글</td>
							<td>유저02</td>
							<td>2021-05-12</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>3</td>
							<td>테스트 글</td>
							<td>유저02</td>
							<td>2021-05-12</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>4</td>
							<td>테스트 글</td>
							<td>유저42</td>
							<td>2021-05-12</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>5</td>
							<td>테스트 글</td>
							<td>유저01</td>
							<td>2021-05-12</td>
							<td>0</td>
							<td>0</td>
						</tr>
					</tbody>
				</table>

				<div>
					<button class="btn btn-primary">글쓰기</button>
				</div>
			</div>
			<!-- Footer -->
			<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>

	</html>