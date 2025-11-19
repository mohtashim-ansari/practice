function runCode() {
  let expr = document.getElementById("expression").value;
  
  try {
    let result = eval(expr);
    document.getElementById("output").textContent =
      result + "  (" + typeof result + ")";
  } catch (error) {
    document.getElementById("output").textContent =
      "Error: " + error.message;
  }
}
