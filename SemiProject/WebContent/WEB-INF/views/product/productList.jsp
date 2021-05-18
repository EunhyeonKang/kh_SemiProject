<%@page import="product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
    String pageNavi = (String)request.getAttribute("pageNavi");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<link href="/css/product/product1.css" rel="stylesheet" type="text/css">

 

</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>

	<div class="container">
		<div class="menuinfo">
			<div class="titleinfo">
       			<h5 class="h5">후원상품정보 </h5>
       			<p class="p1">후원 상품 정보를 소개하는 공간 입니다.</p>
			</div>
		<div class = "menubtn">
		<a class="btn btn-dark btn1"  href="/productWriteFrm" >글쓰기</a>
		</div>
	<div class="row">
			<% for(Product p : list) {%>
        <div class="col-md-4 col-sm-6">
            <div class="product-grid9">
                <div class="product-image9">
                    <a href="/productView?productNo=<%=p.getProductNo()%>">
                        <img class="pic-1" src="/upload/product/<%=p.getFilepath()%>">
                    </a>
                </div>
                <div class="product-content">
                    <h3 class="title">후원처 : <%=p.getProductSpons() %> </h3>
                    <div class="price"> <%=p.getProductTitle() %> </div>
                    <a class="add-to-cart" href="">제품 정보 보기</a> 
                </div> <br>
            </div>
        </div>  
       
         
			<%} %>
       </div> 
    	
		<div id ="pageNavi"><%=pageNavi %></div>
		<br>

	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>