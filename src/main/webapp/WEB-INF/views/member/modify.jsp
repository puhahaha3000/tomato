<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>회원정보수정</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="../js/modify.js"></script>
</head>
<body>
<header>
    <jsp:include page="../template/header.jsp" />
</header>
<table width="600" cellpadding="0" cellspacing="0" border="1">
    <form id="signInForm" action="join" method="post">
        <tr>
            <td>아이디</td>
            <td>${memberVO.id}</td>
        </tr>
        <tr>
            <td>이름</td>
            <td>${memberVO.name}</td>
        </tr>
        <tr>
            <td>닉네임</td>
            <td>
                <input id="input_nickname" type="text" name="nickname" value="${memberVO.nickname}" size="50">
                <input id="nicknameCheck" type="button" value="닉네임 중복 확인">
            </td>
        </tr>
        <tr>
            <td>이메일</td>
            <td>
                <input id="input_email" type="text" name="email" value="${memberVO.email}" size="50">
                <input id="emailCheck" type="button" value="이메일 인증 보내기">
            </td>
        </tr>
        <tr>
            <td>인증번호</td>
            <td>
                <input id="input_emailCheck" type="text" name="email" size="50">
                <input id="emailCheckNum" type="button" value="이메일 변경">
            </td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input id="input_tel" type="text" name="tel" value="${memberVO.tel}" size="50"></td>
        </tr>
        <tr>
            <td>패스워드</td>
            <td><input id="input_pw" type="password" name="password" size="50"></td>
        </tr>
        <tr>
            <%--패스워드 체크기능 미완성--%>
            <td>패스워드 확인</td>
            <td>
                <input id="input_pwCheck" type="password" name="pwCheck" size="50">
                <input id="pwCheckbtn" type="button" value="비밀번호 변경">
            </td>
        </tr>
        <tr>
            <td>주소</td>
            <td>
                시/도
                <select id="sido_name" name="input_sido_name">
                    <option value="${userAddress.sidoName}">${userAddress.sidoName}</option>
                </select>
                시/군/구
                <select id="sigungu_name" name="input_sigungu_name">
                    <option value="${userAddress.sigunguName}">${userAddress.sigunguName}</option>
                </select>
                읍/면/동
                <select id="dong_name" name="input_dong_name">
                    <option value="${userAddress.no}">${userAddress.dongName}</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="회원정보수정"></td>
        </tr>
    </form>
</table>
<footer>
    <jsp:include page="../template/footer.jsp" />
</footer>
</body>
</html>