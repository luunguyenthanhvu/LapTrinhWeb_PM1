<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 30/10/2023
  Time: 1:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <%@ page isELIgnored="false" %>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty userName}">
    <h1>${userName}</h1>
</c:if>
</body>
</html>
