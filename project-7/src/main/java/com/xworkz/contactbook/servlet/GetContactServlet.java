package com.xworkz.contactbook.servlet;

import com.xworkz.contactbook.dto.ContactDto;
import com.xworkz.contactbook.service.ContactService;
import com.xworkz.contactbook.service.ContactServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet (urlPatterns = "/getUser")
public class GetContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     String search = req.getParameter("id");

        ContactService contactService = new ContactServiceImpl();
        ContactDto dto = contactService.getContactById(Integer.parseInt(search));

        req.setAttribute("user",dto);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("get.jsp");
        requestDispatcher.forward(req,resp);


    }
}
