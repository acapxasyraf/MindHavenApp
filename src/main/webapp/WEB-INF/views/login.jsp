<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Login - MindHaven</title>
</head>
<body>
    <h1>Login</h1>
    <form action="<c:url value='/perform_login' />" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required /><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required /><br>
        <button type="submit">Login</button>
    </form>
    <p><a href="home">Back to Home</a></p>
</body>
</html>
