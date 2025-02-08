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

@WebServlet(urlPatterns = "/update")
public class UpdateContactServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   String id = req.getParameter("id");
   String name =  req.getParameter("name");
   String  email =req.getParameter("email");
   String phoneNo =req.getParameter("phoneNo");
   String address = req.getParameter("address");

        ContactDto contactDtodto = new ContactDto();
        contactDtodto.setId(Integer.parseInt(id));
        contactDtodto.setName(name);
        contactDtodto.setEmail(email);
        contactDtodto.setPhoneNumber(Long.parseLong(phoneNo));
        contactDtodto.setAddress(address);

        ContactService contactService = new ContactServiceImpl();
        contactService.validateAndUpdate(contactDtodto);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("updateresponce.jsp");
        requestDispatcher.forward(req,resp);
    }
}
