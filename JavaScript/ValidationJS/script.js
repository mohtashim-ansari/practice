function validateForm() {
    let name = document.getElementById("name").value.trim();
    let email = document.getElementById("email").value.trim();
    let password = document.getElementById("password").value.trim();

    let message = "";

    // Name validation
    if (name === "") {
        message += "❌ Name is required.<br>";
    } else if (name.length < 3) {
        message += "❌ Name must be at least 3 characters.<br>";
    }

    // Email validation
    let emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;

    if (email === "") {
        message += "❌ Email is required.<br>";
    } else if (!email.match(emailPattern)) {
        message += "❌ Enter a valid email.<br>";
    }

    // Password validation
    if (password === "") {
        message += "❌ Password is required.<br>";
    } else if (password.length < 6) {
        message += "❌ Password must be at least 6 characters.<br>";
    }

    // Final output
    if (message === "") {
        message = "✅ Form submitted successfully!";
    }

    document.getElementById("output").innerHTML = message;
}
