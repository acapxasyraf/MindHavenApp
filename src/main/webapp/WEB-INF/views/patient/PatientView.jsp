<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Profile</title>
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
            max-width: 800px;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 20px;
            color: #4A90E2;
        }

        .header span {
            font-size: 14px;
            color: #333;
            font-weight: bold;
        }

        .profile-details {
            margin-bottom: 20px;
        }

        .profile-details div {
            margin-bottom: 10px;
        }

        .profile-details span {
            font-weight: bold;
            color: #333;
        }

        .medical-history {
            margin-top: 20px;
        }

        .medical-history table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .medical-history th, .medical-history td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .medical-history th {
            background-color: #4A90E2;
            color: white;
        }

        .button-group {
            display: flex;
            justify-content: flex-end;
            gap: 10px;
            margin-top: 20px;
        }

        .button {
            padding: 10px 15px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button.edit {
            background-color: #4A90E2;
            color: white;
        }

        .button.close {
            background-color: #ddd;
            color: #333;
        }

        .button:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Patient Profile</h1>
            <span>Patient ID: MY012345</span>
        </div>

        <div class="profile-details">
            <div><span>Full name:</span> Nur Ainon Binti Yusmadi</div>
            <div><span>IC No:</span> 951010064352</div>
            <div><span>Age:</span> 29 years old</div>
            <div><span>Date of Birth:</span> 10 December 1995</div>
            <div><span>Gender:</span> Female</div>
            <div><span>Contact No:</span> 017 - 93859234</div>
            <div><span>Email:</span> ainonyusmadi23@gmail.com</div>
            <div><span>Address:</span> No 1, Jalan Dahlia, Residensi Mulia, Cyberjaya 63300, Sepang, Selangor</div>
            <div><span>Appointment Status:</span></div>
            <div style="margin-left: 20px;">
                <div><span>Next Appointment:</span> 12 December 2024</div>
                <div><span>Recent Appointment:</span> 12 October 2024</div>
            </div>
        </div>

        <div class="medical-history">
            <h3>Medical History</h3>
            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>History</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Asthma</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Myocardial infarction (MI)</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="button-group">
            <button class="button close">Close</button>
            <button class="button edit">Edit</button>
        </div>
    </div>
</body>
</html>
