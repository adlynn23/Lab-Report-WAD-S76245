/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.WEB;



import com.DAO.SessionDAO;
import com.Model.SessionBean;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class BookSessionServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String student_name =
                request.getParameter("student_name");

        String branch_location =
                request.getParameter("branch_location");

        String lesson_type =
                request.getParameter("lesson_type");

        SessionBean session =
                new SessionBean();

        session.setStudent_name(student_name);
        session.setBranch_location(branch_location);
        session.setLesson_type(lesson_type);
        session.setStatus("Booked");

        SessionDAO dao =new SessionDAO();

        try {
            dao.bookSession(session);
        } catch (SQLException ex) {
            Logger.getLogger(BookSessionServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("ScheduleServlet");
    }
}