function runCode() {
  let userCode = document.getElementById("code").value;

  try {
    let result = eval(userCode);
    document.getElementById("output").textContent =
      "Result: " + result;
  } catch (error) {
    document.getElementById("output").textContent =
      "Error: " + error.message;
  } finally {
    console.log("Execution complete.");
  }
}
