// 1. Fade with Callback
$("#fadeBtn").click(function () {
    $("#box").fadeOut(1000, function () {
        $("#message").text("Fade Completed! (Callback fired)");
    });
});

// 2. Slide with Callback
$("#slideBtn").click(function () {
    $("#box").slideUp(1000, function () {
        $("#message").text("Slide Up Completed! (Callback fired)");
    });
});

// 3. Animate with Callback
$("#animateBtn").click(function () {
    $("#box").animate({
        width: "300px",
        height: "150px",
        marginLeft: "40px",
        opacity: 0.5
    }, 1000, function () {
        $("#message").text("Animation Completed! (Callback fired)");
    });
});
