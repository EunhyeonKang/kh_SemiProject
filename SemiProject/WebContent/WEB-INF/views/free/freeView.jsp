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
            </head>

            <body>
              <%@ include file="/WEB-INF/views/free/freeHeader.html" %>

                <!-- Header -->
                <%@ include file="/WEB-INF/views/common/header.jsp" %>
                  <div class="container">

                  </div>
                  <!-- Footer -->
                  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
            </body>

            </html>