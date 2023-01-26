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

        let file = $('#files')[0].files[0];
        let formData = new FormData();

        let boardVO = {
            memberNo: memberNo,
            title: title,
            content: content,
        };

        let tradeVO = {
            itemCategory: itemCategory,
            addressNo: addressNo,
            statusNo: statusNo,
            price: price,
            boardVOList: [boardVO],
        };

        formData.append('file', file);
        formData.append('tradeVO', new Blob([JSON.stringify(tradeVO)], {type: "application/json"}));

        $.ajax({
            type: "POST",
            url: "/tomato/trade/write",
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
});
