package classes.seminar;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import classes.user.User;

// process form for seminar registration
public class seminarRegisterServlet extends HttpServlet {
    public void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // get parameters from the request
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String empStatus = request.getParameter("empStatus");
        String[] courses = request.getParameterValues("courses");
        String[] fees = request.getParameterValues("fees");

        // common return values
        String message = "";
        String url = "";

        // verify that the user has filled in all form values
        if (name == null || email == null || empStatus == null || courses == null || fees == null ) {
            request.setAttribute("message", message);
            url = "/modules/seven/index.jsp";

            // forward request and response to the view
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else {
            // set user variables
            User user = new User();
            user.setName(name);
            user.setEmail(email);
            user.setEmpStatus(empStatus);
            user.setCourses(courses);
            user.setFees(fees);

            url = "/cravott1/modules/seven/result.jsp";

            // store the user object in the session
            request.getSession().setAttribute("user", user);
            response.sendRedirect(url);
        }
    }

    // forward all get actions to the post method
    public void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}