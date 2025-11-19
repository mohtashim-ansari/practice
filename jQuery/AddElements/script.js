$(document).ready(function () {

    // Append
    $("#appendBtn").click(function () {
        $("#box").append("<p>✔ Appended at the END!</p>");
        $("#output").html("Content appended.");
    });

    // Prepend
    $("#prependBtn").click(function () {
        $("#box").prepend("<p>✔ Prepended at the START!</p>");
        $("#output").html("Content prepended.");
    });

    // After
    $("#afterBtn").click(function () {
        $("#box").after("<p>✔ Added AFTER the box!</p>");
        $("#output").html("Content added after the box.");
    });

    // Before
    $("#beforeBtn").click(function () {
        $("#box").before("<p>✔ Added BEFORE the box!</p>");
        $("#output").html("Content added before the box.");
    });

});
