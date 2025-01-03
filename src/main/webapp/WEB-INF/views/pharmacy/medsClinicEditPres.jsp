<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Medical Prescription</title>
</head>
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
        <div>
            
            <form action="updatePrescription" method="post">
                <input type="hidden" name="id" value="<%= prescription.getId() %>">

                <div>
                    <label for="full-name">Full Name:</label>
                    <input type="text" id="full-name" name="fullName" value="<%= prescription.getName() %>" readonly>
                </div>

                <div>
                    <label for="ic-num">IC Number:</label>
                    <input type="text" id="ic-num" name="icNumber" value="<%= prescription.getIcNumber() %>" readonly>
                </div>

                <div>
                    <label for="visit-date">Visit Date:</label>
                    <input type="text" id="visit-date" name="visitDate" value="<%= prescription.getVisitDate() %>" readonly>
                </div>

                <div>
                    <label for="prescriptions">Prescriptions:</label>
                    <textarea id="prescriptions" name="medications" rows="5"><%= String.join("\n", prescription.getMedications()) %></textarea>
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