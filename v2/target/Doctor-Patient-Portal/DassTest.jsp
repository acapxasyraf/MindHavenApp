<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DASS Test</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .question {
            margin-bottom: 15px;
        }
        .options label {
            display: inline-block;
            margin-right: 10px;
        }
        .actions {
            text-align: center;
            margin-top: 20px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }
        .cancel {
            background-color: #ccc;
            color: #333;
        }
        .submit {
            background-color: #4CAF50;
            color: white;
        }
    </style>
    <script>
        function handleCancel() {
            window.location.href = '/'; // Redirect to home
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>DASS Test</h1>
            <p>Please answer the following questions honestly:</p>
        </div>
        <form method="post" action="submitDASS">
        
            <!-- Question 1 -->
            <div class="question">
                <p>1. I found it hard to wind down</p>
                <div class="options">
                    <label><input type="radio" name="q1" value="1"> 1</label>
                    <label><input type="radio" name="q1" value="2"> 2</label>
                    <label><input type="radio" name="q1" value="3"> 3</label>
                    <label><input type="radio" name="q1" value="4"> 4</label>
                    <label><input type="radio" name="q1" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 2 -->
            <div class="question">
                <p>2. I was aware of dryness of my mouth</p>
                <div class="options">
                    <label><input type="radio" name="q2" value="1"> 1</label>
                    <label><input type="radio" name="q2" value="2"> 2</label>
                    <label><input type="radio" name="q2" value="3"> 3</label>
                    <label><input type="radio" name="q2" value="4"> 4</label>
                    <label><input type="radio" name="q2" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 3 -->
            <div class="question">
                <p>3. I couldn’t seem to experience any positive feeling at all</p>
                <div class="options">
                    <label><input type="radio" name="q3" value="1"> 1</label>
                    <label><input type="radio" name="q3" value="2"> 2</label>
                    <label><input type="radio" name="q3" value="3"> 3</label>
                    <label><input type="radio" name="q3" value="4"> 4</label>
                    <label><input type="radio" name="q3" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 4 -->
            <div class="question">
                <p>4. I experienced breathing difficulty (e.g., excessively rapid breathing, breathlessness in the absence of physical exertion)</p>
                <div class="options">
                    <label><input type="radio" name="q4" value="1"> 1</label>
                    <label><input type="radio" name="q4" value="2"> 2</label>
                    <label><input type="radio" name="q4" value="3"> 3</label>
                    <label><input type="radio" name="q4" value="4"> 4</label>
                    <label><input type="radio" name="q4" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 5 -->
            <div class="question">
                <p>5. I found it difficult to work up the initiative to do things</p>
                <div class="options">
                    <label><input type="radio" name="q5" value="1"> 1</label>
                    <label><input type="radio" name="q5" value="2"> 2</label>
                    <label><input type="radio" name="q5" value="3"> 3</label>
                    <label><input type="radio" name="q5" value="4"> 4</label>
                    <label><input type="radio" name="q5" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 6 -->
            <div class="question">
                <p>6. I tended to over-react to situations</p>
                <div class="options">
                    <label><input type="radio" name="q6" value="1"> 1</label>
                    <label><input type="radio" name="q6" value="2"> 2</label>
                    <label><input type="radio" name="q6" value="3"> 3</label>
                    <label><input type="radio" name="q6" value="4"> 4</label>
                    <label><input type="radio" name="q6" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 7 -->
            <div class="question">
                <p>7. I felt down-hearted and blue</p>
                <div class="options">
                    <label><input type="radio" name="q7" value="1"> 1</label>
                    <label><input type="radio" name="q7" value="2"> 2</label>
                    <label><input type="radio" name="q7" value="3"> 3</label>
                    <label><input type="radio" name="q7" value="4"> 4</label>
                    <label><input type="radio" name="q7" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 8 -->
            <div class="question">
                <p>8. I felt that I had nothing to look forward to</p>
                <div class="options">
                    <label><input type="radio" name="q8" value="1"> 1</label>
                    <label><input type="radio" name="q8" value="2"> 2</label>
                    <label><input type="radio" name="q8" value="3"> 3</label>
                    <label><input type="radio" name="q8" value="4"> 4</label>
                    <label><input type="radio" name="q8" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 9 -->
            <div class="question">
                <p>9. I found myself getting agitated</p>
                <div class="options">
                    <label><input type="radio" name="q9" value="1"> 1</label>
                    <label><input type="radio" name="q9" value="2"> 2</label>
                    <label><input type="radio" name="q9" value="3"> 3</label>
                    <label><input type="radio" name="q9" value="4"> 4</label>
                    <label><input type="radio" name="q9" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 10 -->
            <div class="question">
                <p>10. I was intolerant of anything that kept me from getting on with what I was doing</p>
                <div class="options">
                    <label><input type="radio" name="q10" value="1"> 1</label>
                    <label><input type="radio" name="q10" value="2"> 2</label>
                    <label><input type="radio" name="q10" value="3"> 3</label>
                    <label><input type="radio" name="q10" value="4"> 4</label>
                    <label><input type="radio" name="q10" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 11 -->
            <div class="question">
                <p>11. I felt I was close to panic</p>
                <div class="options">
                    <label><input type="radio" name="q11" value="1"> 1</label>
                    <label><input type="radio" name="q11" value="2"> 2</label>
                    <label><input type="radio" name="q11" value="3"> 3</label>
                    <label><input type="radio" name="q11" value="4"> 4</label>
                    <label><input type="radio" name="q11" value="5"> 5</label>
                </div>
            </div>
            <!-- Question 12 -->
            <div class="question">
                <p>12. I was unable to become enthusiastic about anything</p>
                <div class="options">
                    <label><input type="radio" name="q12" value="1"> 1</label>
                    <label><input type="radio" name="q12" value="2"> 2</label>
                    <label><input type="radio" name="q12" value="3"> 3</label>
                    <label><input type="radio" name="q12" value="4"> 4</label>
                    <label><input type="radio" name="q12" value="5"> 5</label>
                </div>
            </div>

            <div class="actions">
                <button type="button" class="cancel" onclick="handleCancel()">Cancel</button>
                <button type="submit" class="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
