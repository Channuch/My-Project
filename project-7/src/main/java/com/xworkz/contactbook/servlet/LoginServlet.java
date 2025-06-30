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
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String email = req.getParameter("email");
            String password = req.getParameter("password");
//
        UserService userService = new UserServiceImpl();
        UserDto dto = userService.getUserByEmail(email);
        if(dto != null){
            if(dto.getUserMail().equals(email) && dto.getPassword().equals(password)){
                HttpSession httpSession = req.getSession();
                httpSession.setAttribute("email",email);
                req.getRequestDispatcher("contactMenu.jsp").forward(req,resp);
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("contactMenu.jsp");
//            requestDispatcher.forward(req,resp);
            }
        }
//        else {
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("login.jsp");
//            requestDispatcher.forward(req,resp);
//        }

    }
}
