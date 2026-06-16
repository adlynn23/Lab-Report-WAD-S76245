/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.WEB;


import com.DAO.SessionDAO;
import com.Model.SessionBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MP2-4
 */
public class ScheduleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        SessionDAO dao = new SessionDAO();

        List<SessionBean> list = dao.getAllSessions();

        request.setAttribute("sessionList", list);

        RequestDispatcher rd = request.getRequestDispatcher("schedule.jsp");

        rd.forward(request, response);
    }
}
