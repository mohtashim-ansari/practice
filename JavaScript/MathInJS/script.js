// Absolute Value
let absoluteValue = Math.abs(-10);
document.getElementById("m1").innerHTML = "Math.abs(-10) = " + absoluteValue;

// Power
let powerValue = Math.pow(5, 2);
document.getElementById("m2").innerHTML = "Math.pow(5,2) = " + powerValue;

// Square Root
let sqrtValue = Math.sqrt(64);
document.getElementById("m3").innerHTML = "Math.sqrt(64) = " + sqrtValue;

// Round
let roundValue = Math.round(4.6);
document.getElementById("m4").innerHTML = "Math.round(4.6) = " + roundValue;

// Ceil
let ceilValue = Math.ceil(4.2);
document.getElementById("m5").innerHTML = "Math.ceil(4.2) = " + ceilValue;

// Floor
let floorValue = Math.floor(4.8);
document.getElementById("m6").innerHTML = "Math.floor(4.8) = " + floorValue;

// Random
let randomValue = Math.random();
document.getElementById("m7").innerHTML = "Math.random() = " + randomValue;

// Max & Min
let maximumValue = Math.max(10, 55, 66, 99);
let minimumValue = Math.min(10, 55, 66, 99);
document.getElementById("m8").innerHTML =
    "Math.max = " + maximumValue + " | Math.min = " + minimumValue;
