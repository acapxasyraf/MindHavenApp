<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Patient Profile</title>
    <style>
        /* Reset and Base Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #4A90E2;
            font-size: 28px;
            text-align: center;
            margin-bottom: 10px;
        }

        p.subheader {
            font-size: 14px;
            color: #666;
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .form-group {
            width: 100%;
            display: flex;
            flex-direction: column;
        }

        .form-group.half {
            width: calc(50% - 10px);
        }

        label {
            font-weight: bold;
            margin-bottom: 8px;
            font-size: 14px;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        textarea,
        .radio-group {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
            height: 100px;
        }

        .radio-group {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .form-group input[type="radio"] {
            width: auto;
            margin-right: 5px;
        }

        .button-group {
            display: flex;
            justify-content: flex-end;
            gap: 15px;
            width: 100%;
        }

        .button {
            padding: 12px 20px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button.submit {
            background-color: #4A90E2;
            color: white;
        }

        .button.submit:hover {
            background-color: #357ABD;
        }

        .button.cancel {
            background-color: #E0E0E0;
            color: #333;
        }

        .button.cancel:hover {
            background-color: #C0C0C0;
        }

        @media (max-width: 768px) {
            .form-group.half {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Create Patient Profile</h1>
        <p class="subheader">All fields are mandatory. Your details will remain private and confidential.</p>

        <form action="/submit" method="POST">
            <div class="form-group half">
                <label for="patientId">Patient ID</label>
                <input type="text" id="patientId" name="patientId" value="MY012343" readonly>
            </div>

            <div class="form-group half">
                <label for="idCard">Identification Card No</label>
                <input type="text" id="idCard" name="idCard" placeholder="Your Identification Card No">
            </div>

            <div class="form-group half">
                <label for="fullName">Full Name</label>
                <input type="text" id="fullName" name="fullName" placeholder="Your full name">
            </div>

            <div class="form-group half">
                <label for="phone">Phone</label>
                <input type="text" id="phone" name="phone" placeholder="Phone">
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" placeholder="Address">
            </div>

            <div class="form-group half">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Email">
            </div>

            <div class="form-group half">
                <label for="dob">DOB</label>
                <input type="date" id="dob" name="dob">
            </div>

            <div class="form-group">
                <label>Gender</label>
                <div class="radio-group">
                    <label><input type="radio" name="gender" value="female"> Female</label>
                    <label><input type="radio" name="gender" value="male"> Male</label>
                </div>
            </div>

            <div class="form-group half">
                <label for="zip">Zip / Postal Code</label>
                <input type="text" id="zip" name="zip" placeholder="Zip / Postal Code">
            </div>

            <div class="form-group half">
                <label for="city">City</label>
                <input type="text" id="city" name="city" placeholder="City">
            </div>

            <div class="form-group half">
                <label for="state">State / Province</label>
                <input type="text" id="state" name="state" placeholder="State / Province">
            </div>

            <div class="form-group">
                <label for="medicalHistory">Medical History</label>
                <textarea id="medicalHistory" name="medicalHistory" placeholder="List of history"></textarea>
            </div>

            <div class="button-group">
                <button type="button" class="button cancel">Cancel</button>
                <button type="submit" class="button submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
