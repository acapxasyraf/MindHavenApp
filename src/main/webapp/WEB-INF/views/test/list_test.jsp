<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Test Result</title>
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

            .header {
                margin-bottom: 20px;
            }

            .header h1 {
                font-size: 24px;
                color: #4A90E2;
            }

            .search {
                margin-bottom: 20px;
                display: flex;
                justify-content: flex-start;
            }

            .search input {
                padding: 10px;
                font-size: 14px;
                border: 1px solid #ddd;
                border-radius: 5px;
                width: 100%;
                max-width: 300px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: white;
                border-radius: 5px;
                overflow: hidden;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            table th,
            table td {
                padding: 15px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            table th {
                background-color: #4A90E2;
                color: white;
            }

            table tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .action {
                text-align: center;
            }

            .action a {
                color: red;
                font-size: 18px;
                text-decoration: none;
                padding: 5px 10px;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

            .action a:hover {
                background-color: #e1e1e1;
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
            <div class="header">
                <h1>Test Result</h1>
            </div>

            <div class="search">
                <input type="text" placeholder="Search">
            </div>

            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>First & Last Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Phone</th>
                        <th>Test & Date Taken</th>
                        <th>Result</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Sample Data Array --%>
                        <% String[][] results={ {"1", "Stephanie Miller" , "29" , "Female" , "(312) 522-6378"
                            , "DASS (10/01/2024)" , "Normal" }, {"2", "Brian Baker" , "16" , "Male" , "(303) 681-9258"
                            , "WHO (07/09/2023)" , "Mild Depression" }, {"3", "Ryan Smith" , "77" , "Male"
                            , "(937) 966-6855" , "PHQ-9 (22/02/2020)" , "Moderate Anxiety" }, {"4", "Olivia Lopez"
                            , "55" , "Female" , "(916) 584-1602" , "CBI (14/12/2021)" , "Severe Stress" } }; for
                            (String[] result : results) { %>
                            <tr>
                                <td>
                                    <%= result[0] %>
                                </td>
                                <td>
                                    <%= result[1] %>
                                </td>
                                <td>
                                    <%= result[2] %>
                                </td>
                                <td>
                                    <%= result[3] %>
                                </td>
                                <td>
                                    <%= result[4] %>
                                </td>
                                <td>
                                    <%= result[5] %>
                                </td>
                                <td>
                                    <%= result[6] %>
                                </td>
                                <td class="action">
                                    <a href="#" class="delete" title="Delete">🗑️</a>
                                </td>
                            </tr>
                            <% } %>
                </tbody>
            </table>
        </main>
    </body>

    </html>