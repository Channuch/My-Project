<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Contact Book</title>
  <style>
    body {
      display: flex;
      align-items: center;
      justify-content: center;
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #6e6955, #94c07a);
      min-height: 100vh;
      margin: 0;
    }

    h2 {
      color: #333;
      text-align: center;
    }

    .register-container {
      max-width: 600px;
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    form > div {
      margin-bottom: 15px;
      display: flex;
      flex-direction: column;
    }

    label {
      margin-bottom: 5px;
      font-weight: bold;
    }

    input {
      padding: 10px;
      font-size: 14px;
      border: 1px solid #ccc;
      border-radius: 5px;
      width:100%;
    }

    .form-row {
      display: flex;
      gap: 20px;
    }

    .form-row > div {
      flex: 1;
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
    }

    button:hover {
      background-color: #45a049;
    }
  </style>
</head>

<body>
  <div class="register-container">
    <h2>Create Account</h2>
    <form action="registerUser" method="post">
      <div class="form-row">
        <div>
          <label for="u_name">First Name</label>
          <input type="text" id="u_name" name="u_name" placeholder="Enter your First Name" required />
        </div>
        <div>
          <label for="l_name">Last Name</label>
          <input type="text" id="l_name" name="l_name" placeholder="Enter your Last Name" required />
        </div>
      </div>

      <div class="form-row">
        <div>
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Enter your Email" required />
        </div>
        <div>
          <label for="phoneNo">Phone No</label>
          <input type="number" id="phoneNo" name="phoneNo" placeholder="Enter your Phone Number" required />
        </div>
      </div>

      <div class="form-row">
        <div>
          <label for="password">Password</label>
          <input type="password" id="password" name="password" placeholder="Set Password" required />
        </div>
        <div>
          <label for="cnfPassword">Retype Password</label>
          <input type="password" id="cnfPassword" name="cnfPassword" placeholder="Retype Password" required />
        </div>
      </div>

      <div>
        <label for="address">Address</label>
        <input type="text" id="address" name="address" placeholder="Enter your Address" required />
      </div>

      <div class="btn-row">
        <button type="submit">Submit</button>
      </div>
    </form>
    <p>Already Have Account ? <a href="login.jsp" style="text-decoration: none;">Sign Up</a></p>
  </div>
</body>

</html>
