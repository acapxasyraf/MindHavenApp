<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.model.Prescription" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medical Prescription List</title>
    <style>
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
            margin: 40px auto;
            max-width: 800px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
            display: flex;
        }

        h1 {
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        .search-container {
            text-align: center;
            margin-bottom: 20px;
        }

        input[type="text"] {
            padding: 10px;
            width: 40%;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: white;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        button {
            padding: 7px 12px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        button#presdel {
            background-color: #dc3545;
        }

        button#presdel:hover {
            background-color: #b02a37;
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
    <h1>List of Medical Prescriptions</h1>
    <div class="search-container">
        <input type="text" id="name-search" placeholder="Search for Name">
    </div>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>IC Number</th>
                <th>Date Visit</th>
                <th>Prescriptions</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Simulated back-end logic
                List<Prescription> prescriptions = (List<Prescription>) request.getAttribute("prescriptions");
                if (prescriptions == null) {
                    prescriptions = new ArrayList<>();
                }
                
                for (Prescription prescription : prescriptions) {
            %>
                <tr>
                    <td><%= prescription.getName() %></td>
                    <td><%= prescription.getIcNumber() %></td>
                    <td><%= prescription.getVisitDate() %></td>
                    <td>
                        <ul>
                            <% for (String med : prescription.getMedications()) { %>
                                <li><%= med %></li>
                            <% } %>
                        </ul>
                    </td>
                    <td>
                        <button type="button" id="presedit" onclick="editPrescription('<%= prescription.getId() %>')">Edit</button>
                        <button type="button" id="presdel" onclick="deletePrescription('<%= prescription.getId() %>')">Delete</button>
                    </td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <script>
        function editPrescription(id) {
            window.location.href = "editPrescription.jsp?id=" + id;
        }

        function deletePrescription(id) {
            if (confirm("Are you sure you want to delete this prescription?")) {
                window.location.href = "deletePrescription?id=" + id;
            }
        }
    </script>
    </div>
    </main>
</body>
</html>
