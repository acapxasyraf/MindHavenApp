<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.List" %>
        <%@ page import="java.util.ArrayList" %>
            <%@ page import="com.example.model.Prescription" %>
                <!DOCTYPE html>
                <html>

                <head>
                    <meta charset="UTF-8">
                    <title>Medical Prescription List</title>
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
                            height: 100vh;
                            overflow: hidden;
                        }

                        .sidebar {
                            width: 250px;
                            background-color: #ffffff;
                            border-right: 1px solid #ddd;
                            display: flex;
                            flex-direction: column;
                            padding: 20px;
                        }

                        .sidebar .logo {
                            margin-bottom: 30px;
                            font-size: 1.5rem;
                            font-weight: bold;
                            color: #7c4efb;
                        }

                        .sidebar .menu {
                            list-style: none;
                        }

                        .sidebar .menu li {
                            margin-bottom: 20px;
                        }

                        .sidebar .menu li a {
                            text-decoration: none;
                            color: #444;
                            font-size: 1rem;
                            display: flex;
                            align-items: center;
                        }

                        .sidebar .menu li a:hover {
                            color: #7c4efb;
                        }

                        .sidebar .menu li a span {
                            margin-left: 10px;
                        }

                        .main-content {
                            flex: 1;
                            padding: 20px;
                            display: flex;
                            flex-direction: column;
                            gap: 20px;
                        }

                        .container {
                            margin: 40px auto;
                            max-width: 800px;
                            background: #ffffff;
                            border-radius: 10px;
                            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                            padding: 30px;
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

                        table,
                        th,
                        td {
                            border: 1px solid #ddd;
                        }

                        th,
                        td {
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
                    <div class="sidebar">
                        <div class="logo">MindHaven</div>
                        <ul class="menu">
                            <li><a href="#"><span>🏠</span> Home</a></li>
                            <li><a href="/appointment/list_appointment"><span>📅</span> Appointments</a></li>
                            <li><a href="/patient/list_patient"><span>📋</span> Patient Record</a></li>
                            <li><a href="/user/user_management"><span>👤</span> User Management</a></li>
                            <li><a href="/setting/system_setting"><span>⚙️</span> System Settings</a></li>
                            <li><a href="/setting/general_setting"><span>🛠️</span> General Settings</a></li>
                            <li><a href="/test/list_test"><span>🧪</span> Self-Test</a></li>
                        </ul>
                    </div>


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
                                    <% // Simulated back-end logic List<Prescription> prescriptions = (List
                                        <Prescription>) request.getAttribute("prescriptions");
                                            if (prescriptions == null) {
                                            prescriptions = new ArrayList<>();
                                                }

                                                for (Prescription prescription : prescriptions) {
                                                %>
                                                <tr>
                                                    <td>
                                                        <%= prescription.getName() %>
                                                    </td>
                                                    <td>
                                                        <%= prescription.getIcNumber() %>
                                                    </td>
                                                    <td>
                                                        <%= prescription.getVisitDate() %>
                                                    </td>
                                                    <td>
                                                        <ul>
                                                            <% for (String med : prescription.getMedications()) { %>
                                                                <li>
                                                                    <%= med %>
                                                                </li>
                                                                <% } %>
                                                        </ul>
                                                    </td>
                                                    <td>
                                                        <button type="button" id="presedit"
                                                            onclick="editPrescription('<%= prescription.getId() %>')">Edit</button>
                                                        <button type="button" id="presdel"
                                                            onclick="deletePrescription('<%= prescription.getId() %>')">Delete</button>
                                                    </td>
                                                </tr>
                                                <% } %>
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