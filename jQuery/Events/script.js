// Click Event
$("#clickBtn").click(function () {
    alert("Button Clicked!");
});

// Double Click Event
$("#dblBtn").dblclick(function () {
    alert("Double Click Detected!");
});

// Hover Event (mouseenter + mouseleave)
$("#hoverBox").hover(
    function () { $(this).css("background", "yellow"); },
    function () { $(this).css("background", "lightgray"); }
);

// Keyup Event (detect typing)
$("#nameInput").keyup(function () {
    console.log("You typed: " + $(this).val());
});

// Change Event (dropdown)
$("#citySelect").change(function () {
    alert("You selected: " + $(this).val());
});

// Form Submit Event
$("#myForm").submit(function (e) {
    e.preventDefault();
    alert("Form Submitted Successfully!");
});
