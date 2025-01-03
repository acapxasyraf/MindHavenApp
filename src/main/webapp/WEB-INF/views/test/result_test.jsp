<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>DASS Test Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #007bff;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2rem;
            margin: 15px 0;
        }

        .score {
            font-size: 1.5rem;
            font-weight: bold;
            color: #28a745;
        }

        .indicator {
            font-size: 1.8rem;
            font-weight: bold;
            color: #dc3545;
            margin: 20px 0;
        }

        .actions {
            margin-top: 30px;
        }

        .actions a {
            text-decoration: none;
            background: #007bff;
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            transition: background 0.3s;
        }

        .actions a:hover {
            background: #0056b3;
        }

        footer {
            margin-top: 30px;
            font-size: 0.9rem;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your DASS Test Result</h1>
        <p>Total Score: <span class="score">${response.totalScore}</span></p>
        <p>Indicator: <span class="indicator">${response.indicator}</span></p>
        <div class="actions">
            <a href="/">Retake the Test</a>
        </div>
        <footer>
            <p>For further assistance, please contact a healthcare professional.</p>
        </footer>
    </div>
</body>
</html>
