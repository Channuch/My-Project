package com.xworkz.contactbook.servlet;

import com.xworkz.contactbook.dao.ContactDao;
import com.xworkz.contactbook.dao.ContactDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/deleteContact")
public class DeleteByIdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     String id = req.getParameter("id");

        ContactDao contactDao = new ContactDaoImpl();
        contactDao.deleteById(Integer.parseInt(id));

        resp.sendRedirect(req.getContextPath()+"/getAllContact");

//        RequestDispatcher requestDispatcher = req.getRequestDispatcher("getallcontact");
//        requestDispatcher.forward(req,resp);
    }
}
