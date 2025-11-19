// Hide Effect
$("#hideBtn").click(function () {
    $("#box").hide();
});

// Show Effect
$("#showBtn").click(function () {
    $("#box").show();
});

// Toggle Effect
$("#toggleBtn").click(function () {
    $("#box").toggle();
});

// Fade Toggle
$("#fadeBtn").click(function () {
    $("#box").fadeToggle();
});

// Slide Toggle
$("#slideBtn").click(function () {
    $("#box").slideToggle();
});

// Animate Effect
$("#animateBtn").click(function () {
    $("#box").animate({
        width: "300px",
        height: "150px",
        opacity: 0.5,
        marginLeft: "50px"
    }, 800);
});
