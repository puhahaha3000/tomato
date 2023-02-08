<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<table width="1300" border="1">
    <c:forEach var="trade" items="${myFavorite}" varStatus="boardVOList, memberVOList ,itemCategoryVOList, addressVOList, imageVOList">
        <tr>
            <c:forEach var="image" items="${trade.imageVOList}">
                <td rowspan="2"><img src="/tomato${image.filepath}" width="150" height="150"></td>
            </c:forEach>
            <c:forEach var="board" items="${trade.boardVOList}">
                <td>
                    <a href="/tomato/trade/${board.no}">${board.title}</a>
                </td>
            </c:forEach>
            <c:forEach var="member" items="${trade.memberVOList}">
                <td>${member.nickname}</td>
            </c:forEach>
        </tr>
        <tr>
            <c:forEach var="itemName" items="${trade.itemCategoryVOList}">
                <td>상품 카테고리 :${itemName.name}</td>
            </c:forEach>
            <c:forEach var="board" items="${trade.boardVOList}">
                <td>작성일 : ${board.createDate}</td>
            </c:forEach>
                <%--<td>date : ${trade.createDate}</td>--%>
            <td>가격 : ${trade.price} 원</td>
            <c:forEach var="address" items="${trade.addressVOList}">
                <td>거래동네 : ${address.sidoName} ${address.sigunguName} ${address.dongName}</td>
            </c:forEach>
        </tr>
    </c:forEach>
</table>