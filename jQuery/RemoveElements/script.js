$(document).ready(function () {

    // Remove element
    $("#removeBtn").click(function () {
        $("#box").remove();
        $("#output").html("The entire element is removed!");
    });

    // Empty element
    $("#emptyBtn").click(function () {
        $("#box").empty();
        $("#output").html("The content inside the element is emptied!");
    });

});
