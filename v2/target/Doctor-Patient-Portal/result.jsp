<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DASS Test Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
            color: #333;
            text-align: center;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .result {
            font-size: 24px;
            margin-top: 20px;
            color: #4CAF50;
        }
        .home-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .home-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your DASS Test Result</h1>
        <%-- Displaying the result using request attribute --%>
        <p class="result">You scored: <%= request.getAttribute("result") %></p>

        <%-- Home button styled for better UX --%>
        <button class="home-button" onclick="window.location.href='index.jsp';">Back to Home</button>
        <button class="home-button" onclick="window.location.href='user_appointment.jsp';">Book Appointment</button>
    </div>
</body>
</html>
