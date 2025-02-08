<%@ page language="java" contentType="text/html; charset=US-ASCII"
pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Book</title>

  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Styles -->
  <style>
    body {
      background: linear-gradient(to right, #6e6955, #94c07a);  /* Background gradient from left to right */
      height: 100vh;
      margin: 0;
      display: flex;
      justify-content: center;  /* Center both the image and the form */
      align-items: center;      /* Center the form vertically */
      font-family: 'Arial', sans-serif;
    }

    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      flex-wrap: wrap;  /* Allow flex items to wrap on smaller screens */
      width: 90%;
      height: 90%;
    }

    /* Contact form container */
    .form-container {
      position: relative;
      max-width: 400px;
      width: 100%;
      background: rgba(255, 255, 255, 0.1); /* Semi-transparent white background */
      backdrop-filter: blur(10px);  /* Frosted glass effect */
      border-radius: 25px;
      padding: 30px;
      margin-left: 30px; /* Space between the form and the image */
      box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);  /* Stronger shadow for more depth */
      animation: fadeInRight 1.5s ease-out;  /* Add animation for form */
    }

    .form-container h2 {
      text-align: center;
      color: #fff; /* White text for the title */
      margin-bottom: 20px;
      font-size: 26px; /* Slightly larger font for the title */
      font-weight: 600;
    }

    .form-group label {
      color: #fff; /* White labels for contrast */
    }

    .form-control {
      background-color: rgba(255, 255, 255, 0.3); /* Slightly transparent background for form inputs */
      color: #fff; /* White text in input fields */
      border: 1px solid rgba(255, 255, 255, 0.5);  /* Light border for the form fields */
      border-radius: 10px; /* Rounded corners for input fields */
      transition: border-color 0.3s ease-in-out; /* Smooth transition for border on focus */
    }

    .form-control:focus {
      border-color: #feb47b; /* Highlight border color when focused */
      box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
    }

    .btn-primary {
      background-color: #feb47b; /* Button color */
      border: none;
      border-radius: 25px; /* Rounded corners for the button */
      padding: 12px;
      transition: all 0.3s ease-in-out;
    }

    .btn-primary:hover {
      background-color: #ff7e5f; /* Hover effect */
      transform: translateY(-4px); /* Button lift effect */
    }

    .btn-block {
      margin-top: 10px;
    }

    /* Animation for the contact form */
    @keyframes fadeInRight {
      0% {
        opacity: 0;
        transform: translateX(100%);
      }
      100% {
        opacity: 1;
        transform: translateX(0);
      }
    }

    /* Contact Book Image Styling */
    .contact-image {
      width: 300px;
      height: auto;
      opacity: 0;
      animation: fadeInLeft 1.5s ease-out forwards;  /* Image sliding in animation */
    }

    /* Animation for the contact image */
    @keyframes fadeInLeft {
      0% {
        opacity: 0;
        transform: translateX(-100%);
      }
      100% {
        opacity: 1;
        transform: translateX(0);
      }
    }

    .home-btn {
      background-color: #4CAF50; /* Green color for the Home button */
      color: #fff;
      text-align: center;
      display: inline-block;
      padding: 12px 25px;
      border-radius: 25px;
      text-decoration: none;
      margin-top: 15px;
      transition: all 0.3s ease-in-out;
    }

    .home-btn:hover {
      background-color: #45a049; /* Slightly darker green on hover */
      transform: translateY(-3px);
    }

    @media (max-width: 768px) {
      .contact-image {
        width: 80%;  /* Adjust the image size on smaller screens */
        margin-bottom: 20px; /* Space between the image and form */
      }

      .form-container {
        margin-left: 0; /* Remove left margin for smaller screens */
      }

      .form-container h2 {
        font-size: 24px; /* Adjust heading size for mobile */
      }
    }
  </style>
</head>
<body>

  <div class="container">
    <!-- Contact Book Image -->
    <img src="phone-book.png" alt="Contact Book" class="contact-image">

    <!-- Home Button -->
    <a href="index.jsp" class="home-btn">Home</a>

    <!-- Contact Form Container -->
    <div class="form-container">
      <h2>Contact Form</h2>
      <form action="contact" method="post">
        <!-- Name Field -->
        <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" class="form-control" id="name" name="name" required>
        </div>

        <!-- Email Field -->
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <!-- Phone Number Field -->
        <div class="form-group">
          <label for="phoneNo">Phone No:</label>
          <input type="tel" class="form-control" id="phoneNo" name="phoneNo" required>
        </div>

        <!-- Address Field -->
        <div class="form-group">
          <label for="address">Address:</label>
          <textarea class="form-control" id="address" name="address" rows="4" required></textarea>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary btn-block">Submit</button>
      </form>
    </div>
  </div>

  <!-- Bootstrap JS and dependencies -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
