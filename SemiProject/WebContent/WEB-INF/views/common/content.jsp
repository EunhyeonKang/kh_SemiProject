<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
 .photo {
      width: 195px;
      background-color: rgb(212, 212, 212);
      height: 180px;
      box-sizing: border-box;
      width: 100%;
    }



    div img {
      width: 100%;
      /* padding: 50px; */
      box-sizing: border-box;
    }
    .content-detail>ul{

	  display: flex;
	  /* background-color:rgb(230, 231, 233); */
	}
</style>
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
        <h1><span>￦845,730,000</span></h1>
        <span><i class="fa fa-heart"></i>관심 후원</span>
      <ul>
          <li>
            <div class="photo"><img src="/img/logo.png" width="180" height="180"></div>
            <h3>제목1</h3>
            <h5>admin1</h5>
          </li>
          <li>
            <div class="photo">
              <div class="photo"><img src="/img/main1.png" width="180" height="180"></div>
              <h3>제목2</h3>
              <h5>admin2</h5>
            </div>
          </li>
          <li>
            <div class="photo">
              <div class="photo"><img src="/img/amruth-pillai-TtO9SAUEzI0-unsplash.jpg" width="180" height="180">
              </div>
              <h3>제목3</h3>
              <h5>admin3</h5>
            </div>
          </li>
          <li>
            <div class="photo">
              <div class="photo"><img src="/img/chayene-rafaela-nGwkIZFelko-unsplash.jpg" width="180" height="180">
              </div>
              <h3>제목4</h3>
              <h5>admin4</h5>
            </div>
          </li>
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