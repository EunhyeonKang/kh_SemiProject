<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/main.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>

    <!-- slick -->
    <link rel="stylesheet" type="text/css" href="slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick/slick-theme.css" />
    <script type="text/javascript" src="slick/slick/slick.js"></script>
    <link href="/css/donation1.css" rel="stylesheet" type="text/css" />
    <script src="/slick/main.js" type="text/javascript"></script>

    <!--나눔고딕체-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"rel="stylesheet"/>

    <!--css-->
    <link href="/css/mypage.css" rel="stylesheet" type="text/css" />
  </head>

  <body>
  <%@ include file="/WEB-INF/views/common/header.jsp" %>
  <form action="/memberMyPage2" method="post">
    <div class="layout-wrap">
      
      <style>
        .myPage{
          border: 0px solid black;
          width: 75%;
          height: 700px;
          margin: 0 auto;
          background-color: rgba(236, 236, 236, 0.877);
          margin-top: 10px;
        }

      </style>

      <!-- content -->
      <div class="content" style="width: 1100px; margin: 0 auto">
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
        <div class="donation_pan">
          <div class="myPage">
            <div class="myPageMent" style="padding-top:20px;"><p>마이페이지</p></div>
            <div class="myConCon">
              <div class="myCon1">
                <div class="myCon11" >
                  <img src="/SemiProject/mini_img/man.jpg">
                </div>
                <div class="myCon12">유저이름</div>
              </div>
              <div class="myCon2">
                <div>
                  <div>아이디</div>
                  <div><input type="text" name="id" value="<%=m.getMemberId()%>"></div>
                </div>
                <div>
                  <div>비밀번호</div>
                  <div><input type="password" name="password" value="<%=m.getMemberPw()%>"></div>
                </div>
                <div>
                  <div>이메일</div>
                  <div><input type="text" name="email" value="<%=m.getMemberEmail()%>"></div>
                </div>
                <div>
                  <div>전화번호</div>
                  <div><input type="text" name="phone" value="<%=m.getPhone()%>"></div>
                </div>
                <div>
                  <div>주소</div>
                  <div><input type="text" name="addr" value="<%=m.getMemberAddr()%>"></div>
                </div>
                <div>
                  <div class="fileChoice" style="width: 80px;"><input type="file" value="사진변경"></div>
                  <div>/img/img/pic34.jpg</div>
                </div>
                <hr width="75%">
                <div>
                  <input style="margin: 0 atuo;" class="modifyBtn" type="button" value="수정하기">
                </div>
              </div>
              <div class="donaMoney">
                후원내역 500000000원
              </div>
            </div>
            
          </div>
        </div>

        <!--pan -->
      <style>
       
      </style>

      <script>
       
      </script>

      
    </div>
    </form>
  </body>
</html>