<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
    <meta name="_csrf_header" th:content="${_csrf.headerName}">
    <meta name="_csrf" th:content="${_csrf.token}">
    <title>회원가입</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            // 아이디 중복 확인 버튼 눌렀을 시 아이디 중복 체크 해주는 메소드
            $("#idCheck").click(function() {
                // input_id 를 param.
                let userid =  $("#input_id").val();

                $.ajax({
                    async: true,
                    type : 'POST',
                    data : userid,
                    url : "id_confirm",
                    dataType : "json",
                    contentType: "application/json; charset=UTF-8",
                    success : function(data) {
                        if (data > 0) {
                            alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                        }
                        else {
                            alert("사용가능한 아이디입니다.");
                        }
                    },
                    error : function(error) {

                        alert("error : " + error);
                    }
                });
            });

            // 시/도를 선택했을때 다음 시/군/구 리스트 항목 재구성하는 메소드
            $("#sido_name").change(function() {
                // sido_name 를 param.
                let sido_name =  $("#sido_name").val();

                $.ajax({
                    async: true,
                    type : 'POST',
                    data : sido_name,
                    url : "sigungu_name_list",
                    dataType : "json",
                    contentType: "application/json; charset=UTF-8",
                    success : function(data) {

                        var len = data.length;

                        $("#sigungu_name").empty();
                        $("#sigungu_name").append("<option value='" + "선택하세요" + "'>" + "선택하세요" + "</option>");

                        for(var i = 0; i<len; i++) {
                            var sigungu_name = data[i];
                            $("#sigungu_name").append("<option value='" + sigungu_name + "'>" + sigungu_name + "</option>");
                        }
                    },
                    error : function(error) {

                        alert("error : " + error);
                    }
                });
            });

            // 시/군/구 를 선택했을때 다음 동 리스트 항목 재구성하는 메소드
            $("#sigungu_name").change(function() {
                // sido_name, sigungu_name 를 param.
                let sido_name =  $("#sido_name").val();
                let sigungu_name = $("#sigungu_name").val();

                $.ajax({
                    async: true,
                    type : 'POST',
                    data : { sidoName : sido_name, sigunguName : sigungu_name },
                    url : "dong_name_list",
                    // 데이터 타입 즉 서버에서 받아오는 데이터의 리턴타입을 말한다.
                    dataType : "json",
                    // 서버로 보내는 타입 (파라미터 타입)을 말한다.
                    // contentType: "application/json; charset=UTF-8",
                    success : function(data) {

                        var len = data.length;

                        $("#dong_name").empty();
                        $("#dong_name").append("<option value='" + "선택하세요" + "'>" + "선택하세요" + "</option>");

                        for(var i = 0; i < len; i++) {
                            var no = data[i].no
                            var dong_name = data[i].dong_name;
                            $("#dong_name").append("<option value='" + no + "'>" + dong_name + "</option>");
                        }
                    },
                    error : function(error) {

                        alert("error : " + error);
                    }
                });
            });

            // 닉네임 중복 확인 버튼 눌렀을 시 닉네임 중복 체크 해주는 메소드
            $("#nicknameCheck").click(function() {
                // input_nickname 를 param.
                let userNickname =  $("#input_nickname").val();

                $.ajax({
                    async: true,
                    type : 'POST',
                    data : userNickname,
                    url : "nickname_confirm",
                    dataType : "json",
                    contentType: "application/json; charset=UTF-8",
                    success : function(data) {

                        if (data > 0) {
                            alert("닉네임이 존재합니다. 다른 닉네임를 입력해주세요.");
                        }
                        else {
                            alert("사용가능한 닉네임입니다.");
                        }
                    },
                    error : function(error) {

                        alert("error : " + error);
                    }
                });
            });

            $("#signInForm").submit(function (event) {

                event.preventDefault();

                let id = $("#input_id").val();
                let no = $("#dong_name").val();
                let password = $("#input_pw").val();
                let name = $("#input_name").val();
                let tel = $("#input_tel").val();
                let email = $("#input_email").val();
                let nickname = $("#input_nickname").val();


                let form = {
                    id : id,
                    addressNo : no,
                    password : password,
                    name : name,
                    tel : tel,
                    email : email,
                    nickname : nickname
                };

                console.log(JSON.stringify(form))

                $.ajax({
                    type : "POST",
                    url : "/tomato/member/signup",
                    cache : false,
                    contentType : 'application/json; charset=utf-8',
                    data : JSON.stringify(form),
                    success : function (result) {
                        console.log(result);
                        $(location).attr('href', '/tomato');
                    },
                    error : function (e) {
                        console.log(e);
                    }
                });
            });
        });

    </script>
</head>
<body>
<table width="600" cellpadding="0" cellspacing="0" border="1">
    <form id="signInForm" action="join" method="post">
        <tr>
            <%-- 아이디 중복확인 성공했을때만 회원가입 가능하도록 하는 기능 미구현 --%>
            <td>아이디</td>
            <td>
                <input id="input_id" type="text" name="id" size="50">
                <input id="idCheck" type="button" value="아이디 중복 확인">
            </td>
        </tr>
        <tr>
            <td>주소</td>
            <td>
                시/도
                <select id="sido_name" name="input_sido_name">
                    <option>선택하세요</option>
                    <c:forEach var="sido_name" items="${sido_names}">
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
        <tr>
            <td>패스워드</td>
            <td><input id="input_pw" type="password" name="password" size="50"></td>
        </tr>
        <tr>
            <%--패스워드 체크기능 미완성--%>
            <td>패스워드 확인</td>
            <td><input id="input_pwCheck" type="password" name="pwCheck" size="50"></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input id="input_name" type="text" name="name" size="50"></td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input id="input_tel" type="text" name="tel" size="50"></td>
        </tr>
        <tr>
            <td>이메일</td>
            <td><input id="input_email" type="text" name="email" size="50"></td>

        </tr>
        <tr>
            <%-- 닉네임 중복확인 성공했을때만 회원가입 가능하도록 하는 기능 미구현 --%>
            <td>닉네임</td>
            <td>
                <input id="input_nickname" type="text" name="nickname" size="50">
                <input id="nicknameCheck" type="button" value="닉네임 중복 확인">
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="회원가입"></td>
        </tr>
    </form>
</table>
</body>
</html>