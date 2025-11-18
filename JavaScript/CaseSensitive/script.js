function showCase() {

    // Correct variable
    let studentName = "Mohtashim";

    // ❌ Incorrect Case (This will show error message)
    try {
        incorrectname = studentname;  // wrong: studentname vs studentName
    } catch (error) {
        document.getElementById("incorrect").innerHTML =
            "❌ Wrong case used: 'studentname' does NOT equal 'studentName'";
    }
    

    // ✔ Correct Case
    document.getElementById("correct").innerHTML =
        "✔ Correct case used: studentName = " + studentName;
}
/*MultiLine Comment */
// Single Line Comment