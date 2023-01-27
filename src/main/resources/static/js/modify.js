$(document).ready(function () {

    // 시/도를 바꿨을때 다음 시/군/구 리스트 항목 재구성하는 메소드
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
                console.log("체인지");
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
            error : function(error) {

                alert("error : " + error);
            }
        });
    });

    // 시/도를 선택했을때 다음 시/도 리스트 항목 재구성하는 메소드
    $("#sido_name").click(function() {

        $.ajax({
            async: true,
            type : 'POST',
            url : "sido_name_list",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
                console.log("클릭");
                var len = data.length;

                $("#sido_name").empty();
                $("#sido_name").append("<option value='" + "선택하세요" + "'>" + "선택하세요" + "</option>");

                for(var i = 0; i<len; i++) {
                    var sido_name = data[i];
                    $("#sido_name").append("<option value='" + sido_name + "'>" + sido_name + "</option>");
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
                console.log("읍면동");
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