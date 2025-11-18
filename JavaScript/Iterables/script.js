/* -----------------------------------
   1. FOR LOOP 
----------------------------------- */
let text1 = "";
for (let i = 1; i <= 5; i++) {
    text1 += "Number: " + i + "<br>";
}
document.getElementById("forLoop").innerHTML = "<b>FOR LOOP</b><br>" + text1;


/* -----------------------------------
   2. WHILE LOOP 
----------------------------------- */
let i = 1;
let text2 = "";
while (i <= 5) {
    text2 += "Count: " + i + "<br>";
    i++;
}
document.getElementById("whileLoop").innerHTML = "<b>WHILE LOOP</b><br>" + text2;


/* -----------------------------------
   3. DO...WHILE LOOP 
----------------------------------- */
let j = 1;
let text3 = "";
do {
    text3 += "Value: " + j + "<br>";
    j++;
} while (j <= 5);

document.getElementById("doWhileLoop").innerHTML = "<b>DO WHILE LOOP</b><br>" + text3;


/* -----------------------------------
   4. FOR...OF LOOP (Iterables like arrays) 
----------------------------------- */
let arr = ["Apple", "Banana", "Mango"];
let text4 = "";

for (let fruit of arr) {
    text4 += fruit + "<br>";
}

document.getElementById("forOfLoop").innerHTML = "<b>FOR OF LOOP</b><br>" + text4;


/* -----------------------------------
   5. FOR...IN LOOP (Objects) 
----------------------------------- */
const person = {
    name: "John",
    age: 25,
    city: "Delhi"
};

let text5 = "";
for (let key in person) {
    text5 += key + " : " + person[key] + "<br>";
}

document.getElementById("forInLoop").innerHTML = "<b>FOR IN LOOP</b><br>" + text5;
