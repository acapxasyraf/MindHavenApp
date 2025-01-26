<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Create Profile</title>
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

    .form-container {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    }

    .form-container h2 {
      margin-top: 0;
      margin-bottom: 20px;
      font-size: 18px;
      color: #333;
    }

    .form-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 20px;
    }

    .form-group {
      display: flex;
      flex-direction: column;
    }

    label {
      font-weight: bold;
      margin-bottom: 5px;
      font-size: 14px;
    }

    input, select {
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 4px;
      font-size: 14px;
    }

    .radio-group {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .file-upload {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100px;
      border: 2px dashed #ddd;
      border-radius: 4px;
      text-align: center;
      color: #999;
      cursor: pointer;
    }

    .actions {
      margin-top: 20px;
      display: flex;
      justify-content: space-between;
    }

    .cancel-btn, .continue-btn {
      padding: 10px 20px;
      border-radius: 4px;
      border: none;
      font-size: 14px;
      cursor: pointer;
    }

    .cancel-btn {
      background-color: #ddd;
      color: #333;
    }

    .cancel-btn:hover {
      background-color: #bbb;
    }

    .continue-btn {
      background-color: #007bff;
      color: #fff;
    }

    .continue-btn:hover {
      background-color: #0056b3;
    }

    .form-note {
      font-size: 12px;
      color: #666;
      margin-top: 10px;
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
      <section class="form-container">
        <h2>Create Profile</h2>
        <form>
          <div class="form-grid">
            <div class="form-group">
              <label for="full-name">Full name</label>
              <input type="text" id="full-name" placeholder="Your full name">
            </div>
            <div class="form-group">
              <label for="dob">DOB</label>
              <input type="date" id="dob">
            </div>
            <div class="form-group">
              <label>Gender</label>
              <div class="radio-group">
                <label><input type="radio" name="gender" value="male"> Male</label>
                <label><input type="radio" name="gender" value="female"> Female</label>
              </div>
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" id="email" placeholder="Email">
            </div>
            <div class="form-group">
              <label for="id-number">ID number</label>
              <input type="text" id="id-number" placeholder="ID number">
            </div>
            <div class="form-group">
              <label for="phone">Phone</label>
              <input type="text" id="phone" placeholder="Phone">
            </div>
            <div class="form-group">
              <label for="address">Address</label>
              <input type="text" id="address" placeholder="Address">
            </div>
            <div class="form-group">
              <label for="street">Street</label>
              <input type="text" id="street" placeholder="Street">
            </div>
            <div class="form-group">
              <label for="city">City</label>
              <input type="text" id="city" placeholder="City">
            </div>
            <div class="form-group">
              <label for="zip">Zip / Postal Code</label>
              <input type="text" id="zip" placeholder="Zip / Postal Code">
            </div>
            <div class="form-group">
              <label for="state">State / Province</label>
              <input type="text" id="state" placeholder="State / Province">
            </div>
            <div class="form-group">
              <label for="country">Country / Region</label>
              <input type="text" id="country" placeholder="Country / Region">
            </div>
            <div class="form-group">
              <label>Avatar</label>
              <div class="file-upload">+</div>
            </div>
            <div class="form-group">
              <label>ID Image</label>
              <div class="file-upload">+</div>
            </div>
          </div>
          <p class="form-note">
            Occaecat sunt cillum ex et sit pariatur enim deserunt ex labore ad exercitation veniam exercitation do. Anim qui enim eu ea ip.
          </p>
          <div class="actions">
            <button type="button" class="cancel-btn">Cancel</button>
            <button type="submit" class="continue-btn">Continue →</button>
          </div>
        </form>
      </section>
    </main>
  </div>
</body>
</html>
