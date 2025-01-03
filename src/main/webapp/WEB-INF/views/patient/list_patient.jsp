<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Record</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
            display: flex;
        }

        .sidebar {
            width: 250px;
            background-color: #4A90E2;
            color: white;
            border-right: 1px solid #ddd;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: fixed;
            height: 100%;
        }

        .sidebar .logo {
            text-align: center;
            margin-bottom: 20px;
        }

        .sidebar .logo h1 {
            font-size: 20px;
            margin: 0;
            text-transform: uppercase;
        }

        .nav-menu ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .nav-menu li {
            margin-bottom: 15px;
        }

        .nav-menu a {
            text-decoration: none;
            color: white;
            font-size: 14px;
            display: block;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .nav-menu a:hover {
            background-color: #357ABD;
        }

        .nav-menu a.active {
            background-color: white;
            color: #4A90E2;
            font-weight: bold;
        }

        .nav-menu .badge {
            background-color: #ff0000;
            color: #fff;
            font-size: 12px;
            padding: 2px 6px;
            border-radius: 12px;
        }

        .main-content {
            margin-left: 270px;
            padding: 20px;
            width: calc(100% - 270px);
        }

        .container {
            max-width: 1200px;
            margin: 40px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            padding: 20px;
        }

        .header {
            padding: 20px;
            background-color: #4A90E2;
            color: #fff;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }

        .search {
            padding: 15px 20px;
            background-color: #f9f9f9;
            border-bottom: 1px solid #ddd;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .search input {
            width: 100%;
            max-width: 400px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        .add-button {
            padding: 10px 15px;
            background-color: #4A90E2;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .add-button:hover {
            background-color: #357ABD;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table thead {
            background-color: #4A90E2;
            color: #fff;
        }

        table th, table td {
            text-align: left;
            padding: 15px;
            border: 1px solid #ddd;
            font-size: 14px;
        }

        table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tbody tr:hover {
            background-color: #f1f1f1;
        }

        .pagination {
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 5px;
            background-color: #f9f9f9;
        }

        .pagination a {
            text-decoration: none;
            padding: 10px 15px;
            color: #4A90E2;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .pagination a.active {
            background-color: #4A90E2;
            color: #fff;
        }

        .pagination a:hover {
            background-color: #357ABD;
            color: #fff;
        }

        .action-icons {
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .action-icons a {
            color: #4A90E2;
            text-decoration: none;
            font-size: 16px;
            position: relative;
        }

        .action-icons a::after {
            content: attr(data-label);
            position: absolute;
            bottom: -20px;
            left: 50%;
            transform: translateX(-50%);
            background: #333;
            color: #fff;
            font-size: 12px;
            padding: 3px 6px;
            border-radius: 4px;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s ease, visibility 0.3s ease;
        }

        .action-icons a:hover::after {
            opacity: 1;
            visibility: visible;
        }
    </style>
</head>

<body>
    <aside class="sidebar">
        <div class="logo">
            <h1>MindHaven</h1>
        </div>
        <nav class="nav-menu">
            <ul>
                <li><a href="#" class="active">Home</a></li>
                <li><a href="#">Appointments <span class="badge">9</span></a></li>
                <li><a href="#">Patient Record</a></li>
                <li><a href="#">User Management</a></li>
                <li><a href="#">System Settings</a></li>
                <li><a href="#">General Settings</a></li>
                <li><a href="#">Self-Test</a></li>
            </ul>
        </nav>
    </aside>

    <main class="main-content">
        <div class="container">
            <div class="header">Patient Record</div>

            <div class="search">
                <input type="text" placeholder="Search for a patient...">
                <a href="#" class="add-button">Add New Patient</a>
            </div>

            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Patient ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Phone</th>
                        <th>Date Appointment</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Sample Data Array --%>
                    <%
                        String[][] patients = {
                            {"1", "MY012343", "Siti Fatimah Binti Johan", "29", "Female", "0176453281", "10/01/2024"},
                            {"2", "MY012323", "Abu Bakar Bin Kamal", "16", "Male", "01112345678", "07/09/2023"},
                            {"3", "MY012312", "Haris Sulaiman Bin Ahmad", "77", "Male", "0147645869", "22/02/2020"},
                            {"4", "MY012334", "Lin Xia Xia", "55", "Female", "0125678923", "14/12/2021"},
                            {"5", "MY012345", "Nur Ainon Binti Yusmadi", "29", "Female", "0179385923", "06/05/2020"}
                        };

                        for (String[] patient : patients) {
                    %>
                    <tr>
                        <td><%= patient[0] %></td>
                        <td><%= patient[1] %></td>
                        <td><%= patient[2] %></td>
                        <td><%= patient[3] %></td>
                        <td><%= patient[4] %></td>
                        <td><%= patient[5] %></td>
                        <td><%= patient[6] %></td>
                        <td class="action-icons">
                            <a href="#" class="edit-icon" data-label="Edit">✏️</a>
                            <a href="#" class="delete-icon" data-label="Delete">🗑️</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>

            <div class="pagination">
                <a href="#">Previous</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">Next</a>
            </div>
        </div>
    </main>
</body>

</html>