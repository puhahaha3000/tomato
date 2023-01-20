$(document).ready(function () {
    $("#tradeForm").submit(function (event) {

        event.preventDefault();

        let memberNo = $("#memberNo").val()
        let title = $("#title").val();
        let content = $("#content").val();

        let itemCategory = $("#item_category").val();
        let addressNo = $("#dong_name").val();
        let statusNo = $("#status").val();
        let price = $("#input_price").val();


        let boardVO = {
            memberNo: memberNo,
            title: title,
            content: content,
        };

        let tradeVO = {
            itemCategory: itemCategory,
            addressNo: addressNo,
            statusNo: statusNo,
            price : price,
            boardVOList : [boardVO]
        };

        $.ajax({
            type: "POST",
            url: "/tomato/trade/write",
            cache: false,
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(tradeVO),
            success: function (result) {
                console.log(result);
                $(location).attr('href', '/tomato');
            },
            error: function (e) {
                console.log(e);
            }
        });
    });
});