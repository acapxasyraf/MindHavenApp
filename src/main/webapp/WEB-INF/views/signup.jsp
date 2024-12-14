<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MindHaven Sign-Up</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        .container {
            display: flex;
            width: 100%;
        }

        .left {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: #ffffff;
            padding: 20px;
        }

        .left h1 {
            font-size: 2rem;
            margin-bottom: 20px;
            color: #000;
        }

        .form {
            width: 100%;
            max-width: 400px;
        }

        .form label {
            display: block;
            font-size: 0.9rem;
            margin-bottom: 5px;
            color: #444;
        }

        .form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        .form button {
            width: 100%;
            padding: 10px;
            background-color: #7c4efb;
            border: none;
            border-radius: 5px;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
        }

        .form button:hover {
            background-color: #6933c4;
        }

        .left p {
            margin-top: 10px;
            font-size: 0.9rem;
            color: #666;
        }

        .left p a {
            color: #7c4efb;
            text-decoration: none;
        }

        .left p a:hover {
            text-decoration: underline;
        }

        .right {
            flex: 1;
            background-color: #ffc0cb;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
            text-align: center;
        }

        .right img {
            max-width: 300px;
            margin-bottom: 20px;
        }

        .right h2 {
            font-size: 1.5rem;
            color: #000;
            margin-bottom: 10px;
        }

        .right p {
            font-size: 1.1rem;
            color: #444;
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .left, .right {
                flex: none;
                width: 100%;
            }

            .right img {
                max-width: 200px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left">
            <h1>Create an account</h1>
            <form class="form">
                <label for="full-name">Full name</label>
                <input type="text" id="full-name" placeholder="John Doe" required>

                <label for="email">Email</label>
                <input type="email" id="email" placeholder="example.email@gmail.com" required>

                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter at least 8+ characters" required>

                <button type="submit">Sign up</button>
            </form>
            <p>Already have an account? <a href="#">Sign in</a></p>
        </div>
        <div class="right">
            <img src="illustration.png" alt="Illustration">
            <h2>To Better Health!</h2>
            <p>MindHaven</p>
        </div>
    </div>
</body>
</html>
