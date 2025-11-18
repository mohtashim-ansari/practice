function generateRandom() {
    // Generate random number between 0 and 1
    let num = Math.random();

    // Display on page
    document.getElementById("output").innerHTML =
        "Random Number: " + num;
}
