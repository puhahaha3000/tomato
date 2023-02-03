$(document).ready(function () {

    $("#tradeForm").submit(function (event) {

        event.preventDefault();

        let boardNo = $("#boardNo").val();
        let memberNo = $("#memberNo").val();
        let title = $("#title").val();
        let content = $("#content").val();

        let itemCategory = $("#item_category").val();
        let addressNo = $("#dong_name").val();
        let statusNo = $("#status").val();
        let price = $("#input_price").val();

        let file = $('#files')[0].files[0];
        let formData = new FormData();

        let boardVO = {
            no : boardNo,
            memberNo: memberNo,
            title: title,
            content: content,
        };

        let tradeVO = {
            boardNO : boardNo,
            itemCategory: itemCategory,
            addressNo: addressNo,
            statusNo: statusNo,
            price: price,
            boardVOList: [boardVO],
        };

        formData.append('file', file);
        formData.append('tradeVO', new Blob([JSON.stringify(tradeVO)], {type: "application/json"}));

        $.ajax({
            type: "PATCH",
            url: "/tomato/trade/modify",
            cache: false,
            contentType: false,
            processData: false,
            data: formData,
            success: function (result) {
                console.log(result);
                $(location).attr('href', '/tomato');
            },
            error: function (e) {
                console.log(e);
            }
        });
    });

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

    // 아이템 카테고리를 선택했을때 아이템 리스트 항목 재구성하는 메소드
    $("#sigungu_name").change(function() {

        $.ajax({
            async: true,
            type : 'GET',
            data : { sidoName : sidoName, sigunguName : sigunguName },
            url : "dong_name_list",
            // 데이터 타입 즉 서버에서 받아오는 데이터의 리턴타입을 말한다.
            dataType : "json",
            // 서버로 보내는 타입 (파라미터 타입)을 말한다.
            // contentType: "application/json; charset=UTF-8",
            success : function(data) {

                var len = data.length;

                $("#item_category").empty();
                $("#item_category").append("<option value='" + "선택하세요" + "'>" + "선택하세요" + "</option>");

                for(var i = 0; i < len; i++) {
                    var no = data[i].no
                    var itemCategory = data[i].name;
                    $("#item_category").append("<option value='" + no + "'>" + itemCategory + "</option>");
                }
            },
            error : function(error) {

                alert("error : " + error);
            }
        });
    });

});
