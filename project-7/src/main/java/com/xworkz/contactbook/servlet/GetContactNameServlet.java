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

@WebServlet(urlPatterns = "/getcontact")
public class GetContactNameServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");

        ContactService contactService = new ContactServiceImpl();
     ContactDto contactDto= contactService.getContactByName(name);

        req.setAttribute("user", contactDto);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("getcontact.jsp");
        requestDispatcher.forward(req,resp);

    }
}
