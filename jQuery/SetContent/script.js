$(document).ready(function () {

    // Set Text
    $("#setTextBtn").click(function () {
        $("#textPara").text("This is NEW simple text!");
        $("#output").html("Text has been updated.");
    });

    // Set HTML
    $("#setHtmlBtn").click(function () {
        $("#textPara").html("<b>This is NEW bold HTML content!</b>");
        $("#output").html("HTML content has been updated.");
    });

    // Set Input Value
    $("#setValBtn").click(function () {
        $("#nameInput").val("Mohtashim Ansari");
        $("#output").html("Input value has been updated.");
    });

    // Set Attributes
    $("#setAttrBtn").click(function () {
        $("#myLink").attr("href", "https://youtube.com");
        $("#myLink").text("Visit YouTube");

        $("#myImg").attr({
            src: "https://via.placeholder.com/150",
            title: "New Image"
        });

        $("#textPara").attr("title", "New Updated Title");

        $("#output").html("Attributes updated successfully!");
    });

});
