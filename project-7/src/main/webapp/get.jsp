<%@ page language= "java" contentType="text/html; charset=US-ASCII"
pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Book</title>
    <style>
    body {
          margin: 0;
          font-family: 'Arial', sans-serif;
        }
    table {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }

    td, th {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }

    tr:nth-child(even) {
      background-color: #dddddd;
    }
    </style>
</head>
<body>

  <div>
  <form action ="getUser">
   <input type ="text" placeholder ="Search By Id" name = "id">
  <button type= "submit" value = "search">Search</button>
  </form>
  </div>
  <div>
    <form action ="getcontact">
     <input type ="text" placeholder ="Search By Name" name = "name">
    <button type= "submit" value = "search">Search</button>
    </form>
    </div>
  <div>
   <table >
     <tr>
        <th>Sl,No</th>
        <th>Name</td>
        <th>Email</td>
        <th>Phone Number</td>
        <th>Address</td>
     </tr>
     <tr>
         <td>${ user.getId() }</td>
        <td>${ user.getName() }</td>
        <td>${ user.getEmail() }</td>
        <td>${ user.getPhoneNumber() }</td>
         <td>${ user.getAddress() }</td>
     </td>
   </table>
  </div>

</body>
</html>