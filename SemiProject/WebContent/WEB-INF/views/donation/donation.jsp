<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/css/donation1.css">
	<link rel="stylesheet" href="/css/donation2.css">
	<link rel="stylesheet" href="/css/donation3.css">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>project</title>
    <link rel="stylesheet" href="./css/main.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>

    <!-- slick -->
    <link rel="stylesheet" type="text/css" href="/slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="/slick/slick/slick-theme.css" />
    <script type="text/javascript" src="/slick/slick/slick.js"></script>
    <link href="/slick/main.css" rel="stylesheet" type="text/css" />
    <script src="/slick/main.js" type="text/javascript"></script>

    <!--나눔고딕체-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"rel="stylesheet"/>

    <!--css-->
    <link href="/css/donation1.css" rel="stylesheet" type="text/css" />
    <link href="/css/donation2.css" rel="stylesheet" type="text/css" />
    <link href="/css/donation3.css" rel="stylesheet" type="text/css" />
  </head>

  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
      <div class="layout-wrap">
      <!-- header -->

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

        <div class="con2">
          <div class="con2_img">
            <img src="mini_img/33.jpg" style="width: 90%" />
          </div>
          <div class="con2_text">
            <p style="font-size: 25px; font-weight: bold">
              모든 어린이는 보호받을 권리가 있습니다.
            </p>
            <hr/>
            <pre style="font-size: 18px; font-family: 'Nanum Gothic', sans-serif">
  어린이는 보호와 지원을 받아야 하지만 세상의 많은 어린이들은 전쟁과 기아, 
  폭력,질병 등으로 고통받고 있습니다.
  어린이들의 생명을 구하고 삶을 개선하기 위해 유니세프는 2차 세계대전
  직후인 1946년부터 전 세계에서 어린이들을 돕는 활동을 펼치고 있습니다.
  현재 유니세프는 약 190개 국가 및 영토에서 활동하고 있으며
  157개 개발도상국에서 어린이들의 생명을 구하고, 어린이의 삶을 개선하기 
  위한 다양한 사업을 펼치고 있습니다.
          </pre
            >
          </div>
        </div>

        <div class="donation_pan">
          <div class="dona_navi">
            <div class="dona_naviCon1">STEP1<br />후원방법 선택</div>
            <div class="dona_naviCon2">STEP2<br />후원자 정보 입력</div>
            <div class="dona_naviCon3">STEP3<br />후원금 납입</div>
            <div class="dona_naviCon4">STEP4<br />후원 완료</div>
          </div>


          <form action="#" method="post">
          <div class="dona_kind">
            <p class="ment1">후원 방법을 선택해주세요</p>
            <hr width="95%">
            <div class="kind1" style="margin-left: 200px;">
              <input type="radio" id ="kind1"class="radi" name=kind value="kind1">
              <label for="kind1"><p style="font-size: 20px;">정기후원하기</p>매월 약정된 금액을 후원하여 구호활동에 참여하실수있습니다</label></div>
            <div class="kind2">
              <input type="radio" id ="kind2"class="radi" name=kind value="kind2">
              <label for="kind2"><p style="font-size: 20px;">일시후원하기</p>매월 약정된 금액을 후원하여 구호활동에 참여하실수있습니다</label></div>
          </div>
          
          <div class="dona_radio">
            <P class="ment1" style="width: 90%;">후원 종류 선택하기</P>
            <hr width="95%" style="margin-left: 30px;">
            <div class="dona_radio_con1">
              <input type="radio" id ="kind3"class="radi" name=kind1 value="kind3">
              <label for="kind3"><div>세계 어린이 돕기</div> 전세계 도움이 필요한 어린이들의 생존과 인권을 위한 유니세프의 구호 활동에 후원금이 사용됩니다.</label>
            </div>
            <div class="dona_radio_con2">
              <input type="radio" id ="kind4"class="radi" name=kind1 value="kind4">
              <label for="kind4"><div>지구 변화 돕기</div> 전쟁,환경오염,기후변화 인간에 의한 지구 환경변화를 생각한 구호 활동에 후원금이 사용됩니다.</label>
            </div>
            <div class="dona_radio_con3">
              <input type="radio" id ="kind5"class="radi" name=kind1 value="kind5">
              <label for="kind5"><div>나의 이웃 돕기</div> 인기척없이 힘들고, 고통받고 있을수있는 나의 이웃을 보살피는 구호활동에 후원금이 사용됩니다.</label>
            </div>
            <div class="dona_btn" style="height: 60px; border: none;">
              <div style="margin-left: 410px;">메인으로</div>
              <div onclick="func1()">다음</div>
            </div>
          </div>

          <!--화면2-->

          <div class="con4" style="display: none">
            <div class="con4_pan">
              <div class="con4_1">
                <p class="ment1" style="margin-bottom: 10px">
                  후원인 정보를 입력해주세요
                </p>
                <hr width="95%">
                <div class="info">
                  <div>후원인 구분</div>
                  <div>
                    <input type="radio" id="dona_sor1" name="dona_sor"/><label for="dona_sor1">개인</label>
                    <input type="radio" id="dona_sor2" name="dona_sor" /><label for="dona_sor2">법인</label>
                    <input type="radio" id="dona_sor3" name="dona_sor" /><label for="dona_sor3">학교 및 단체</label>
                  </div>
                </div>

                <div class="info">
                  <div>후원인 이름</div>
                  <div>
                    <input type="text" name="name" style="width: 300px" />
                  </div>
                </div>
                <div class="info">
                  <div>전화번호</div>
                  <div>
                    <input type="text" name="phone" style="width: 300px" />
                  </div>
                </div>
                <div class="info" style="margin-bottom: 30px">
                  <div>이메일</div>
                  <div>
                    <input type="text" name="email" />@
                    <input type="text" name="email2" />
                    <select
                      class="select"
                      style="width: 120px; height: 25px"
                      onChange="selectEmail(this)"
                    >
                      <option value="">직접입력</option>
                      <option value="naver.com">naver.com</option>
                      <option value="hanmail.net">hanmail.net</option>
                      <option value="yahoo.co.kr">yahoo.co.kr</option>
                      <option value="gmail.com">gmail.com</option>
                    </select>
                  </div>
                </div>
                <div class="info_content">
                  <p class="ment1" style="margin-bottom: 10px">
                    후원동기 및 한마디
                  </p>
                  <hr width="95%">
                  <div class="info">
                    <div>제목</div>
                    <div>
                      <input type="text" name="title" />
                    </div>
                  </div>
                  <div class="info_con">
                    <div>내용</div>
                    <div style="margin-left: 30px">
                      <textarea style="width: 600px; height: 80px"></textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class="con4_2">
                <p class="ment1" style="margin-top: 20px; margin-bottom: 20px">
                  약관 및 개인정보 수집 - 이용동의
                </p>
                <div class="agree">
                  <input type="checkbox" />
                  <p class="agree1">[+] 후원 약관 동의[필수]</p>
                </div>
                <div id="toggle1">약관 내용</div>
                <div class="agree">
                  <input type="checkbox" />
                  <p class="agree2">[+] 개인정보 수집-이용동의[필수]</p>
                </div>
                <div id="toggle2">약관 내용</div>
              </div>
              <div class="dona_btn">
                <div style="margin-left: 410px">메인으로</div>
                <div onclick="func2()">다음</div>
              </div>
            </div>
          </div>
          <!--화면3-->

          <div class="con5" style="display: none;">
            <div class="con5_1">
              <p class="ment1" style="padding-top: 40px;">후원 금액을 선택해주세요.</p>
            </div>
            <hr width="95%">

            <div class="con5_1">
              <input type="radio" id="30000" name="price_choice" value="30000" /><label for="30000">30,000원</label>
              <input type="radio" id="50000" name="price_choice" value="50000" /><label for="50000"> 50,000원</label>
              <input type="radio" id="100000" name="price_choice" value="100000" /><label for="100000">100,000원</label>
              <input type="radio" id="200000" name="price_choice" value="200000" /><label for="200000">200,000원</label>
              <input type="radio" id="gitar" name="price_choice" value="" />
              <label for="gitar"><input type="text"  name="price_choice" value=""  style=" margin-top: 20px;"/>원</label>
            </div>

            <div class="con5_1" style="padding-top: 30px;">
              <p class="ment1" style="padding-top: 15px;">후원 정보 추가 확인</p>
            </div>
            <hr width="95%">

            <div class="con5_1" >
              <p class="ment1" style="float: left; padding-top: 30px;">후원자님의 비밀번호를 입력해주세요.</p>
              <input style="float: left; margin-top: 25px; margin-left: 30px; width: 200px;" type="password" value="" />
              <input id="pass_check" style="float: left; margin-top: 25px; margin-left: 10px; width: 50px;" type="button" value="확인">
            </div>
            <div class="con5_1">
              <p style="font-weight: bold; text-align: center; color: orangered;">
                후원자님의 후원내역은 후원게시판에 작성되며, 후원자님의 선택하에 후원동기를 수정 및 삭제 가능합니다.<br>
                약정하신 금액이 인출이 되지 않거나, 후원금이 전달되지 않는경우, 1회에 한해 다음결제일에 재출금이 진행됩니다.
              </p>
            </div>
            <div class="dona_btn">
              <div style="margin-left: 410px">메인으로</div>
              <div onclick="func3()">다음</div>
            </div>
          </div>
          <div class="con6" style="display: none;">
            <div class="con6_1">
              <p style="margin-top: 20px;">후원이 완료되었습니다.</p>
            </div>
            <hr width="95%" style="margin-bottom: 30px;">
            <div class="con6_2" style="margin-bottom: 20px;">
              <div class="con6_2_1">
                <p>후원자님의 마음에 감사드립니다.</p>
                <p>후원자님의 소중한 마음이 우리 주변 이웃들에게 큰 힘이 되어 아이들에게 꿈과 희망을 줍니다<br>
                  어린이에게는 밝은 미래를 열수있는 희망을,<br>
                  노인에게는 사람들의 따뜻함을,<br>
                  나 자신에게는 베풀수 있다는 자신감을,<br>
                  우리는 하나라는걸 배우게됩니다.
                </p>
              </div>
              
              <div class="con6_2_2" >
                <img src="/mini_img/56.jpg" style="height: 100%;">
              </div>
            </div>
            <p class="ment6"">후원 내역은 후원게시판에서 확인하실수 있습니다.</p>
            
            <div class="dona_btn">
              <div style="margin-left: 410px">후원게시판</div>
              <div onclick="func4()">메인으로</div>
            </div>
          </form>
          </div>
        </div>

        <!--pan -->
      

      <script>
      
      
        function selectEmail(ele) {
          var ele = $(".select").val();
          var email2 = $("input[name=email2]");
          email2.val(ele);
        }

        function func1() {
          $(".dona_kind").css("display", "none");
          $(".dona_radio").css("display", "none");
          $(".con4").css("display", "block");
          $(".dona_naviCon1").css("background-color", "white");
          $(".dona_naviCon2").css( "background-color","rgba(0, 183, 255, 0.959)");
          
        }
        function func2() {
          $(".con4").css("display", "none");
          $(".con5").css("display", "block");
          $(".dona_naviCon2").css("background-color", "white");
          $(".dona_naviCon3").css("background-color", "rgba(0, 183, 255, 0.959)");
        }
        function func3() {
          $(".con5").css("display", "none");
          $(".con6").css("display", "block");
          $(".dona_naviCon3").css("background-color", "white");
          $(".dona_naviCon4").css("background-color", "rgba(0, 183, 255, 0.959)");
        }

        $(function () {
          $(".agree1").click(function () {
            $("#toggle1").slideToggle(200);
          });
          $(".agree2").click(function () {
            $("#toggle2").slideToggle(200);
          });
          $("#gitar")
        });
      </script>

    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>
    