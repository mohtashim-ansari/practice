// 1️⃣ CLICK EVENT
document.getElementById("clickBtn").addEventListener("click", function() {
    document.getElementById("clickOutput").innerHTML = 
        "✔ You clicked the button!";
});


// 2️⃣ MOUSEOVER EVENT
document.getElementById("hoverBox").addEventListener("mouseover", function() {
    this.style.background = "tomato";
    this.innerHTML = "Mouse is here!";
});

document.getElementById("hoverBox").addEventListener("mouseout", function() {
    this.style.background = "orange";
    this.innerHTML = "Hover over me";
});


// 3️⃣ KEYUP EVENT (Typing in input)
document.getElementById("inputField").addEventListener("keyup", function() {
    let text = this.value;
    document.getElementById("keyOutput").innerHTML = text;
});
