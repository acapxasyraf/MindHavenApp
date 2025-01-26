<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MindHaven App</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: #4a90e2;
        }

        a:hover {
            color: #3a70b8;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        /* Header */
        header {
            background: #f9f9f9;
            padding: 15px 0;
            border-bottom: 1px solid #e5e5e5;
        }

        .logo {
            display: inline-block;
            font-size: 24px;
            font-weight: bold;
            color: #4a90e2;
        }

        .nav {
            display: inline-block;
            float: right;
        }

        .nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .nav ul li {
            display: inline;
            margin-right: 15px;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 50px 15px;
            background: #f5f5f5;
        }

        .hero h1 {
            font-size: 2.5em;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 1.2em;
            margin-bottom: 25px;
        }

        .hero-buttons a {
            display: inline-block;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 5px;
            font-size: 16px;
            color: #fff;
            background: #4a90e2;
            border: 1px solid #4a90e2;
        }

        .hero-buttons a.outline {
            background: transparent;
            color: #4a90e2;
        }

        /* What's New Section */
        .whats-new {
            padding: 50px 15px;
            text-align: center;
        }

        .whats-new h2 {
            font-size: 2em;
            margin-bottom: 15px;
        }

        .whats-new p {
            font-size: 1em;
            margin-bottom: 30px;
            color: #777;
        }

        .cards {
            display: flex;
            justify-content: space-around;
            gap: 15px;
            flex-wrap: wrap;
        }

        .card {
            background: #fff;
            border: 1px solid #e5e5e5;
            border-radius: 5px;
            width: 30%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .card img {
            width: 100%;
            height: auto;
        }

        .card-content {
            padding: 15px;
        }

        .card-content h3 {
            font-size: 1.2em;
            margin-bottom: 10px;
        }

        .card-content p {
            font-size: 0.9em;
            color: #777;
        }

        /* Footer */
        footer {
            padding: 30px 15px;
            background: #f9f9f9;
            text-align: center;
            border-top: 1px solid #e5e5e5;
        }

        footer .links {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        footer .links div {
            text-align: left;
        }

        footer .newsletter input[type="email"] {
            padding: 10px;
            width: 250px;
            border: 1px solid #e5e5e5;
            border-radius: 5px;
            margin-right: 10px;
        }

        footer .newsletter button {
            padding: 10px 15px;
            background: #4a90e2;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<!-- Header -->
<header>
    <div class="container">
        <a href="#" class="logo">MindHaven</a>
        <nav class="nav">
            <ul>
                <li><a href="#">Features</a></li>
                <li><a href="/test/dass">Self-Test</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Blog</a></li>
            </ul>
        </nav>
        <div class="auth-buttons">
            <a href="/loginUser" class="sign-in">Sign In</a>
            <a href="/signup" class="sign-up">Sign Up</a>
        </div>
    </div>
</header>

<!-- Hero Section -->
<section class="hero">
    <div class="container">
        <h1>Website heading goes here</h1>
        <p>Occaecat est ipsum reprehenderit reprehenderit veniam anim laborum est esse duis occaecat reprehenderit pariatur.</p>
        <div class="hero-buttons">
            <a href="/test/dass" class="outline">Go For Self-test</a>
        </div>
    </div>
</section>

<!-- What's New Section -->
<section class="whats-new">
    <div class="container">
        <h2>What's new?</h2>
        <p>Do consectetur proident proident id eiusmod deserunt consequat pariatur ad ex velit do Lorem reprehenderit.</p>
        <div class="cards">
            <div class="card">
                <img src="https://via.placeholder.com/300x200" alt="News 1">
                <div class="card-content">
                    <h3>Aliqua irure tempor Lorem occaecat volup</h3>
                    <p>5 mins read - Dec 22, 2022</p>
                </div>
            </div>
            <div class="card">
                <img src="https://via.placeholder.com/300x200" alt="News 2">
                <div class="card-content">
                    <h3>Commodo deserunt ipsum occaecat qui</h3>
                    <p>10 mins read - Dec 22, 2022</p>
                </div>
            </div>
            <div class="card">
                <img src="https://via.placeholder.com/300x200" alt="News 3">
                <div class="card-content">
                    <h3>Deserunt occaecat qui amet tempor dolore</h3>
                    <p>3 mins read - Dec 22, 2022</p>
                </div>
            </div>
        </div>
        <a href="#" class="btn">See more articles</a>
    </div>
</section>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="links">
            <div>
                <h4>Product</h4>
                <p>Features</p>
                <p>Pricing</p>
            </div>
            <div>
                <h4>Resources</h4>
                <p>Blog</p>
                <p>User guides</p>
                <p>Webinars</p>
            </div>
            <div>
                <h4>Company</h4>
                <p>About</p>
                <p>Join us</p>
            </div>
            <div class="newsletter">
                <h4>Subscribe to our newsletter</h4>
                <input type="email" placeholder="Input your email">
                <button>Subscribe</button>
            </div>
        </div>
        <p>© 2022 Brand, Inc. · Privacy · Terms · Sitemap</p>
    </div>
</footer>

</body>
</html>
