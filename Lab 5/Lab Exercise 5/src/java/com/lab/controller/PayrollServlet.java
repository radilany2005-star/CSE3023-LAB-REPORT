package com.lab.controller;

import com.lab.bean.Employee;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/PayrollServlet")
public class PayrollServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<Employee> list = new ArrayList<>();
        // Add data employees
        list.add(new Employee("S4501", "Ali Masdo", "HR", 2500));
        list.add(new Employee("S7232", "Siti Jamiah", "Finance", 3200));
        list.add(new Employee("S6347", "John Cena", "Cyber Security", 4000));
        list.add(new Employee("S7235", "Aina Mardiah", "Marketing", 2800));
        list.add(new Employee("S3517", "David Beckham", "IT", 3500));
        // Send data to JSP
        request.setAttribute("employeeList", list);
        // Forward to JSP
        request.getRequestDispatcher("payroll_view.jsp").forward(request, response);
    }
}