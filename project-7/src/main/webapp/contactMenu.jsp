<%@ page language="java" contentType="text/html; charset=US-ASCII"
pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Book</title>
    <style>
        body {
            background: linear-gradient(to right, #6e6955, #94c07a); /* Smooth background gradient */
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Arial', sans-serif;
        }

        .link-container {
            background-color: rgba(255, 255, 255, 0.9); /* Light background with opacity */
            border-radius: 15px; /* Rounded corners for the container */
            padding: 30px;
            text-align: center;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2); /* Subtle shadow effect */
            width: 280px; /* Container width */
        }

        .link-container h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .link-container a {
            display: block;
            color: #fff;
            text-decoration: none;
            background: linear-gradient(to right, #4CAF50, #8BC34A); /* Green gradient button-like background */
            padding: 12px 20px;
            margin: 10px 0;
            border-radius: 25px; /* Rounded corners for buttons */
            font-size: 18px;
            font-weight: bold;
            transition: all 0.3s ease-in-out; /* Smooth transition effect */
        }

        .link-container a:hover {
            background: linear-gradient(to right, #8BC34A, #4CAF50); /* Reverse the gradient on hover */
            transform: translateY(-4px); /* Slight upward motion on hover */
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.2); /* Stronger shadow on hover */
        }

        .link-container a:active {
            transform: translateY(2px); /* Button "press" effect */
            box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
  <div class="link-container">
    <h2>Contact Book</h2>
    <div><a href="addcontact.jsp">Add Contact</a></div>
    <div><a href="get.jsp">Get Contact</a></div>
    <div><a href="getAllContact">Get All Contacts</a></div>
     <div><a href="">Menu</a></div>
  </div>
</body>
</html>
