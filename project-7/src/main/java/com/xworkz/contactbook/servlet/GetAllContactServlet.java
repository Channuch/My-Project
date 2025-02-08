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
import java.util.List;

@WebServlet(urlPatterns = "/getAllContact")
public class GetAllContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println ("Do Get Started");

        ContactService contactService = new ContactServiceImpl();
        List<ContactDto> dtos = contactService.getAllContact();

        req.setAttribute("listOfContacts",dtos);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("getallcontact.jsp");
        requestDispatcher.forward(req,resp);
        System.out.println("Do Get Ended");
    }
}
