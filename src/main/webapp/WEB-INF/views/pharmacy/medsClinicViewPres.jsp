<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medical Prescription List</title>
</head>
<style> table{
		 border:3px solid black;
		 border-collapse:collapse;
		 width:80%;
		}
		th, td{
		 border:1px solid black;
		 border-collapse:collapse;
		}
		body {
    font-family: Arial, sans-serif;
}

h1 {
    font-size: 24px;
    font-weight: bold;
    text-align: center;
}

.search-container {
    text-align: center;
    margin-bottom: 20px;
}

input[type="text"] {
    padding: 10px;
    width: 30%;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

table {
    width: 80%;
    margin: 0 auto;
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid black;
}

th, td {
    padding: 15px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

button {
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
    background-color: #007bff;
    color: white;
  
</style>
<body>
<h1>List of Medical Prescription</h1>
<br>
<input type="text" id="name-search" placeholder="Search for Name"><br>
<table>
	<tr>
		<th>Name
		</th>
		<th>IC Number
		</th>
		<th>Date Visit
		</th>
		<th>Prescriptions
		</th>
		<th>Actions
		</th>
	</tr>
	<tr>
		<td>Ahmad Patient1
		</td>
		<td>800101101234
		</td>
		<td>10/07/2024
		</td>
		<td><ul>
				<li>meds1</li>
				<li>meds2</li>
				<li>meds3</li>
			</ul>
		</td>
		<td><button type="submit" id="presedit">Edit
			</button>
			<button type="submit" id="presdel">Delete
			</button>
		</td>
	</tr>
	<tr>
		<td>Nur Patient2
		</td>
		<td>900101101234
		</td>
		<td>11/07/2024
		</td>
		<td><ul>
				<li>meds1</li>
				<li>meds2</li>
				<li>meds3</li>
			</ul>
		</td>
		<td><button type="submit" id="presedit">Edit
			</button>
			<button type="submit" id="presdel">Delete
			</button>
		</td>
	</tr>
	<tr>
		<td>Mr Patient3
		</td>
		<td>9500101101234
		</td>
		<td>12/07/2024
		</td>
		<td><ul>
				<li>meds1</li>
				<li>meds2</li>
				<li>meds3</li>
			</ul>
		</td>
		<td><button type="submit" id="presedit">Edit
			</button>
			<button type="submit" id="presdel">Delete
			</button>
		</td>
	</tr>
	<tr>
		<td>Mrs Patient4
		</td>
		<td>000101101234
		</td>
		<td>10/07/2024
		</td>
		<td><ul>
				<li>meds1</li>
				<li>meds2</li>
				<li>meds3</li>
			</ul>
		</td>
		<td><button type="submit" id="presedit">Edit
			</button>
			<button type="submit" id="presdel">Delete
			</button>
		</td>
	</tr>
</table>
</body>
</html>