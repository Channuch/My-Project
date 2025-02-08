package com.xworkz.contactbook.servlet;

import com.xworkz.contactbook.dao.ContactDao;
import com.xworkz.contactbook.dao.ContactDaoImpl;
import com.xworkz.contactbook.dto.ContactDto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/editContact")
public class FetchUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");

        ContactDao contactDao = new ContactDaoImpl();
        ContactDto contactDtodto = contactDao.getContactById(Integer.parseInt(id));

        req.setAttribute("dto",contactDtodto);

       RequestDispatcher requestDispatcher = req.getRequestDispatcher("updatecontact.jsp");
       requestDispatcher.forward(req,resp);
    }
}
