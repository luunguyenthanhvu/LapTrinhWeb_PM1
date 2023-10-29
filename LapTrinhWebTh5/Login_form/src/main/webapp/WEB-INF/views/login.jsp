<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>">
    <title>Login Account</title>
</head>
<body>
<div class="container">
    <div class="root">
        <img class="background_img" src="<c:url value="/static/img/background_form2.jpg"/> " alt="">
        <div class="main__container">
            <div class="form__sign-in">
                <form action="login" method="post">
                    <div class="header_form">
                        <h3>Sign In</h3>
                    </div>

                    <div class="input__field">
                        <input id="username" name="username" type="text" placeholder="username or email">
                        <p class="error" id="username_error"></p>
                    </div>
                    <div class="input__field">
                        <input id="password" name="password" type="password" placeholder="password">
                        <p class="error" id="password_error"></p>

                    </div>
                    <div class="btn__sign-in">
                        <button id="signIn">SIGN IN</button>
                    </div>
                    <c:if test="${not empty user}" >
                        <p style="color: red;padding-top: 20px; text-align: center"> ${user} Not Found </p>
                    </c:if>
                    <div class="other-login">
                        <div class="sub__other-login">
                            <span>Or login with</span>
                        </div>
                        <div class="login__icon">
                            <a href="">
                                <img class="img-login" src="<c:url value="/static/img/facebook-login.png"/> " alt="">
                            </a>
                            <a href="">
                                <img class="img-login" src="<c:url value="/static/img/google-login.png"/>" alt="">
                            </a>
                        </div>
                    </div>

                    <div class="sign__up">
                        <a href="">Sign Up</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    var username = document.getElementById("username");
    var password = document.getElementById("password");

    function validateUsername() {
        var text = username.value;
        var error = document.getElementById("username_error");
        if (text == null || text.length == 0) {
            error.textContent = "Please sign in by username or email.";
            error.style.display = "block";
            return false;
        } else if (!text.includes("@gmail.com") && text.length < 6) {
            error.textContent = "Username must be > 6 characters.";
            error.style.display = "block";
            return false;
        } else if (text.includes("@gmail.com") && text.length < 10) {
            error.textContent = "Email must be valid (***@gmail.com)."
            error.style.display = "block";
            return false;
        } else {
            error.style.display = "none";
            return true;
        }
    }

    function validatePass() {
        var text = password.value;
        var error = document.getElementById("password_error");
        if (text.length == 0 || text == null) {
            error.textContent = "Please fill in password";
            error.style.display = "block";
            return false;
        } else {
            error.style.display = "none";
            return true;
        }
    }

    username.addEventListener("blur", validateUsername);
    password.addEventListener("blur", validatePass);

    var signIn = document.getElementById("signIn");
    signIn.addEventListener("click", function (event) {
        var isUsernameValid = validateUsername();
        var isPasswordValid = validatePass();

        if (!isUsernameValid || !isPasswordValid) {
            event.preventDefault();
        }
    });

</script>
</html>

