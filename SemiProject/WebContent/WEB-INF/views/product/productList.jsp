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
<style>
body, html{
background-color:white !important;
}

#dropdown{
   margin : 0;
   list-style-type:none;
   z-index: 10;

}
#dropdown>a{
    display:block;
     color: #fff;
    text-decoration: none;
}

.btn{
font-size : 0.765625rem;
}
.btn-info{
color:#fff;
background-color : #1f9bcf;
border-color : #1f9bcf;
}
.btn-info:hover{
color:#fff;
background-color : #1a82ae;
border-color : #1a82ae;
}

.btn1{
   float : right;
   margin-right :  3px;
   color: white;
   
}
.btn2{
   float : left;
   margin-right :  3px;
   color: white;
}

#dropdown a:hover{
 color: black;
}

.btn-info:focus{
    color: #fff;
background-color : #1a82ae;
border-color : #1a82ae;
 
}
.menubtn{
	margin-bottom : 10px;
	margin-top : 10px;
	position : relative;
}
.btn4{
position : absolute;
}
.row {
    --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0;
    display: flex;
    flex-wrap: wrap;
    margin-top: calc(var(--bs-gutter-y) * -1);
    margin-right: calc(var(--bs-gutter-x)/ -2);
    margin-left: calc(var(--bs-gutter-x)/ -2);
    z-index: 1;
}

</style>
 

</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp" %>

	<div class="container">
		<div class="menuinfo">
			<div class="titleinfo">
       			<h5 class="h5">?????????????????? </h5>
       			<p class="p1">?????? ?????? ????????? ???????????? ?????? ?????????.</p>
			</div>
		</div>
		<div class = "menubtn">
			<button onclick="dp_menu()" class="btn btn-info btn3">??????</button>
               <div class="btn btn-info btn4" id="dropdown" style="display:none;">
                  <a href="/productList?reqPage=1">??????</a>
                  <a href="/sponsList?reqPage=1&spons=????????????">????????????</a>
                  <a href="/sponsList?reqPage=1&spons=????????????">????????????</a>
                  <a href="/sponsList?reqPage=1&spons=??????">??????</a>
                  <a href="/sponsList?reqPage=1&spons=??????">??????</a>
               </div>			
               <%if(adm!=null){ %>
			<a class="btn btn-info btn1"  href="/productWriteFrm" >?????????</a>
			<%} %>
			<a class="btn btn-info btn1"  href="/productList?reqPage=1" >????????????</a>
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
                    <h3 class="title">????????? : <%=p.getProductSpons() %> </h3>
                    <div class="price"> <%=p.getProductTitle() %> </div>
                    <a class="add-to-cart" href="">?????? ?????? ??????</a> 
                </div> <br>
            </div>
        </div>  
			<%} %>
       </div> 
    	
		<div id ="pageNavi"><%=pageNavi %></div>
		<br>
	</div>
	
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
	  <script>
        function dp_menu(){
            let click = document.getElementById("dropdown");
            if(click.style.display === "none"){
                click.style.display = "inline-block";
 
            }else{
                click.style.display = "none";
 
            }
        }
    </script>

</body>
</html>