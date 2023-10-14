<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 14/10/2023
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>">
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="form__contact">
        <form action="">
            <div class="header__form">
                <h3>Contact Us</h3>
            </div>
            <div class="input__value">
                <label for="fullname">Full name*</label> <br>
                <input id="fullname" type="text" placeholder="Enter Your Name">
            </div>
            <p class="error" id="fullname_error"></p>
            <div class="flex__container">
                <div class="input_flex_two_child">
                    <label for="email">Email*</label> <br>
                    <input id="email" type="email" placeholder="Enter Your Email">
                </div>
                <div class="input_flex_two_child">
                    <label for="phone">Phone</label> <br>
                    <input id="phone" type="text" placeholder="Enter Number Phone">
                </div>
            </div>
            <p class="error" id="email_error"></p>
            <div class="input__value">
                <label for="needed_services">NEEDED SERVICES*</label> <br>
                <select id="needed_services">
                    <option value="" disabled selected class="font_bold"><span class="font_bold">Please chooses</span></option>
                    <option value="service1">Service 1</option>
                    <option value="service2">Service 2</option>
                    <option value="service3">Service 3</option>
                </select>
            </div>
            <p class="error" id="needed_services_error"></p>
            <div class="input__value">
                <label for="message">Message</label> <br>
                <textarea id="message" class="textarea__message" placeholder="Your message here"></textarea>
            </div>

            <div class="submit_form">
                <button id="submitBtn" class="btn_submit">Submit
                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M438.6 278.6c12.5-12.5 12.5-32.8 0-45.3l-160-160c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L338.8 224 32 224c-17.7 0-32 14.3-32 32s14.3 32 32 32l306.7 0L233.4 393.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0l160-160z"/></svg>
                </button>
            </div>

        </form>
    </div>
</div>
</body>
<script>

    // validate for full name
    var fullnameInput = document.getElementById("fullname");
    var fullnameError = document.getElementById("fullname_error");
    function checkFullName() {
        var fullname = fullnameInput.value;
        if (fullname == null || fullname.length == 0) {
            fullnameError.textContent = "Please fill in full name."
            fullnameError.style.display = "block";
            return false;
        } else if (fullname.length < 6) {
            fullnameError.textContent = "Full name must be at least 6 characters."
            fullnameError.style.display = "block";
            return false;
        } else {
            fullnameError.style.display = "none";
            return true;
        }
    }

    // validate for email
    var emailInput = document.getElementById("email");
    var emailError = document.getElementById("email_error");
    function checkEmail() {
        var email = emailInput.value;
        if (email == null || email.length == 0) {
            emailError.textContent = "Please fill in your email.";
            emailError.style.display = "block";
            return false;
        } else {
            var emailValid = "@gmail.com";
            if (!email.includes(emailValid)) {
                emailError.textContent = "Please fill in correct email type.";
                emailError.style.display = "block";
                return false;
            } else {
                emailError.style.display = "none";
                return true;
            }
        }
    }

    // validate for needed services
    var neededServicesInput = document.getElementById("needed_services");
    var servicesError = document.getElementById("needed_services_error");
    function checkServices() {
        var neededServices = neededServicesInput.value;
        if (neededServices == null || neededServices.length == 0) {
            servicesError.textContent = "Please choose a service";
            servicesError.style.display = "block";
            return false;
        } else {
            servicesError.style.display = "none";
            return true;
        }
    }

    // Xác định sự kiện gọi các hàm kiểm tra khi người dùng thao tác
    fullnameInput.addEventListener("blur", checkFullName);
    emailInput.addEventListener("blur", checkEmail);
    neededServicesInput.addEventListener("change", checkServices);

    // check button
    var submitBtn = document.getElementById("submitBtn");
    submitBtn.addEventListener("click", function (event) {
        if (checkServices() && checkEmail() && checkFullName()) {
            alert("Thanks for your contact.");
        } else {
            event.preventDefault();
            checkFullName();
            checkEmail();
            checkServices();
        }
    });
</script>
</html>

