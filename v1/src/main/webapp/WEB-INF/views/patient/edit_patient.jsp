<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Patient Profile</title>
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

            .form-container {
                width: 100%;
                max-width: 800px;
                background-color: white;
                border-radius: 8px;
                padding: 30px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            h1 {
                color: #4A90E2;
                font-size: 28px;
                text-align: center;
                margin-bottom: 10px;
            }

            p.subheader {
                font-size: 14px;
                color: #666;
                text-align: center;
                margin-bottom: 30px;
            }

            form {
                display: flex;
                flex-wrap: wrap;
                gap: 20px;
            }

            .form-group {
                width: 100%;
                display: flex;
                flex-direction: column;
            }

            .form-group.half {
                width: calc(50% - 10px);
            }

            label {
                font-weight: bold;
                margin-bottom: 8px;
                font-size: 14px;
            }

            input[type="text"],
            input[type="email"],
            input[type="date"],
            textarea,
            .radio-group {
                padding: 10px;
                font-size: 14px;
                border: 1px solid #ddd;
                border-radius: 4px;
                width: 100%;
                box-sizing: border-box;
            }

            textarea {
                resize: vertical;
                height: 100px;
            }

            .radio-group {
                display: flex;
                align-items: center;
                gap: 20px;
            }

            .form-group input[type="radio"] {
                width: auto;
                margin-right: 5px;
            }

            .button-group {
                display: flex;
                justify-content: flex-end;
                gap: 15px;
                width: 100%;
            }

            .button {
                padding: 12px 20px;
                font-size: 14px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .button.submit {
                background-color: #4A90E2;
                color: white;
            }

            .button.submit:hover {
                background-color: #357ABD;
            }

            .button.cancel {
                background-color: #E0E0E0;
                color: #333;
            }

            .button.cancel:hover {
                background-color: #C0C0C0;
            }

            @media (max-width: 768px) {
                .sidebar {
                    width: 200px;
                }

                .main-content {
                    margin-left: 220px;
                    width: calc(100% - 220px);
                }

                .form-group.half {
                    width: 100%;
                }
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
            <div class="form-container">
                <h1>Edit Patient Profile</h1>
                <p class="subheader">Update the fields as required. Ensure accuracy for proper record maintenance.</p>

                <form action="/update" method="POST">
                    <div class="form-group half">
                        <label for="patientId">Patient ID</label>
                        <input type="text" id="patientId" name="patientId" value="<%= request.getAttribute(" patientId")
                            %>" readonly>
                    </div>

                    <div class="form-group half">
                        <label for="idCard">Identification Card No</label>
                        <input type="text" id="idCard" name="idCard" value="<%= request.getAttribute(" idCard") %>">
                    </div>

                    <div class="form-group half">
                        <label for="fullName">Full Name</label>
                        <input type="text" id="fullName" name="fullName" value="<%= request.getAttribute(" fullName")
                            %>">
                    </div>

                    <div class="form-group half">
                        <label for="phone">Phone</label>
                        <input type="text" id="phone" name="phone" value="<%= request.getAttribute(" phone") %>">
                    </div>

                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" id="address" name="address" value="<%= request.getAttribute(" address") %>">
                    </div>

                    <div class="form-group half">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" value="<%= request.getAttribute(" email") %>">
                    </div>

                    <div class="form-group half">
                        <label for="dob">DOB</label>
                        <input type="date" id="dob" name="dob" value="<%= request.getAttribute(" dob") %>">
                    </div>

                    <div class="form-group">
                        <label>Gender</label>
                        <div class="radio-group">
                            <label><input type="radio" name="gender" value="female" <%="female"
                                    .equals(request.getAttribute("gender")) ? "checked" : "" %>> Female</label>
                            <label><input type="radio" name="gender" value="male" <%="male"
                                    .equals(request.getAttribute("gender")) ? "checked" : "" %>> Male</label>
                        </div>
                    </div>

                    <div class="form-group half">
                        <label for="zip">Zip / Postal Code</label>
                        <input type="text" id="zip" name="zip" value="<%= request.getAttribute(" zip") %>">
                    </div>

                    <div class="form-group half">
                        <label for="city">City</label>
                        <input type="text" id="city" name="city" value="<%= request.getAttribute(" city") %>">
                    </div>

                    <div class="form-group half">
                        <label for="state">State / Province</label>
                        <input type="text" id="state" name="state" value="<%= request.getAttribute(" state") %>">
                    </div>

                    <div class="form-group">
                        <label for="medicalHistory">Medical History</label>
                        <textarea id="medicalHistory"
                            name="medicalHistory"><%= request.getAttribute("medicalHistory") %></textarea>
                    </div>

                    <div class="button-group">
                        <button type="button" class="button cancel" onclick="window.history.back();">Cancel</button>
                        <button type="submit" class="button submit">Update</button>
                    </div>
                </form>
            </div>
        </main>
    </body>

    </html>