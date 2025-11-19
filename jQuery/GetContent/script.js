$(document).ready(function () {

    // Get Text
    $("#getTextBtn").click(function () {
        let text = $("#textPara").text();
        $("#output").html("TEXT: " + text);
    });

    // Get HTML
    $("#getHtmlBtn").click(function () {
        let html = $("#textPara").html();
        $("#output").html("HTML: " + html);
    });

    // Get Input Value
    $("#getValBtn").click(function () {
        let val = $("#nameInput").val();
        $("#output").html("VALUE: " + val);
    });

    // Get Attributes
    $("#getAttrBtn").click(function () {
        let link = $("#myLink").attr("href");
        let title = $("#textPara").attr("title");
        let img = $("#myImg").attr("src");

        $("#output").html(`
            LINK: ${link} <br>
            TITLE: ${title} <br>
            IMAGE SRC: ${img}
        `);
    });

});
