<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Book</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6e6955, #94c07a);
        }

        .form-container {
            display: flex;
            justify-content: center;
            margin-top: 50px;  /* Margin added to move the form down */
        }

        .form-table {
            width: 50%; /* Set the table width to be smaller */
            border-collapse: collapse;
            background-color: #f9f9f9;
            padding: 10px;
            border: 1px solid #ddd;
        }

        .form-table td, .form-table th {
            padding: 10px;
            border: 1px solid #ddd;
        }

        .form-table th {
            background-color: #f2f2f2;
        }

        .form-group {
            margin: 10px 0;
        }

        label {
            margin-right: 10px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <h2>Update Contact</h2>

    <div class="form-container">
        <form action="update" method="post">
            <table class="form-table">
                <!-- Id Field -->
                <tr>
                    <td><label for="id">Id:</label></td>
                    <td><input type="text" id="id" name="id" value="${dto.getId()}" readonly></td>
                </tr>

                <!-- Name Field -->
                <tr>
                    <td><label for="name">Name:</label></td>
                    <td><input type="text" id="name" name="name" value="${dto.getName()}" required></td>
                </tr>

                <!-- Email Field -->
                <tr>
                    <td><label for="email">Email:</label></td>
                    <td><input type="email" id="email" name="email" value="${dto.getEmail()}" required></td>
                </tr>

                <!-- Phone Number Field -->
                <tr>
                    <td><label for="phoneNo">Phone No:</label></td>
                    <td><input type="tel" id="phoneNo" name="phoneNo" value="${dto.getPhoneNumber()}" required></td>
                </tr>

                <!-- Address Field -->
                <tr>
                    <td><label for="address">Address:</label></td>
                    <td><input type="text" id="address" name="address" value="${dto.getAddress()}" required></td>
                </tr>

                <!-- Submit Button -->
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button type="submit">Update</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
