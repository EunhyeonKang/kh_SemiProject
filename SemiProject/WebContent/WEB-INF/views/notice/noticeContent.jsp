
<%@page import="java.util.ArrayList"%>
<%@page import="notice.model.vo.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Notice n = (Notice)request.getAttribute("n");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container">
		<fieldset>
			<legend>공지사항</legend>
			<table class="table" id="noticeView" style="width:100%;">
				<tr class="table-info">
					<th colspan="4"><%=n.getNoticeTitle() %></th>
				</tr>	
				<tr class="table-light">
					<th>작성자</th>
					<th><%=n.getNoticeWriter() %></th>
					<th>작성일</th>
					<th><%=n.getNoticeDate() %></th>
				</tr>
				<tr class="table-light">
					<th>첨부파일</th>
					<th colspan="3">
						<%if(n.getFilename()!=null) {%>						
						<img src="/img/file.png" width="16px">
						<a href="/fileDown?noticeNo=<%=n.getNoticeNo()%>"><%=n.getFilename() %></a>						
						<%} %>
					</th>
				</tr>
				<tr class="table-light">
					<th>내용</th>
					<th colspan="3">
						<%=n.getNoticeContentBr()%>
					</th>
				</tr>
				<tr class="table-light">
					<th colspan="4" style="text-align:center;">
						<button class="btn btn-info" onclick="history.go(-1);">이전화면</button>
						<%if(m!=null && m.getMemberId().equals(n.getNoticeWriter())){ %>
						<a class="btn btn-info" href="/noticeUpdateFrm?noticeNo=<%=n.getNoticeNo() %>">수정하기</a>
						<a class="btn btn-info" href="/noticeDelete?noticeNo=<%=n.getNoticeNo() %>">삭제하기</a>
						<%} %>
					</th>
				</tr>
			</table>
		</fieldset>
		<%if(m!=null) {%>
		<div class="inputCommentBox">
			<form action="/insertComment" method="post">
				<ul>
					<li>
						<i class="far fa-user fa-5x"></i>
					</li>
					<li>
						<input type="hidden" name="ncLevel" value="1">
						<input type="hidden" name="ncWriter" value="<%=m.getMemberId()%>">
						<input type="hidden" name="noticeRef" value="<%=n.getNoticeNo() %>">
						<input type="hidden" name="ncRef" value="0">
						<textarea class="form-control" name="ncContent"></textarea>
					</li>
					<li>
						<button type="submit" class="btn btn-primary btn-lg btn-block">등록</button>
					</li>
				</ul>
			</form>
		</div>
		<%} %>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>









