<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Contact Information Updated</title>
  <style>
    body {
      background-color: #90EE90; /* Light green background color */
      margin: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: "Arial", sans-serif;
    }

    .container {
      text-align: center;
    }

    h1 {
      font-size: 24px;
      color: #333;
    }

    a {
      display: inline-block;
      margin-top: 20px;
      font-size: 18px;
      color: #006400;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>

  <script>
    // Redirect to home page after 5 seconds
    setTimeout(function() {
      window.location.href = "index.jsp";
    }, 5000);
  </script>
</head>
<body>

<div class="container">
  <h1>Contact Information of ${key} Updated Successfully</h1>
  <p>You will be redirected to the home page in 10 seconds...</p>
  <a href="index.jsp">Go To Home Page Now</a>
</div>

</body>
</html>
