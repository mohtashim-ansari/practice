// ----------------- ARITHMETIC -----------------
let x = 10;
let y = 5;

document.getElementById("arithmetic").innerHTML =
    "Arithmetic: 10 + 5 = " + (x + y) +
    " | 10 - 5 = " + (x - y) +
    " | 10 * 5 = " + (x * y) +
    " | 10 / 5 = " + (x / y);


// ----------------- ASSIGNMENT -----------------
let a = 10;
a += 5;   // a = a + 5

document.getElementById("assignment").innerHTML =
    "Assignment: (a += 5) → a = " + a;


// ----------------- COMPARISON -----------------
let c1 = 10;
let c2 = "10";

document.getElementById("comparison").innerHTML =
    "Comparison: 10 == '10' → " + (c1 == c2) +
    " | 10 === '10' → " + (c1 === c2);


// ----------------- LOGICAL -----------------
let p = true;
let q = false;

document.getElementById("logical").innerHTML =
    "Logical: true && false → " + (p && q) +
    " | true || false → " + (p || q) +
    " | !true → " + (!p);


// ----------------- STRING -----------------
let first = "Hello ";
let second = "World!";

document.getElementById("string").innerHTML =
    "String: 'Hello ' + 'World!' → " + (first + second);


// ----------------- TYPEOF -----------------
let num = 100;
let text = "Hi";

document.getElementById("type").innerHTML =
    "Typeof: typeof 100 → " + typeof num +
    " | typeof 'Hi' → " + typeof text;
