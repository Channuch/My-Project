<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Book</title>
    <style>
        body {
            background: linear-gradient(to right, #6e6955, #94c07a);  /* Background gradient */
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;  /* Center the content horizontally */
            align-items: center;      /* Center the content vertically */
            font-family: 'Arial', sans-serif;
        }

        form {
            margin-bottom: 20px;
        }

        input[type="text"] {
            padding: 10px;
            font-size: 16px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            padding: 10px;
            font-size: 16px;
            background-color: #feb47b;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #ff7e5f;
        }

        table {
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
            font-size: 16px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

    </style>
</head>
<body>

<div>
    <form action="getcontact" method="get">
        <input type="text" placeholder="Search By Name" name="name" required>
        <button type="submit">Search</button>
    </form>
</div>

<div>
    <table>
        <tr>
            <th>Sl. No</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Address</th>
        </tr>

        <!-- This section assumes that the 'user' object is available in the request scope -->
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.phoneNumber}</td>
            <td>${user.address}</td>
        </tr>
    </table>
</div>

</body>
</html>
