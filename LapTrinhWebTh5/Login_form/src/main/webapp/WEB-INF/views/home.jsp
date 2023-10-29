<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13/10/2023
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Home</title>
</head>
<body>
<div>
    <c:if test="${not empty user}">
        <h1>Welcome ${user}</h1>
    </c:if>
</div>
</body>
</html>
