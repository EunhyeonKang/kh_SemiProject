<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>freeWriteFrm</title>
    <%@ include file="/WEB-INF/views/free/freeHeader.html" %>
      <!-- 서머노트 lite 버전 css/js -->
      <link rel="stylesheet" href="/summernote/summernote-lite.css">
      <script src="/summernote/summernote-lite.js"></script>
      <!-- summernote 한글 설정 -->
      <script src="/summernote/lang/summernote-ko-KR.js"></script>
  </head>

  <body>
    <!-- Header -->
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
      <div class="container">
        <h3>글쓰기</h3>
        <br>
        <form action="/freeWrite" method="post" enctype="multipart/form-data">
          <input name="freeTitle" style="width: 100%;" type="text" placeholder="제목을 입력해주세요."><br><br>
          <!-- summerEditor -->
          <div name="editorData" id="summernote" type="text" style="width: 300px; margin-bottom: 20px;"></div>
        </form>
      </div>
      <!-- Footer -->
      <%@ include file="/WEB-INF/views/common/footer.jsp" %>

        <script>
          $(function () {
            // summernote init
            $("#summernote").summernote({
              height: 300, // editor height
              focus: true, // set focus editable area
              lang: "ko-KR", // 한글설정
              placeholder: "내용을 입력하세요."
            });
          });
        </script>
  </body>

  </html>