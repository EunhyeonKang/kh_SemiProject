<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="/css/main.css">
  <link rel="stylesheet" href="/css/join.css">
  <link rel="stylesheet" href="/css/admin.css">
  <!-- <script type="text/javascript" src="/js/jquery-3.3.1.js"></script> -->
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap');
  </style>
  <header>
    <div class="header-wrap">
      <a href="/" class="home">해피흠</a>
      <button type="button" class="menu-btn">메뉴열기</button>
      <ul class="nav">
        <li class="nav-item"><a href="/view/goodsProduct.jsp">굿즈상품</a></li>
        <li class="nav-item"><a href="/view/supporNotice.jsp">공지사항</a></li>

        <li class="nav-item"><a href="/donation">후원하기</a></li>
        <li class="nav-item"><a href="/donationList?reqPage=1">후원게시판</a></li>
        <li class="nav-item"><a href="/freeBoard?reqPage=1">자유게시판</a></li>

      </ul>
      <div class="right-col">
        <ul class="login">
          <li class="login-item"><a href="#none">로그인</a></li>
          <li class="login-item"><a href="#none">회원가입</a></li>
        </ul>
        <a class="interior-link" href="/adminJoin">관리자</a>
      </div>
    </div>

    <div class="mobile-panel">
      <div class="panel-board">
        <button type="button" class="board-close-btn">

        </button>

        <ul class="board-nav">
          <li class="board-nav-item"><a href="#none">메뉴1</a></li>
          <li class="board-nav-item"><a href="#none">메뉴2</a></li>
          <li class="board-nav-item"><a href="#none">메뉴3</a></li>
          <li class="board-nav-item"><a href="#none">메뉴4</a></li>
          <li class="board-nav-item"><a href="#none">마이페이지</a></li>
        </ul>
        <ul class="account-list">
          <li class="account-item"><a href="#none">로그인</a></li>
          <li class="account-item"><a href="#none">회원가입</a></li>
          <li class="account-item"><a href="#none">이용약관</a></li>
          <li class="account-item"><a href="#none">개인정보처리방침</a></li>
        </ul>
      </div>
    </div>
  </header>