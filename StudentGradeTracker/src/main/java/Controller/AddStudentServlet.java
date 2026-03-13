package Controller;

import model.Student;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        double grade = Double.parseDouble(request.getParameter("grade"));

        HttpSession session = request.getSession();

        ArrayList<Student> students = (ArrayList<Student>) session.getAttribute("students");

        if (students == null) {
            students = new ArrayList<>();
        }

        students.add(new Student(name, grade));

        session.setAttribute("students", students);

        response.sendRedirect("result.jsp");
    }
}