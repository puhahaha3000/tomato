$(document).ready(function () {

    // 아이디 중복 확인 버튼 눌렀을 시 아이디 중복 체크 해주는 메소드
    $("#idCheck").click(function () {
        // input_id 를 param.
        let userid = $("#input_id").val();

        $.ajax({
            async: true,
            type: 'POST',
            data: userid,
            url: "id_confirm",
            dataType: "json",
            contentType: "application/json; charset=UTF-8",
            success: function (data) {
                if (data > 0) {
                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                }
                else {
                    alert("사용가능한 아이디입니다.");
                }
            },
            error: function (error) {

                alert("error : " + error);
            }
        });
    });

    // 시/도를 선택했을때 다음 시/군/구 리스트 항목 재구성하는 메소드
    $("#sido_name").change(function () {
        // sido_name 를 param.
        let sidoName = $("#sido_name").val();

        $.ajax({
            async: true,
            type: 'POST',
            data: sidoName,
            url: "sigungu_name_list",
            dataType: "json",
            contentType: "application/json; charset=UTF-8",
            success: function (data) {

                if(data[0].dongName == "가람동") {

                    var len = data.length;
                    $("#sigungu_name").empty();
                    $("#dong_name").empty();
                    $("#sigungu_name").append("<option value='" + "null" + "'>" + "---" + "</option>");
                    $("#dong_name").append("<option value='" + "null" + "'>" + "선택하세요" + "</option>");

                    for (var i = 0; i < len; i++) {
                        var no = data[i].no
                        var dong_name = data[i].dongName;
                        $("#dong_name").append("<option value='" + no + "'>" + dong_name + "</option>");
                    }
                }
                else {
                    var len = data.length;
                    $("#sigungu_name").empty();
                    $("#dong_name").empty();
                    $("#sigungu_name").append("<option value='" + "선택하세요" + "'>" + "선택하세요" + "</option>");

                    for (var i = 0; i < len; i++) {
                        var sigungu_name = data[i];
                        $("#sigungu_name").append("<option value='" + sigungu_name + "'>" + sigungu_name + "</option>");
                    }
                }
            },
            error: function (error) {

                alert("error : " + error);
            }
        });
    });

    // 시/군/구 를 선택했을때 다음 동 리스트 항목 재구성하는 메소드
    $("#sigungu_name").change(function () {
        // sido_name, sigungu_name 를 param.
        let sidoName = $("#sido_name").val();
        let sigunguName = $("#sigungu_name").val();

        $.ajax({
            async: true,
            type: 'POST',
            data: { sidoName: sidoName, sigunguName: sigunguName },
            url: "dong_name_list",
            // 데이터 타입 즉 서버에서 받아오는 데이터의 리턴타입을 말한다.
            dataType: "json",
            // 서버로 보내는 타입 (파라미터 타입)을 말한다.
            // contentType: "application/json; charset=UTF-8",
            success: function (data) {

                var len = data.length;

                $("#dong_name").empty();
                $("#dong_name").append("<option value='" + "선택하세요" + "'>" + "선택하세요" + "</option>");

                for (var i = 0; i < len; i++) {
                    var no = data[i].no
                    var dongName = data[i].dongName;
                    $("#dong_name").append("<option value='" + no + "'>" + dongName + "</option>");
                }
            },
            error: function (error) {

                alert("error : " + error);
            }
        });
    });

    // 닉네임 중복 확인 버튼 눌렀을 시 닉네임 중복 체크 해주는 메소드
    $("#nicknameCheck").click(function () {
        // input_nickname 를 param.
        let userNickname = $("#input_nickname").val();

        $.ajax({
            async: true,
            type: 'POST',
            data: userNickname,
            url: "nickname_confirm",
            dataType: "json",
            contentType: "application/json; charset=UTF-8",
            success: function (data) {

                if (data > 0) {
                    alert("닉네임이 존재합니다. 다른 닉네임를 입력해주세요.");
                }
                else {
                    alert("사용가능한 닉네임입니다.");
                }
            },
            error: function (error) {

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
            id: id,
            addressNo: no,
            password: password,
            name: name,
            tel: tel,
            email: email,
            nickname: nickname
        };

        console.log(JSON.stringify(form))

        $.ajax({
            type: "POST",
            url: "/tomato/member/signup",
            cache: false,
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(form),
            success: function (result) {
                console.log(result);
                $(location).attr('href', '/tomato');
            },
            error: function (e) {
                console.log(e);
            }
        });
    });

    /*$("#pwCheckbtn").click(function() {

        let id = $("#input_id").val();
        let pw = $("#password").val();
        let pwCheck = $("#input_pwCheck").val();
        let number = pw.search('/[0-9]/g');
        let english = pw.search(/[a-z]/ig);
        let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

        if (pw.length < 8 || pw.length > 20) {
            alert("8자리 ~ 20자리 이내로 입력해주세요.");
            return false;

        } else if (pw.search(/\s/) != -1) {
            alert("비밀번호는 공백 없이 입력해주세요.");
            return false;

        } else if (number < 0 || english < 0 || spece < 0) {
            alert("영문,숫자,특수문자를 혼합하여 입력해주세요.");
            return false;

        } else if ((number < 0 && english < 0) || (english < 0 && spece < 0) || (spece < 0 && number < 0)) {
            alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
            return false;

        } else if (/(\w)\1\1\1/.test(pw)) {
            alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            return false;

        } else if (pw.search(id) > -1) {
            alert("비밀번호에 아이디가 포함되었습니다.");
            return false;
        }
        else if( pw != pwCheck ) {
            alert("비밀번호불일치");
            return false;
        }
        else {
            alert("비밀번호가 정상적으로 입력되었습니다.");
            return true;
        }

        /!*if (false === reg.test(pw)) {
            alert('비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.');
            return false;
        }
        else if( pw != pwCheck ) {
            alert("비밀번호불일치");
            return false;
        }
        else {
            alert("비밀번호가 정상적으로 입력되었습니다.");
            return true;
        }*!/
    });*/
});