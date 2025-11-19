// ID Selector Example
$("#btn1").click(function () {
    $("#para1").toggle();
});

// Class Selector Example
$("#btn2").click(function () {
    $(".box").css("background", "yellow");
});

// Tag Selector Example
$("#btn3").click(function () {
    $("p").css("color", "blue");
});

// Multiple Selector Example
$("#btn4").click(function () {
    $("p, .box").hide();
});
