$(document).ready(function () {

    // Add Class
    $("#addBtn").click(function () {
        $("#box").addClass("highlight");
        $("#output").html("highlight class added!");
    });

    // Remove Class
    $("#removeBtn").click(function () {
        $("#box").removeClass("highlight");
        $("#output").html("highlight class removed!");
    });

    // Toggle Class
    $("#toggleBtn").click(function () {
        $("#box").toggleClass("highlight");
        $("#output").html("Toggled highlight class!");
    });

    // Check Class
    $("#checkBtn").click(function () {
        if ($("#box").hasClass("highlight")) {
            $("#output").html("YES! highlight class is present.");
        } else {
            $("#output").html("NO! highlight class is not present.");
        }
    });

});
