<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Medical Prescription</title>
</head>
<style>
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
</body>
</html>
