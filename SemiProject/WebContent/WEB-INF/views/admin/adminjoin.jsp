<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="content">
		<div class="content-detail">
			 <h1 class="register">관리자 회원가입
                    <hr>
                </h1>

                <fieldset class="registerForm">
                    <h3>관리자정보를 입력해주세요<sapn>(필수)</sapn>
                    </h3>
                    <hr style="border: 0.1px solid rgb(233, 232, 232);">
                    <ul>
                        <li><span>관리자아이디</span><input type="text" name="adminId" placeholder="아이디를 입력해주세요"><button
                                type="button" name="adminIdRe">중복확인</button><br></li>
                        <li><span>비밀번호</span><input type="password" name="pw" placeholder="비밀번호를 입력해주세요"><br></li>
                        <li><span>비밀번호확인</span><input type="password" name="pwRe" placeholder="비밀번호를 확인해주세요"><br></li>
                        <li><span>이름</span><input type="text" name="name" placeholder="예)홍길동"><br></li>
                        <li><span>주소</span><input type="text" name="addr" placeholder="주소를 입력해주세요"><br></li>
                    </ul>
                    <button type="button">메인으로</button>
                    <button type="button">가입하기</button>
                </fieldset>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>