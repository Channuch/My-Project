<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Book</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6e6955, #94c07a);
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }

        .login-containeer {
            background-color: rgba(255, 255, 255, 0.137);
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 10px 20px;
            transition: transform 0.2s;
            width: 350px;
            text-align: center;
        }

        h2 {
            color: linear-gradient(to right, #6e6955, #94c07a);
        }

        label {
            display: block;
            width: 100%;
            margin-top: 10px;
            margin-bottom: 5px;
            text-align: left;
            color: #090909;
            font-weight: bold;
        }

        input {
            display: block;
            width: 100%;
            margin-bottom: 15px;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .btn-row {
              display: flex;
              justify-content: center;
              margin-top: 20px;
            }



        button {
              padding: 10px 20px;
              background-color: #4CAF50;
              color: white;
              font-weight: bold;
              border: none;
              border-radius: 5px;
              cursor: pointer;
              width: 100%;
            }

            button:hover {
              background-color: #45a049;
            }
    </style>
</head>

<body>
    <div class="login-containeer">
        <h2>Log In</h2>
        <form action="login" method="post">
            <div>
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div>
                <label for="password">password:</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <div class="btn-row">
                    <button type="submit">Submit</button>
            </div>
        </form>
        <p>Dont Have Account ? <a href="index.jsp" style="text-decoration: none;">Create Account</a></p>
    </div>
</body>

</html>