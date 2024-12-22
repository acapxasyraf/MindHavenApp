<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MindHaven Settings</title>
  <!-- <link rel="stylesheet" href="styles.css"> -->
   <style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
    }

    .container {
    display: flex;
    height: 100vh;
    }

    .sidebar {
    width: 250px;
    background-color: #fff;
    border-right: 1px solid #ddd;
    padding: 20px;
    }

    .logo {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 30px;
    }

    .logo img {
    width: 40px;
    height: 40px;
    }

    .nav-menu ul {
    list-style: none;
    padding: 0;
    }

    .nav-menu li {
    margin-bottom: 15px;
    }

    .nav-menu a {
    text-decoration: none;
    color: #333;
    display: flex;
    align-items: center;
    justify-content: space-between;
    }

    .nav-menu a.active {
    color: #007bff;
    }

    .nav-menu .badge {
    background-color: #ff0000;
    color: #fff;
    font-size: 12px;
    padding: 2px 6px;
    border-radius: 12px;
    }

    .main-content {
    flex: 1;
    padding: 20px;
    background-color: #f4f6f9;
    }

    .header {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    gap: 20px;
    margin-bottom: 20px;
    }

    .profile-pic {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    }

    .system-settings {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    }

    .system-settings h2 {
    margin-top: 0;
    margin-bottom: 20px;
    }

    .form-group {
    margin-bottom: 15px;
    }

    label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    }

    input {
    width: 100%;
    padding: 8px;
    border: 1px solid #ddd;
    border-radius: 4px;
    background-color: #f9f9f9;
    }

    .edit-btn {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 15px;
    border-radius: 4px;
    cursor: pointer;
    float: right;
    }

    .edit-btn:hover {
    background-color: #0056b3;
    }

   </style>
</head>
<body>
  <div class="container">
    <aside class="sidebar">
      <div class="logo">
        <img src="logo-placeholder.png" alt="MindHaven Logo">
        <h1>MindHaven</h1>
      </div>
      <nav class="nav-menu">
        <ul>
          <li><a href="#" class="active"><i class="icon-home"></i> Home</a></li>
          <li><a href="#"><i class="icon-appointments"></i> Appointments <span class="badge">9</span></a></li>
          <li><a href="#"><i class="icon-patient-record"></i> Patient Record</a></li>
          <li><a href="#"><i class="icon-user-management"></i> User Management</a></li>
          <li><a href="#"><i class="icon-system-settings"></i> System Settings</a></li>
          <li><a href="#"><i class="icon-general-settings"></i> General Settings</a></li>
          <li><a href="#"><i class="icon-self-test"></i> Self-Test</a></li>
        </ul>
      </nav>
    </aside>
    <main class="main-content">
      <header class="header">
        <div class="actions">
          <button class="help-btn">?</button>
          <img src="profile-placeholder.png" alt="User Profile" class="profile-pic">
        </div>
      </header>
      <section class="system-settings">
        <h2>System Settings</h2>
        <form>
          <div class="form-group">
            <label for="block-duration">System Block Duration :</label>
            <input type="number" id="block-duration" value="5" disabled>
          </div>
          <div class="form-group">
            <label for="idle-timeout">Idle Timeout :</label>
            <input type="number" id="idle-timeout" value="5" disabled>
          </div>
          <div class="form-group">
            <label for="email">Email :</label>
            <input type="email" id="email" value="klinikkita@kita.com" disabled>
          </div>
          <button class="edit-btn">Edit</button>
        </form>
      </section>
    </main>
  </div>
</body>
</html>
