<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Patient Profile</title>
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
                <div class="header">
                    <h1>Patient Profile</h1>
                    <span>Patient ID: <%= request.getAttribute("patientId") %></span>
                </div>

                <div class="profile-details">
                    <div><span>Full name:</span>
                        <%= request.getAttribute("fullName") %>
                    </div>
                    <div><span>IC No:</span>
                        <%= request.getAttribute("icNo") %>
                    </div>
                    <div><span>Age:</span>
                        <%= request.getAttribute("age") %> years old
                    </div>
                    <div><span>Date of Birth:</span>
                        <%= request.getAttribute("dob") %>
                    </div>
                    <div><span>Gender:</span>
                        <%= request.getAttribute("gender") %>
                    </div>
                    <div><span>Contact No:</span>
                        <%= request.getAttribute("contactNo") %>
                    </div>
                    <div><span>Email:</span>
                        <%= request.getAttribute("email") %>
                    </div>
                    <div><span>Address:</span>
                        <%= request.getAttribute("address") %>
                    </div>
                    <div><span>Appointment Status:</span></div>
                    <div style="margin-left: 20px;">
                        <div><span>Next Appointment:</span>
                            <%= request.getAttribute("nextAppointment") %>
                        </div>
                        <div><span>Recent Appointment:</span>
                            <%= request.getAttribute("recentAppointment") %>
                        </div>
                    </div>
                </div>

                <div class="medical-history">
                    <h3>Medical History</h3>
                    <ul>
                        <% String[] medicalHistory=(String[]) request.getAttribute("medicalHistory"); for (String
                            history : medicalHistory) { %>
                            <li>
                                <%= history %>
                            </li>
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