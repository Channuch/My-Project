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
@WebServlet(urlPatterns = "/contact")
public class ContactServlet extends HttpServlet {

    /*public ContactServlet(){
        System.out.println("Contact Servlet object is created");
    }*/


  /*  @Override
    public void init(ServletConfig config) throws ServletException {
        ContactService contactService = new ContactServiceImpl();
    }*/

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     String name = req.getParameter("name");
     String email = req.getParameter("email");
     String  phoneNo = req.getParameter("phoneNo");
     String address = req.getParameter("address");

        ContactDto contactDto = new ContactDto();
        contactDto.setName(name);
        contactDto.setEmail(email);
        contactDto.setPhoneNumber(Long.parseLong(phoneNo));
        contactDto.setAddress(address);

        ContactService contactService = new ContactServiceImpl();
        contactService.validateContact(contactDto);

        req.setAttribute("name",name);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("response.jsp");
        requestDispatcher.forward(req,resp);

    }

  /*  @Override
    public void destroy() {
        super.destroy();
        System.out.println("Close All Costly Resources");
    }*/
}

