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

    SubjectDAO dao = new SubjectDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        StudentBean loggedUser = (StudentBean) session.getAttribute("loggedUser");
        String matricNo = (loggedUser != null) ? loggedUser.getMatricNo() : null;

        if ("insert".equals(action)) {
            SubjectBean s = new SubjectBean();
            s.setMatricNo(matricNo);
            s.setSubjectName(request.getParameter("subjectName"));
            s.setSubjectCode(request.getParameter("subjectCode"));

            dao.addSubject(s);
            response.sendRedirect("SubjectServlet?action=view");

        } else if ("update".equals(action)) {
            SubjectBean s = new SubjectBean();
            s.setId(Integer.parseInt(request.getParameter("id")));
            s.setSubjectName(request.getParameter("subjectName"));
            s.setSubjectCode(request.getParameter("subjectCode"));

            dao.updateSubject(s);
            response.sendRedirect("SubjectServlet?action=view");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        if (action == null) {
            action = "view"; // Default action
        }

        if ("view".equals(action)) {
            StudentBean loggedUser = (StudentBean) session.getAttribute("loggedUser");
            String matricNo = (loggedUser != null) ? loggedUser.getMatricNo() : "";

            List<SubjectBean> listSubjects = dao.getAllSubjects(matricNo);
            request.setAttribute("listSubjects", listSubjects);
 
            request.getRequestDispatcher("subject/viewSubjects.jsp").forward(request, response);

        } else if ("addForm".equals(action)) {
            request.getRequestDispatcher("subject/registerSubject.jsp").forward(request, response);

        } else if ("editForm".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            SubjectBean existingSubject = dao.getSubjectById(id);
            request.setAttribute("subject", existingSubject);
            
            request.getRequestDispatcher("subject/updateSubject.jsp").forward(request, response);

        } else if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            dao.deleteSubject(id);
            response.sendRedirect("SubjectServlet?action=view");
        }
    }
}