// STRING
let str = "Hello JavaScript!";
document.getElementById("string").innerHTML =
    "String: " + str + " (type: " + typeof str + ")";

// NUMBER
let num = 123.45;
document.getElementById("number").innerHTML =
    "Number: " + num + " (type: " + typeof num + ")";

// BOOLEAN
let isJSFun = true;
document.getElementById("boolean").innerHTML =
    "Boolean: " + isJSFun + " (type: " + typeof isJSFun + ")";

// UNDEFINED
let x;
document.getElementById("undefined").innerHTML =
    "Undefined: " + x + " (type: " + typeof x + ")";

// NULL
let y = null;
document.getElementById("null").innerHTML =
    "Null: " + y + " (type: " + typeof y + ")";

// BIGINT
let big = 9007199254740991n;
document.getElementById("bigint").innerHTML =
    "BigInt: " + big + " (type: " + typeof big + ")";

// SYMBOL
let sym = Symbol("id");
document.getElementById("symbol").innerHTML =
    "Symbol: " + sym.toString() + " (type: " + typeof sym + ")";

// OBJECT
let person = { name: "Mohtashim", age: 22 };
document.getElementById("object").innerHTML =
    "Object: " + JSON.stringify(person) + " (type: " + typeof person + ")";

// ARRAY
let arr = [10, 20, 30];
document.getElementById("array").innerHTML =
    "Array: " + arr + " (type: " + typeof arr + ")";

// FUNCTION
function greet() {
    return "Hello!";
}
document.getElementById("function").innerHTML =
    "Function: greet() → " + greet() + " (type: " + typeof greet + ")";
