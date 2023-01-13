<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <title>회원정보수정</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            // 시/도를 선택했을때 다음 시/군/구 리스트 항목 재구성하는 메소드
            $("#sido_name").change(function() {
                // sido_name 를 param.
                let sidoName =  $("#sido_name").val();

                $.ajax({
                    async: true,
                    type : 'POST',
                    data : sidoName,
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
                let sidoName =  $("#sido_name").val();
                let sigunguName = $("#sigungu_name").val();

                $.ajax({
                    async: true,
                    type : 'POST',
                    data : { sidoName : sidoName, sigunguName : sigunguName },
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
                            var dongName = data[i].dongName;
                            $("#dong_name").append("<option value='" + no + "'>" + dongName + "</option>");
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

                // TODO: 비밀번호 입력안할시 비밀번호 데이터를 제외한 나머지 데이터로 업데이트 하는 기능
                let password = $("#input_pw").val();
                let tel = $("#input_tel").val();
                let email = $("#input_email").val();
                let nickname = $("#input_nickname").val();


                let form = {

                    addressNo : no,
                    password : password,
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
                    <option value="${addressVO.sidoName}">${addressVO.sidoName}</option>
                </select>
                시/군/구
                <select id="sigungu_name" name="input_sigungu_name">
                    <option value="${addressVO.sigunguName}">${addressVO.sigunguName}</option>
                </select>
                읍/면/동
                <select id="dong_name" name="input_dong_name">
                    <option value="${addressVO.addressNo}">${addressVO.dongName}</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="회원정보수정"></td>
        </tr>
    </form>
</table>
</body>
</html>