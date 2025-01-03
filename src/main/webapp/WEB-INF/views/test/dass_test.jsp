<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            max-width: 900px;
            margin: 2rem auto;
            padding: 2rem;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            font-size: 1.5rem;
            margin: 0;
        }

        .progress {
            display: flex;
            gap: 0.5rem;
            margin: 1rem 0;
        }

        .progress div {
            flex: 1;
            height: 5px;
            background: #e0e0e0;
            border-radius: 5px;
        }

        .progress .in-progress {
            background: #007bff;
        }

        .question {
            margin: 1.5rem 0;
        }

        .question p {
            margin: 0;
            font-size: 1rem;
            font-weight: bold;
        }

        .options {
            display: flex;
            justify-content: space-between;
            margin-top: 0.5rem;
        }

        .options label {
            display: flex;
            align-items: center;
            font-size: 0.9rem;
        }

        .options input[type="radio"] {
            margin-right: 0.5rem;
            margin-bottom: 0.3rem;
        }

        .actions {
            display: flex;
            justify-content: space-between;
            margin-top: 2rem;
        }

        .actions button {
            background: #007bff;
            color: #fff;
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
        }

        .actions button:hover {
            background: #0056b3;
        }

        .actions button.cancel {
            background: #ccc;
            color: #333;
        }

        .actions button.cancel:hover {
            background: #aaa;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>DASS Test</h1>
            <div class="progress">
                <div class="in-progress"></div>
                <div></div>
                <div></div>
            </div>
        </div>

        <form method="post" action="submitDASS">
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
                <button type="button" class="cancel">Cancel</button>
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
