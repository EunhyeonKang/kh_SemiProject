<%@page import="donation.login.Member"%>
<%@page import="donation.DonationList"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	ArrayList<DonationList> list = (ArrayList<DonationList>)request.getAttribute("list");
	String pageNavi = (String)request.getAttribute("pageNavi");
    Member m = (Member)session.getAttribute("m");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>project</title>
  <link rel="stylesheet" href="./css/main.css">
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
  <!--게시글 스트랩-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>

  <!--슬릭-->
  <link rel="stylesheet" type="text/css" href="/slick/slick/slick.css" />
  <link rel="stylesheet" type="text/css" href="/slick/slick/slick-theme.css" />
  <script type="text/javascript" src="/slick/slick/slick.js"></script>
  
  <!-- css -->
  <link href="/css/donationList.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
  <style>
  
</style>
<body>
	<!-- Header -->
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	
  <div class="layout-wrap">
    <!-- header -->
    
    <!-- header -->

    <!-- content -->
      <div class="content" style="margin-top: 80px;">
      <div class="container">
      	<br><br>
        <h2>후원게시판</h2>
        <br>                                         
        <div class="table-responsive">          
        <table class="table" style="margin: 0px;">
          <thead>
            <tr class="donahighNavi" style="background-color: #343a40; color:white;">
              <th style="text-align: center;">번호</th>
              <th style="width:130px;">후원분류</th>
              <th>금액</th>
              <th>후원인</th>
              <th>전하고싶은말</th>
              <th>수정</th>
            </tr>
          </thead>
          <tbody>
             <%for(DonationList n : list){ %>
            <tr class="donaConList" style="height:40px;">
              <td style="width: 60px;"><%=n.getDona_no() %></td>
              <td style="width: 130px;"><%=n.getPa_level() %></td>
              <td style="width: 120px;"><%=n.getPa_amount()%></td>
              <td style="width: 100px; text-align: left;"><%=n.getDona_writer()%></td>
              <td style="width: 500px; height: 40px; text-align: left; margin-left: 100px"><%=n.getDona_content()%></td>
              <td style="width: 100px;"><input type="button"  class="modifyDonation" value="수정" >            	
                <div class="alertModal" style="position: absolute;">
                  <div class="alertWrap">
                    <h2>후원내용</h2>
                    <hr>
                    <form action="#" method="post">
                      <div class="donaModal">
                        <div class="radioHover">
                          <div>후원처</div>
                          <input type="radio" id="dona_sor1" name="dona_sor" value="개인" /><label for="dona_sor1">개인</label>
                          <input type="radio" id="dona_sor2" name="dona_sor" value="법인" /><label for="dona_sor2">법인</label>
                          <input type="radio" id="dona_sor3" name="dona_sor" value="학교 및 단체" /><label for="dona_sor3">학교 및 단체</label>
                        </div>
                        <div>
                          <div>후원자</div>
                          <input type="text" name="name" style="width: 300px" value="<%=n.getDona_writer()%>"/>
                        </div>
                        <div>
                          <div>emial</div>
                          <input type="text" name="email" style="width: 100px;" /> @
                          <input type="text" name="email2" style="width: 80px;" />
                          <select class="select"style="width: 80px; height: 25px; outline: none;"onChange="selectEmail(this)">
                            <option value="">직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="yahoo.co.kr">yahoo.co.kr</option>
                            <option value="gmail.com">gmail.com</option>
                          </select>
                        </div>
                        <div>
                          <div>제목</div>
                          <input type="text" value="<%=n.getDona_title()%>">
                        </div>
                        <div>
                          <div>내용</div>
                          <textarea style="width: 300px; height: 100px; resize: none;" value="<%=n.getDona_content()%>">후원내용</textarea>
                        </div>
                      </div>
                      <div class="modifyBtn">
                        <button class="modiBtn1" id="" style="background-color: rgba(253, 56, 56, 0.788); color: white;">게시글 삭제</button>
                        <button class="modiBtn2" id="closeBtn" style="background-color: rgba(48, 48, 48, 0.753); color: white;">취소</button>
                        <button class="modiBtn3" type="submit" id="" style="background-color: orange; color: white;">수정</button>
                      </div>
                    </form>
                  </div>
              </div>
              </td>
            </tr>
            <%} %>
          </tbody>
        </table>
        </div>
        <div id="dona_pageNavi"></div>

        <div class="con1" style="overflow: hidden">
          <div id="slider-div">
            <div><img src="mini_img/16.jpg" class="slideImg" /></div>
            <div><img src="mini_img/9.jpg" class="slideImg" /></div>
            <div><img src="mini_img/10.jpg" class="slideImg" /></div>
            <div><img src="mini_img/8.jpg" class="slideImg" /></div>
            <div><img src="mini_img/5.jpg" class="slideImg" /></div>
            <div><img src="mini_img/11.jpg" class="slideImg" /></div>
          </div>
        </div>
      </div>

      <!-- footer -->
      
      <!-- footer -->

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

<script>
	$(function(){
	    $(".modifyDonation").click(function(){
	        $(this).next().css("display","flex");
	    });
	    
	    $("#closeBtn").click(function(){
	        $(".alertModal").hide();
	    });
		
	  });

  function selectEmail(ele) {
      var ele = $(".select").val();
      var email2 = $("input[name=email2]");
      email2.val(ele);
    } 
</script>
</html>











