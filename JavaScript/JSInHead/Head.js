// Script inside <head> runs too early
// so we use window.onload to wait for the HTML

window.onload = function() {
    document.getElementById("message").innerHTML =
        "✔ JavaScript ran successfully from the <head>!";
};
