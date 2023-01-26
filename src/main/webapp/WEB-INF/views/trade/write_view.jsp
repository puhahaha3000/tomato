<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>list</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="../js/trade_write.js"></script>
</head>
<body>
<header>
    <jsp:include page="../template/header.jsp" />
</header>
<table width="1000" cellpadding="0" cellspacing="0" border="1">
    <form id="tradeForm" action="write" method="post" enctype="multipart/form-data">
        <input type="hidden" id="memberNo" value="${memberVO.no}">
        <tr>
            <td>현재상태</td>
            <td><select id="status" name="input_status">
                <option value="1">판매중</option>
                <option value="2">예약중</option>
                <option value="3">판매완료</option>
                <option value="4">삽니다</option>
            </select></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input id="title" type="text" name="title" size="70"></td>
        </tr>
        <tr>
            <td>상품 카테고리</td>
            <td>
                <select id="item_category" name="input_item_category">
                    <option value="선택하세요">선택하세요</option>
                    <c:forEach var="itemCategory" items="${itemCategoryVO}">
                        <option value="${itemCategory.no}">${itemCategory.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>가격</td>
            <td>
                <input id="input_price" type="number" name="price" size="50">
            </td>
        </tr>
        <tr>
            <td>작성자</td>
            <td>
                ${memberVO.nickname}
            </td>
        </tr>
        <tr>
            <td>주소</td>
            <td>
                시/도
                <select id="sido_name" name="input_sido_name">
                    <option value="${addressVO.sidoName}">${addressVO.sidoName}</option>
                </select>
                시/군/구
                <select id="sigungu_name" name="input_sigungu_name">
                    <option value="${addressVO.sigunguName}">${addressVO.sigunguName}</option>
                </select>
                읍/면/동
                <select id="dong_name" name="input_dong_name">
                    <option value="${addressVO.no}">${addressVO.dongName}</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>글 내용</td>
            <td><textarea id="content" name="input_content" rows="5" cols="50"></textarea></td>
        </tr>
        <tr>
            <td>사진 추가</td>
            <td>
                <input id="files" name="fileupload" type="file" multiple="multiple"/>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="등록하기"></td>
        </tr>
    </form>
</table>
<footer>
    <jsp:include page="../template/footer.jsp" />
</footer>
</body>
</html>