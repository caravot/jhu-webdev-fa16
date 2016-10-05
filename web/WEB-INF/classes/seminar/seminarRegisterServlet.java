package classes.seminar;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

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
            url = "/modules/four/index.jsp";
        } else {
            url = "/modules/four/result.jsp";
        }

        // forward request and response to the view
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    // forward all get actions to the post method
    public void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}