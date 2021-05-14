<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>freeBoard</title>

		<%@ include file="/WEB-INF/views/free/freeHeader.html" %>
			<link rel="stylesheet" href="/css/free/freeBoard.css">
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
					<a class="btn btn-primary" href="/freeWriteFrm">글쓰기</a>
				</div>
			</div>
			<!-- Footer -->
			<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>

	</html>