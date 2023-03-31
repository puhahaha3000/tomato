$(document).ready(function () {

    // 검색
    $("#search-button").submit(function (event) {

        let itemCategory = $("#itemCategory").val();
        let search = $("#search-input").val();

        let searchParamVO = {
            itemCategory: itemCategory,
            search: search,
        };

        let formData = {
            curPage: 1,
            searchParamVO: searchParamVO
        }
        $.ajax({
            async: true,
            type: 'GET',
            data: formData,
            url: "/tomato/trade/list/",
            dataType: "json",
            contentType: "application/json; charset=UTF-8",
            success: function (data) {

                var len = data.length;
                $("#tradeList").empty();

                for (var i = 0; i < len; i++) {
                    var sigungu_name = data[i];
                    // $("#tradeList").append("<option value='" + sigungu_name + "'>" + sigungu_name + "</option>");
                    $("#tradeList").append("<tr>" +
                        "<td rowspan=\"2\"><img src=\"/tomato${" + data[i].imageVOList.filepath + "}\" width=\"150\" height=\"150\"></td>" +
                        "<td><a href="/tomato/trade/" + {board.no} + ">${board.title}</a></td>";


                }
            },
            error: function (error) {

                alert("error : " + error);
            }
        });
    });
});
