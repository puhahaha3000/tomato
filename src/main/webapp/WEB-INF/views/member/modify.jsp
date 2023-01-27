<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <html>

            <head>
                <title>회원정보수정</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
                    rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
                    crossorigin="anonymous">
                <link rel="stylesheet" type="text/css" href="../css/modify.css">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="../js/modify.js"></script>
            </head>

            <body>
                <header>
                    <jsp:include page="../template/header.jsp" />
                </header>
                <div class="container mt-5 modifyCon">
                    <table class="signupTable">

                        <form id="signInForm" action="join" method="post">
                            <tr>
                                <td>아이디</td>
                                <td>
                                    ${memberVO.id}
                                </td>
                            </tr>
                            <tr>
                                <td>이름</td>
                                <td>
                                    ${memberVO.name}
                                </td>
                            </tr>
                            <tr>
                                <td class="inputName">닉네임</td>
                                <td><input id="input_nickname" class="writeInput"type="text" name="nickname" value="${memberVO.nickname}"
                                        size="50">
                               
                                    <input id="nicknameCheck"  class="modifyBtn" type="button" value="닉네임 중복 확인">
                                </td>
                            </tr>
                            <tr>
                                <td class="inputName">이메일</td>
                                <td>
                                    <input id="input_email" type="text" class="writeInput" name="email" value="${memberVO.email}"
                                        size="50">
                                
                                    <input id="emailCheck" type="button" class="modifyBtn" value="이메일 인증 보내기">
                                </td>
                            </tr>
                            <tr>
                                <td class="inputName">인증번호</td>
                                <td><input id="input_emailCheck" type="text" class="writeInput" name="email" size="50">
                                <!--이메일 변경 버튼 구현은 나중에 여유있으면 진행(후순위)-->
                                <input id="emailCheckNum" type="button" class="modifyBtn" value="이메일 변경"></td>
                            </tr>
                            <tr>
                                <td class="inputName">전화번호</td>
                                <td><input id="input_tel" type="text"  class="writeInput" name="tel" value="${memberVO.tel}" size="50"></td>
                            </tr>
                            <tr>
                                <td class="inputName">비밀번호</td>
                                <td>
                                    <input id="input_pw" type="password" class="writeInput" name="password" size="50">
                                </td>
                            </tr>
                            <tr>
                                <%-- 닉네임 중복확인 성공했을때만 회원가입 가능하도록 하는 기능 미구현 --%>
                                    <td class="inputName">비밀번호확인</td>
                                    <td>
                                        <input id="input_pwCheck" type="password" class="writeInput" name="pwCheck" size="50">
                                    <input id="pwCheckbtn" type="button" class="modifyBtn" value="비밀번호 변경">
                                    </td>
                            </tr>
                            <tr>
                                <td class="inputName">주소</td>
                                <td>
                                    시/도
                                    <select id="sido_name" name="input_sido_name">
                                        <option>선택하세요</option>
                                        <c:forEach var="sido_name" items="${ sido_names }">
                                            <option value="${sido_name}">${sido_name}</option>
                                        </c:forEach>
                                    </select>
                                    시/군/구
                                    <select id="sigungu_name" name="input_sigungu_name">
                                        <option>선택하세요</option>
                                    </select>
                                    읍/면/동
                                    <select id="dong_name" name="input_dong_name">
                                        <option>선택하세요</option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="modifyBtn">
                                <td colspan="2"><input class="joinButton" type="submit" value="회원정보수정"></td>
                            </tr>
                        </form>
                    </table>
                </div>
                <footer>
                    <jsp:include page="../template/footer.jsp" />
                </footer>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                    crossorigin="anonymous"></script>
            </body>

            </html>