<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>마이페이지</title>
</head>
<body>
<header>
    <jsp:include page="../template/header.jsp" />
</header>
<table width="600" cellpadding="0" cellspacing="0" border="1">
    <form id="signInForm" action="join" method="post">
        <tr>
            <td>닉네임 : </td>
            <td>
                ${memberVO.nickname}
            </td>
        </tr>
        <tr>
            <td>내가 쓴글</td>
            <td>
                거래게시판 작성 미구현
            </td>
        </tr>
        <tr>
            <td>내가 한 찜의 개수 : </td>
            <td>찜목록 미구현</td>
        </tr>
        <tr>
            <td>참여중인 체팅방 수 : </td>
            <td>체팅방 기능 미구현</td>
        </tr>
        <tr>
            <td>내 동네 : </td>
            <td>${addressVO.sidoName} ,${addressVO.sigunguName}, ${addressVO.dongName}</td>
        </tr>
    </form>
</table>
<footer>
    <jsp:include page="../template/footer.jsp" />
</footer>
</body>
</html>