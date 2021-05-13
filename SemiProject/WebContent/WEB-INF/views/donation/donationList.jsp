<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>project</title>
  <link rel="stylesheet" href="./css/main.css">
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
  <link href="main.css" rel="stylesheet" type="text/css" />
  <script src="main.js" type="text/javascript"></script>
  
<title>Insert title here</title>
</head>
<style>
  #slider-div img {
  width: 100%;
  height: 100%;
  }
  #slider-div {
    width: 100%;
    height: 200px;
    overflow: hidden;
  }
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
        <h2>후원게시판</h2>
        <p>실시간 후원하신 내역을 확인할수있습니다.</p>                                                                                      
        <div class="table-responsive">          
        <table class="table">
          <thead>
            <tr>
              <th>번호</th>
              <th>후원종류</th>
              <th>금액</th>
              <th>제목</th>
              <th>작성자</th>
              <th>날짜</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>기업</td>
              <td>50,000,000</td>
              <td>첫기부</td>
              <td>서준식</td>
              <td>2021-05-11</td>
            </tr>
            <tr>
              <td>2</td>
              <td>개인</td>
              <td>10,000,000</td>
              <td>살면서 처음으로</td>
              <td>서준식</td>
              <td>2021-05-11</td>
            </tr>
            <tr>
              <td>3</td>
              <td>민간 기업</td>
              <td>2,000,000</td>
              <td>좋은곳에 쓰였으면 좋겠습니다</td>
              <td>서준식</td>
              <td>2021-05-11</td>
            </tr>
          </tbody>
        </table>
        </div>
        <div id="dona_pageNavi">1 2 3 4 5</div>

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
</html>