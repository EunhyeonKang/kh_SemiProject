<%@page import="free.model.vo.FreeComment" %>
  <%@page import="java.util.ArrayList" %>
    <%@page import="free.model.vo.Free" %>
      <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

        <% Free f=(Free) request.getAttribute("f"); ArrayList<FreeComment> list = (ArrayList<FreeComment>)
            request.getAttribute("list");
            %>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <title>freeView</title>
              <!-- 폰트어썸 5.10.2 cdn -->
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
                integrity="sha512-u7ppO4TLg4v6EY8yQ6T6d66inT0daGyTodAi6ycbw9+/AU8KMLAF7Z7YGKPMRA96v7t+c7O1s6YCTGkok6p9ZA=="
                crossorigin="anonymous" />

              <link rel="stylesheet" href="/css/free/freeView.css">
              <%@ include file="/WEB-INF/views/free/freeHeader.html" %>
            </head>

            <body>
              <!-- Header -->
              <%@ include file="/WEB-INF/views/common/header.jsp" %>
                <div class="container">

                  <table class="table table-bordered">
                    <tbody>
                      <tr>
                        <th>글번호</th>
                        <td>
                          <%=f.getFreeNo() %>
                        </td>
                        <th>조회수</th>
                        <td>
                          <%=f.getReadCount() %>
                        </td>
                      </tr>

                      <tr>
                        <th>작성자</th>
                        <td>
                          <%=f.getFreeWriter() %>
                        </td>
                        <th>작성일</th>
                        <td>
                          <%=f.getFreeDate() %>
                        </td>
                      </tr>

                      <tr>
                        <th>제목</th>
                        <td colspan="3">
                          <%=f.getFreeTitle() %>
                        </td>
                      </tr>

                      <tr>
                        <td colspan="4">
                          <%= f.getFreeContent()%>
                        </td>
                      </tr>


                    </tbody>
                  </table>
                  <div class="text-center">
                    <input type="button" class="btn btn-primary" value="수정">
                    <input type="button" class="btn btn-primary" value="삭제">
                    <button class="btn btn-primary" onclick="history.go(-1);">목록</button>
                  </div>
                  <!-- <div class="float-right">
                    <button class="btn btn-primary" onclick="history.go(-1);">목록으로</button>
                  </div> -->
                </div>
                <!-- Footer -->
                <%@ include file="/WEB-INF/views/common/footer.jsp" %>

                  <script>
                    $(function () {
                      // 컬럼명 파란색 칠하기 + 글씨색 흰색
                      $("table th").addClass('bg-primary text-white');
                    });

                  </script>
            </body>

            </html>