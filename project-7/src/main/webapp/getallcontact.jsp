<%@ page language="java" contentType="text/html; charset=US-ASCII"
       pageEncoding="US-ASCII"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="con" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Book</title>

    <style>
      h1{
      text
      }
    </style>
</head>
<body>
    <div class="container">
        <h1>All Saved Contact Book</h1>
        <!-- Bootstrap Table -->
        <table >
            <thead>
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Phone No</th>
                    <th>Gmail</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <con:forEach var="dto" items="${ listOfContacts }">
                    <tr>
                        <td>${ dto.getId() }</td>
                        <td>${ dto.getName() }</td>
                        <td>${ dto.getPhoneNumber() }</td>
                        <td>${ dto.getEmail() }</td>
                        <td>${ dto.getAddress() }</td>
                        <td>
                            <a href="editContact?id=${ dto.getId() }">
                                <button type="button" class="btn btn-success">Edit</button>
                            </a>
                            <a href="deleteContact?id=${ dto.getId() }">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </a>
                        </td>
                    </tr>
                    </con:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
