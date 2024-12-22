<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Patient Profile</title>
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
            font-size: 24px;
            font-weight: bold;
            color: #4A90E2;
            margin-bottom: 10px;
        }

        .subheader {
            font-size: 14px;
            color: #888;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .form-group {
            flex: 1 1 calc(50% - 20px);
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            margin-bottom: 5px;
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }

        .form-group input, .form-group select, .form-group textarea {
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 100%;
        }

        .form-group textarea {
            resize: vertical;
        }

        .form-group input[type="radio"] {
            margin-right: 5px;
        }

        .form-group .radio-group {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .upload-area {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            border: 2px dashed #ddd;
            border-radius: 4px;
            background-color: #f9f9f9;
        }

        .upload-area:hover {
            background-color: #f1f1f1;
        }

        .upload-area span {
            color: #4A90E2;
            margin: 5px 0;
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

        .button.submit {
            background-color: #4A90E2;
            color: white;
        }

        .button.cancel {
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
        <div class="header">Create Patient Profile</div>
        <div class="subheader">All fields are mandatory. The provided details will be treated as private and confidential.</div>

        <form action="/submit" method="POST">
            <div class="form-group">
                <label for="patientId">Patient ID</label>
                <input type="text" id="patientId" name="patientId" value="MY012343" readonly>
            </div>

            <div class="form-group">
                <label for="idCard">Identification Card No</label>
                <input type="text" id="idCard" name="idCard" placeholder="Your Identification Card No">
            </div>

            <div class="form-group">
                <label for="fullName">Full Name</label>
                <input type="text" id="fullName" name="fullName" placeholder="Your full name">
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" id="phone" name="phone" placeholder="Phone">
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" placeholder="Address">
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Email">
            </div>

            <div class="form-group">
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

            <div class="form-group">
                <label for="zip">Zip / Postal Code</label>
                <input type="text" id="zip" name="zip" placeholder="Zip / Postal Code">
            </div>

            <div class="form-group">
                <label for="city">City</label>
                <input type="text" id="city" name="city" placeholder="City">
            </div>

            <div class="form-group">
                <label for="state">State / Province</label>
                <input type="text" id="state" name="state" placeholder="State / Province">
            </div>

            <div class="form-group">
                <label for="medicalHistory">Medical History</label>
                <textarea id="medicalHistory" name="medicalHistory" placeholder="List of history"></textarea>
            </div>

            <div class="form-group">
                <label for="document">Attach Document</label>
                <div class="upload-area">
                    <span>Drag & drop your files here</span>
                    <span>OR</span>
                    <input type="file" id="document" name="document">
                </div>
            </div>

            <div class="button-group">
                <button type="button" class="button cancel">Cancel</button>
                <button type="submit" class="button submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
