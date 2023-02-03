<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="../js/trade_write.js"></script>

<table width="1000" cellpadding="0" cellspacing="0" border="1">
    <form id="tradeForm" action="write" method="post" enctype="multipart/form-data">
        <input id="memberNo" type="hidden" name="memberNo" value="${tradeBoard.boardVOList[0].memberNo}">
        <input id="boardNo" type="hidden" name="boardNo" value="${tradeBoard.boardVOList[0].no}">
        <tr>
            <td>현재상태</td>
            <td>
                <select id="status" name="input_status">
                    <option value="1">판매중</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input id="title" type="text" name="title" size="70" value="${tradeBoard.boardVOList[0].title}"></td>
        </tr>
        <tr>
            <td>상품 카테고리</td>
            <td>
                <select id="item_category" name="input_item_category">
                    <option value="${tradeBoard.itemCategoryVOList[0].no}">${tradeBoard.itemCategoryVOList[0].name}</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>가격</td>
            <td>
                <input id="input_price" type="number" name="price" size="50" value="${tradeBoard.price}">
            </td>
        </tr>
        <tr>
            <td>작성자</td>
            <td>
                ${tradeBoard.memberVOList[0].nickname}
            </td>
        </tr>
        <tr>
            <td>주소</td>
            <td>
                시/도
                <select id="sido_name" name="input_sido_name">
                    <option value="${tradeBoard.addressVOList[0].sidoName}">${tradeBoard.addressVOList[0].sidoName}</option>
                </select>
                시/군/구
                <select id="sigungu_name" name="input_sigungu_name">
                    <option value="${tradeBoard.addressVOList[0].sigunguName}">${tradeBoard.addressVOList[0].sigunguName}</option>
                </select>
                읍/면/동
                <select id="dong_name" name="input_dong_name">
                    <option value="${tradeBoard.addressVOList[0].no}">${tradeBoard.addressVOList[0].dongName}</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>글 내용</td>
            <td><textarea id="content" name="input_content" rows="5"
                          cols="50">${tradeBoard.boardVOList[0].content}</textarea></td>
        </tr>
        <tr>
            <td>사진 추가</td>
            <td>
                <input id="files" name="fileupload" type="file" multiple="multiple"/>
            </td>
        </tr>
        <tr>
            <td>
                <a href="#">체팅하기</a>
            </td>
            <td>
                <a href="#">찜하기</a>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="수정하기">
            </td>
            <td>
                <a href="#">삭제하기</a>
            </td>
        </tr>
    </form>
</table>
