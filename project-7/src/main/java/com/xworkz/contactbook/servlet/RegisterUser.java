package com.xworkz.contactbook.servlet;

import com.xworkz.contactbook.dto.UserDto;
import com.xworkz.contactbook.service.UserService;
import com.xworkz.contactbook.service.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.URIParameter;

@WebServlet(urlPatterns = "/registerUser")
public class RegisterUser  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("u_name");
        String lastName = req.getParameter("l_name");
        String phoneNo = req.getParameter("phoneNo");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String cnfPassword = req.getParameter("cnfPassword");
        String address = req.getParameter("address");

        UserDto user = new UserDto();
        user.setUserName(name);
        user.setLastName(lastName);
        user.setUserPhoneNo(Long.parseLong(phoneNo));
        user.setUserMail(email);
        user.setPassword(password);
        user.setCnfmPassword(cnfPassword);
        user.setAddress(address);

        UserService userService = new UserServiceImpl();
        userService.validateUser(user);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("login.jsp");
        requestDispatcher.forward(req,resp);
    }
}
