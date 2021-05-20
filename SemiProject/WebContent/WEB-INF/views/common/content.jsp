<%@page import="java.text.DecimalFormat"%>
<%@page import="donation.DonationService"%>
<%@page import="donation.DonationList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int allMoney = new DonationService().allMoney();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- content -->
    <div class="content">
      <div class="content-banner">
        <div>
          <form class="example" action="/search" method="get">
            <input type="text" placeholder="키워드를 검색해 주세요" id="search" name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
          </form>
        </div>
       
      </div>
      <div class="content-detail">
      <%DecimalFormat formatter = new DecimalFormat("###,###,###"); %>
        <h1><span>￦<%=formatter.format(allMoney)%>원</span></h1>
        
        <span><i class="fa fa-heart"></i>관심 후원</span>
        <ul>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
        <span><i class="fa fa-heart"></i>곧 마감될 후원</span>
        <ul>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
      </div>
</body>
</html>