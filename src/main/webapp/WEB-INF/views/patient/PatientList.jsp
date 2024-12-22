<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Record</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .container {
            margin: 20px auto;
            width: 90%;
            max-width: 1200px;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        .header {
            padding: 15px 20px;
            background-color: #4A90E2;
            color: white;
            font-size: 20px;
            font-weight: bold;
        }

        .search {
            padding: 10px 20px;
            background-color: #f1f1f1;
            border-bottom: 1px solid #ddd;
        }

        .search input {
            width: 100%;
            max-width: 400px;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table thead {
            background-color: #4A90E2;
            color: white;
        }

        table th, table td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .pagination {
            display: flex;
            justify-content: center;
            padding: 10px 0;
            background-color: #f1f1f1;
        }

        .pagination a {
            margin: 0 5px;
            padding: 8px 12px;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd;
            color: #4A90E2;
            border-radius: 4px;
        }

        .pagination a.active {
            background-color: #4A90E2;
            color: white;
        }

        .add-button {
            display: inline-block;
            margin: 10px 20px;
            padding: 10px 15px;
            color: white;
            background-color: #4A90E2;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
        }

        .add-button:hover {
            background-color: #357ABD;
        }

        .edit-icon {
            cursor: pointer;
            color: #4A90E2;
            text-decoration: none;
        }

        .edit-icon:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">Patient Record</div>

        <div class="search">
            <input type="text" placeholder="Search">
        </div>

        <a href="#" class="add-button">Add New Patient</a>

        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th>Patient ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Phone</th>
                    <th>Date Appointment</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>MY012343</td>
                    <td>Siti Fatimah Binti Johan</td>
                    <td>29</td>
                    <td>Female</td>
                    <td>0176453281</td>
                    <td>10/01/2024</td>
                    <td><a href="#" class="edit-icon">✏️</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>MY012323</td>
                    <td>Abu Bakar Bin Kamal</td>
                    <td>16</td>
                    <td>Male</td>
                    <td>01112345678</td>
                    <td>07/09/2023</td>
                    <td><a href="#" class="edit-icon">✏️</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>MY012312</td>
                    <td>Haris Sulaiman Bin Ahmad</td>
                    <td>77</td>
                    <td>Male</td>
                    <td>0147645869</td>
                    <td>22/02/2020</td>
                    <td><a href="#" class="edit-icon">✏️</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>MY012334</td>
                    <td>Lin Xia Xia</td>
                    <td>55</td>
                    <td>Female</td>
                    <td>0125678923</td>
                    <td>14/12/2021</td>
                    <td><a href="#" class="edit-icon">✏️</a></td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>MY012345</td>
                    <td>Nur Ainon Binti Yusmadi</td>
                    <td>29</td>
                    <td>Female</td>
                    <td>0179385923</td>
                    <td>06/05/2020</td>
                    <td><a href="#" class="edit-icon">✏️</a></td>
                </tr>
            </tbody>
        </table>

        <div class="pagination">
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">Next</a>
        </div>
    </div>
</body>
</html>
