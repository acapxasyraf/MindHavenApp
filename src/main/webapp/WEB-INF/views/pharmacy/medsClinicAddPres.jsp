<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Medical Prescription</title>
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

h1 {
    font-size: 24px;
    font-weight: bold;
    text-align: center;
}

form {
    width: 50%;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"],
input[type="date"],
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="checkbox"] {
    margin-top: 10px;
}

button {
    padding: 10px 15px;
    margin-right: 10px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: white;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

.clear-button {
    background-color: #dc3545;
}

.clear-button:hover {
    background-color: #c82333;
}

footer {
    text-align: center;
    margin-top: 20px;
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

<!--<script type="text/javascript">
function handleClick(clickedId) {
	{
	     if(clickedId == "newPatRad")
	       document.getElementById('tableTextId').value = "customer";
	     else
	       document.getElementById('tableTextId').value = "company";
	  }
}
</script>-->
<main class="main-content">
    <div class="container">    
    	<div class="left">
    		<h1>New Medical Prescription</h1>
    		<br>
    		<!-- <label for="membership">New or Existing Patient: &nbsp;&nbsp;</label><br>
                        <input name="membership" type="radio" value="New" id="newPatRad" onclick="handleClick(this.id);" />New
                        <input name="membership" type="radio" value="Existing" id="exisPatRad" onclick="handleClick(this.id);"/>Existing<br> -->
    	</div><br>
        <div class="left" id="newPat">            
            <form class="form">
                <label for="full-name">Full name*</label>
                <input type="text" id="full-name" placeholder="John Doe" required>
				<br>
                <label for="ic-num">IC Number*</label>
                <input type="text" id="ic-num" placeholder="XXXXXXXXXXXX (without dash)" pattern="[0-9]{12}" style="width:200px;" required>
				<br>
				<label for="visit-date">Visit Date*</label>
				<input type="datetime-local" id="visit-date" required>
				<br>
                <label for="prescriptions">Prescriptions*</label>
                <textarea type="text" id="password" placeholder="" required></textarea>
				<br>
				<label for="remarks">Remarks</label>
				<textarea id="remarks"></textarea>
				<br>
				<input type="checkbox" required><label>I certify that the above information is true and accurate.</label>
				<br>
				<button type="reset">Clear All</button>
                <button type="submit">Add</button>
            </form>
        </div>
       
    </div>
</main>
</body>
</html>
