<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Medical Prescription</title>
</head>
<style>
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

</style>
<body>
			<form class="form">
                <label for="full-name">Full name: Ahmad Patient1</label>
				<br>
                <label for="ic-num">IC Number: 800101101234</label>
				<br>
				<label for="visit-date">Visit Date: 10/07/2024</label>
				<br>
                <label for="prescriptions">Prescriptions:</label>
                <textarea type="text" id="password" placeholder="meds1&#10;meds2&#10;meds3" style="width:200px" style="height:200px" required></textarea>
				<br>
				<label for="remarks">Remarks</label>
				<textarea id="remarks"></textarea>
				<br>
				<br>
				<button type="reset">Clear All</button>
                <button type="submit">Save</button>
            </form>
</body>
</html>