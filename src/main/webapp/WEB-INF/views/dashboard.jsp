<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MindHaven Dashboard</title>
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

        .overview {
            display: flex;
            gap: 20px;
        }

        .card {
            flex: 1;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
        }

        .card h3 {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: #444;
        }

        .card p {
            font-size: 2rem;
            font-weight: bold;
            color: #7c4efb;
        }

        .reports {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 20px;
        }

        .chart {
            flex: 2;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
        }

        .performance {
            flex: 1;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
        }

        .logout-button {
            margin-top: auto;
            padding: 10px;
            background-color: #7c4efb;
            color: #ffffff;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }

        .logout-button:hover {
            background-color: #5a3ecb;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="logo">MindHaven</div>
        <ul class="menu">
            <li><a href="<c:url value='/views/dashboard.jsp' />"><span>🏠</span> Home</a></li>
            <li><a href="<c:url value='/views/appointment/viewappointment.jsp' />"><span>📅</span> Appointments</a></li>
            <li><a href="<c:url value='/views/patient/list_patient.jsp' />"><span>📋</span> Patient Record</a></li>
            <li><a href="<c:url value='/views/user/usermanagement.jsp' />"><span>👤</span> User Management</a></li>
            <li><a href="<c:url value='/views/setting/systemsetting.jsp' />"><span>⚙️</span> System Settings</a></li>
            <li><a href="<c:url value='/views/setting/generalsetting.jsp' />"><span>🛠️</span> General Settings</a></li>
            <li><a href="'/views/test/list_test.jsp'"><span>🧪</span> Self-Test</a></li>
        </ul>
        <a href="/home" class="logout-button" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
        <form id="logout-form" action="/home" method="POST" style="display: none;">
            <input type="hidden" name="_method" value="POST">
        </form>
    </div>
    <div class="main-content">
        <div class="overview">
            <div class="card">
                <h3>Completed Appointments</h3>
                <p>99</p>
            </div>
            <div class="card">
                <h3>Pending Appointments</h3>
                <p>99</p>
            </div>
            <div class="card">
                <h3>Cancelled Appointments</h3>
                <p>99</p>
            </div>
            <div class="card">
                <h3>Total Appointments</h3>
                <p>99</p>
            </div>
        </div>
        <div class="reports">
            <div class="chart">
                <h3>Detailed Reports</h3>
                <!-- Placeholder for a bar chart -->
                <p>Bar Chart Goes Here</p>
            </div>
            <div class="performance">
                <h3>Last 30 Days Performance</h3>
                <!-- Placeholder for a pie chart -->
                <p>Pie Chart Goes Here</p>
            </div>
        </div>
    </div>
</body>
</html>
