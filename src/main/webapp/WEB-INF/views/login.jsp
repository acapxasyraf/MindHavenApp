<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MindHaven Sign-In</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            max-width: 400px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        .container h1 {
            font-size: 1.8rem;
            font-weight: bold;
            color: #000;
            margin-bottom: 10px;
            text-align: center;
        }

        .container form {
            width: 100%;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-size: 0.9rem;
            margin-bottom: 5px;
            color: #444;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        .form-group input:focus {
            outline: none;
            border-color: #7c4efb;
        }

        .actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .actions a {
            color: #7c4efb;
            text-decoration: none;
            font-size: 0.9rem;
        }

        .actions a:hover {
            text-decoration: underline;
        }

        .checkbox {
            display: flex;
            align-items: center;
        }

        .checkbox input {
            margin-right: 5px;
        }

        .container button {
            width: 100%;
            padding: 10px;
            background-color: #7c4efb;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
        }

        .container button:hover {
            background-color: #6933c4;
        }

        .footer {
            margin-top: 20px;
            font-size: 0.9rem;
            color: #666;
            text-align: center;
        }

        .footer a {
            color: #7c4efb;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <% if (request.getAttribute("error") != null) { %>
            <div style="color: red; text-align: center;">
                <p><%= request.getAttribute("error") %></p>
            </div>
        <% } %>
        
        <h1>Welcome back 👋</h1>
        <form action="/loginUser" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <div class="actions">
                <div class="checkbox">
                    <input type="checkbox" id="keep-logged-in">
                    <label for="keep-logged-in">Keep me logged in</label>
                </div>
                <a href="#">Forgot password?</a>
            </div>
            <button type="submit">Sign in</button>
        </form>
        <div class="footer">
            Not a member yet? <a href="/signup">Register now</a>
        </div>
    </div>
</body>
</html>