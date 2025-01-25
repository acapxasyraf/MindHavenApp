<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Edit Medical Prescription</title>
    </head>
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

        body {
            font-family: Arial, sans-serif;
        }

        form {
            width: 300px;
            margin: 0 auto;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form div {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        textarea,
        select {
            width: 100%;
            padding: 10px
        }
    </style>

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
            <div>

                <form action="updatePrescription" method="post">
                    <input type="hidden" name="id" value="<%= prescription.getId() %>">

                    <div>
                        <label for="full-name">Full Name:</label>
                        <input type="text" id="full-name" name="fullName" value="<%= prescription.getName() %>"
                            readonly>
                    </div>

                    <div>
                        <label for="ic-num">IC Number:</label>
                        <input type="text" id="ic-num" name="icNumber" value="<%= prescription.getIcNumber() %>"
                            readonly>
                    </div>

                    <div>
                        <label for="visit-date">Visit Date:</label>
                        <input type="text" id="visit-date" name="visitDate" value="<%= prescription.getVisitDate() %>"
                            readonly>
                    </div>

                    <div>
                        <label for="prescriptions">Prescriptions:</label>
                        <textarea id="prescriptions" name="medications"
                            rows="5"><%= String.join("\n", prescription.getMedications()) %></textarea>
                    </div>

                    <div>
                        <label for="remarks">Remarks:</label>
                        <textarea id="remarks" name="remarks" rows="5"><%= prescription.getRemarks() %></textarea>
                    </div>

                    <button type="submit">Save</button>
                </form>
            </div>
        </main>
    </body>

    </html>