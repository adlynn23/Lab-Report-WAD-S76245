package com.lab.controller;

import com.lab.bean.StudentBean;
import com.lab.bean.SubjectBean;
import com.lab.dao.SubjectDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SubjectServlet extends HttpServlet {
    private SubjectDAO subjectDAO = new SubjectDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        // Security check: Check if student session exists
        if (session == null || session.getAttribute("loggedUser") == null) {
            response.sendRedirect("login.html");
            return;
        }
        
        String action = request.getParameter("action");
        StudentBean loggedUser = (StudentBean) session.getAttribute("loggedUser");
        String matricNo = loggedUser.getMatricNo();

        if ("view".equals(action) || action == null) {
            List<SubjectBean> subjectList = subjectDAO.getSubjectsByStudent(matricNo);
            request.setAttribute("subjectList", subjectList);
            request.getRequestDispatcher("subject/viewSubject.jsp").forward(request, response);
            
        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            subjectDAO.deleteSubject(id);
            response.sendRedirect("SubjectServlet?action=view");
            
        } else if ("edit".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            SubjectBean sub = subjectDAO.getSubjectById(id);
            request.setAttribute("subject", sub);
            request.getRequestDispatcher("subject/updateSubject.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("loggedUser") == null) {
            response.sendRedirect("login.html");
            return;
        }

        String action = request.getParameter("action");
        StudentBean loggedUser = (StudentBean) session.getAttribute("loggedUser");

        if ("add".equals(action)) {
            SubjectBean sb = new SubjectBean();
            sb.setMatricNo(loggedUser.getMatricNo());
            sb.setSubjectCode(request.getParameter("subjectCode"));
            sb.setSubjectName(request.getParameter("subjectName"));
            
            subjectDAO.addSubject(sb);
            response.sendRedirect("SubjectServlet?action=view");

        } else if ("update".equals(action)) {
            SubjectBean sb = new SubjectBean();
            sb.setId(Integer.parseInt(request.getParameter("id")));
            sb.setSubjectCode(request.getParameter("subjectCode"));
            sb.setSubjectName(request.getParameter("subjectName"));
            
            subjectDAO.updateSubject(sb);
            response.sendRedirect("SubjectServlet?action=view");
        }
    }
}