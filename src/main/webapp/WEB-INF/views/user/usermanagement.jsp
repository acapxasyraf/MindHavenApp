<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Management</title>
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

    .logo h1 {
      font-size: 18px;
      margin: 0;
      color: #333;
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
      color: #333;
      display: flex;
      align-items: center;
      justify-content: space-between;
      font-size: 14px;
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

    .user-management {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    }

    .user-management h2 {
      margin-top: 0;
      margin-bottom: 20px;
      font-size: 18px;
      color: #333;
    }

    .search-bar {
      margin-bottom: 20px;
    }

    .search-bar input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 4px;
    }

    .add-user-btn {
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 10px 15px;
      border-radius: 4px;
      cursor: pointer;
      float: right;
      font-size: 14px;
    }

    .add-user-btn:hover {
      background-color: #0056b3;
    }

    .table {
      width: 100%;
      border-collapse: collapse;
    }

    .table th, .table td {
      text-align: left;
      padding: 10px;
      border: 1px solid #ddd;
    }

    .table th {
      background-color: #f4f4f4;
      font-weight: bold;
    }

    .table td a {
      color: #007bff;
      text-decoration: none;
    }

    .table td a:hover {
      text-decoration: underline;
    }

    .edit-icon {
      cursor: pointer;
      color: #007bff;
    }

    .edit-icon:hover {
      color: #0056b3;
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
          <li><a href="#"><i class="icon-home"></i> Home</a></li>
          <li><a href="#"><i class="icon-appointments"></i> Appointments <span class="badge">9</span></a></li>
          <li><a href="#"><i class="icon-patient-record"></i> Patient Record</a></li>
          <li><a href="#" class="active"><i class="icon-user-management"></i> User Management</a></li>
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
      <section class="user-management">
        <h2>User Management</h2>
        <button class="add-user-btn">Add New User</button>
        <div class="search-bar">
          <input type="text" placeholder="Search">
        </div>
        <table class="table">
          <thead>
            <tr>
              <th>No</th>
              <th>First & Last Name</th>
              <th>Age</th>
              <th>Gender</th>
              <th>Phone</th>
              <th>Date</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td><a href="#">Stephanie Miller</a></td>
              <td>29</td>
              <td>Female</td>
              <td>(312) 522-6378</td>
              <td>10/01/2024</td>
              <td><span class="edit-icon">✏️</span></td>
            </tr>
            <tr>
              <td>2</td>
              <td><a href="#">Brian Baker</a></td>
              <td>16</td>
              <td>Male</td>
              <td>(303) 681-9258</td>
              <td>07/09/2023</td>
              <td><span class="edit-icon">✏️</span></td>
            </tr>
            <tr>
              <td>3</td>
              <td><a href="#">Ryan Smith</a></td>
              <td>77</td>
              <td>Male</td>
              <td>(937) 966-6855</td>
              <td>22/02/2020</td>
              <td><span class="edit-icon">✏️</span></td>
            </tr>
            <tr>
              <td>4</td>
              <td><a href="#">Olivia Lopez</a></td>
              <td>55</td>
              <td>Female</td>
              <td>(916) 584-1602</td>
              <td>14/12/2021</td>
              <td><span class="edit-icon">✏️</span></td>
            </tr>
          </tbody>
        </table>
      </section>
    </main>
  </div>
</body>
</html>
