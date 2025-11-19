$(document).ready(function () {

    $("#loadBtn").click(function () {

        $("#contentBox").load("data.html", function (response, status) {
            if (status == "error") {
                $("#contentBox").html("Error loading file...");
            }
        });

    });

});
