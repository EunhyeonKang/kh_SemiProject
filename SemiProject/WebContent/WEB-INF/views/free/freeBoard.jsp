<%@page import="free.model.vo.Free" %>
	<%@page import="java.util.ArrayList" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

			<% ArrayList<Free> list = (ArrayList<Free>) request.getAttribute("list");
					String pageNavi = (String) request.getAttribute("pageNavi");
					%>
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
										<%for(Free f : list) { %>
											<tr>
												<td>
													<%=f.getRnum() %>
												</td>
												<td><a href="/freeView?freeNo=<%= f.getFreeNo()%>">
														<%=f.getFreeTitle() %>
													</a></td>
												<td>
													<%=f.getFreeWriter() %>
												</td>
												<td>
													<%=f.getFreeDate() %>
												</td>
												<td>
													<%=f.getReadCount() %>
												</td>
												<td>0</td>
											</tr>
											<%} %>
									</tbody>
								</table>

								<!-- 로그인 체크 추가 해야 함 -->
								<div>
									<a class="btn btn-primary" href="/freeWriteFrm">글쓰기</a>
								</div>

								<div class="pageNavi">
									<%=pageNavi%>
								</div>
							</div>
							<!-- Footer -->
							<%@ include file="/WEB-INF/views/common/footer.jsp" %>
					</body>

					</html>