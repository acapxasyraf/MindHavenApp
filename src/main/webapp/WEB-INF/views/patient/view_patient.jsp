<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
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
            margin: 40px auto;
            max-width: 800px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #ddd;
            padding-bottom: 15px;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 24px;
            color: #4A90E2;
        }

        .header span {
            font-size: 16px;
            color: #555;
        }

        .profile-details {
            margin-bottom: 30px;
        }

        .profile-details div {
            margin-bottom: 12px;
        }

        .profile-details span {
            font-weight: bold;
            color: #333;
            margin-right: 10px;
        }

        .medical-history {
            margin-top: 20px;
        }

        .medical-history h3 {
            margin-bottom: 10px;
            color: #4A90E2;
        }

        .medical-history ul {
            list-style: disc;
            padding-left: 20px;
        }

        .medical-history ul li {
            margin-bottom: 8px;
            font-size: 14px;
            color: #333;
        }

        .button-group {
            display: flex;
            justify-content: flex-end;
            gap: 15px;
            margin-top: 30px;
        }

        .button {
            padding: 12px 20px;
            font-size: 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .button.edit {
            background-color: #4A90E2;
            color: white;
        }

        .button.edit:hover {
            background-color: #357ABD;
        }

        .button.close {
            background-color: #ddd;
            color: #333;
        }

        .button.close:hover {
            background-color: #bbb;
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
            <div class="header">
                <h1>Patient Profile</h1>
                <span>Patient ID: <%= request.getAttribute("patientId") %></span>
            </div>

            <div class="profile-details">
                <div><span>Full name:</span> <%= request.getAttribute("fullName") %></div>
                <div><span>IC No:</span> <%= request.getAttribute("icNo") %></div>
                <div><span>Age:</span> <%= request.getAttribute("age") %> years old</div>
                <div><span>Date of Birth:</span> <%= request.getAttribute("dob") %></div>
                <div><span>Gender:</span> <%= request.getAttribute("gender") %></div>
                <div><span>Contact No:</span> <%= request.getAttribute("contactNo") %></div>
                <div><span>Email:</span> <%= request.getAttribute("email") %></div>
                <div><span>Address:</span> <%= request.getAttribute("address") %></div>
                <div><span>Appointment Status:</span></div>
                <div style="margin-left: 20px;">
                    <div><span>Next Appointment:</span> <%= request.getAttribute("nextAppointment") %></div>
                    <div><span>Recent Appointment:</span> <%= request.getAttribute("recentAppointment") %></div>
                </div>
            </div>

            <div class="medical-history">
                <h3>Medical History</h3>
                <ul>
                    <% 
                        String[] medicalHistory = (String[]) request.getAttribute("medicalHistory");
                        for (String history : medicalHistory) {
                    %>
                    <li><%= history %></li>
                    <% } %>
                </ul>
            </div>

            <div class="button-group">
                <button class="button close" onclick="window.history.back();">Close</button>
                <button class="button edit">Edit</button>
            </div>
        </div>
    </main>
</body>

</html>
