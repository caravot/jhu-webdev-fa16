package classes.seminar;

import java.io.*;
import java.util.Arrays;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.*;

import classes.user.User;
import mail.MailUtilGmail;
import mail.MailUtilLocal;

// process form for seminar registration
public class seminarRegisterServlet extends HttpServlet {
    public void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // get path that we came from
        String pathInfo = request.getServletPath();

        // common return values
        String message = "";
        String url = "/modules/ten/index.jsp";

        // verify that the user has filled in all form values
        if (pathInfo != null && pathInfo.contains("add")) {
            // get parameters from the request
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String empStatus = request.getParameter("empStatus");
            String[] courses = request.getParameterValues("courses");
            String[] fees = request.getParameterValues("fees");

            if (name == null || email == null || empStatus == null || courses == null || fees == null ) {
                message = "You must fill out all sections of the form.";

                request.setAttribute("message", message);
            } else {
                // set user variables
                User user = new User();
                user.setName(name);
                user.setEmail(email);
                user.setEmpStatus(empStatus);
                user.setCourses(courses);
                user.setFees(fees);

                // set redirect url
                url = "/modules/ten/result.jsp";

                // store the user object in the session
                request.getSession().setAttribute("user", user);
            }
        } else if (pathInfo != null && pathInfo.contains("confirm")) {
            User user = (User) request.getSession().getAttribute("user");

            // get parameters from the request
            String cardType = request.getParameter("card-type");
            String cardNumber = request.getParameter("card-number");
            String cardDate = request.getParameter("card-type");

            if (cardType == null || cardNumber.length() == 0 || cardDate.length() == 0) {
                message = "You must fill out all sections of the form.";

                request.setAttribute("message", message);

                // set redirect url
                url = "/modules/ten/payment.jsp";
            } else {
                String to = user.getEmail();
                String from = "carrie.peary@gmail.com";
                String subject = "Registration Information for JHU 1st Annual Software Development Seminar";
                String body = "Thanks for your registration to the JHU 1st Annual Software Development Seminar.\n\n"
                        + "You registered with the following details: \n\n"
                        + " - Name: " + user.getName() + "\n"
                        + " - Employee Status: " + user.getEmpStatus() + "\n"
                        + " - Courses: " + user.getCoursesToList() + "\n"
                        + " - Fees: " + user.getFeesToList() + "\n\n"
                        + "If you have any questions please contact us at sw-dev-seminar@jhu.edu.";
                try {
                    MailUtilLocal.sendMail(to, from, subject, body, false);

                    url = "/modules/ten/thanks.jsp";
                } catch (MessagingException e) {
                    String errorMessage = "ERROR: Unable to send email. ERROR MESSAGE: " + e.getMessage();
                    request.setAttribute("errorMessage", errorMessage);

                    System.out.println(
                            "Unable to send email. \n"
                                    + "Here is the email you tried to send: \n"
                                    + "=====================================\n"
                                    + "TO: " + to + "\n"
                                    + "FROM: " + from + "\n"
                                    + "SUBJECT: " + subject + "\n\n"
                                    + body + "\n\n");

                    url = "/modules/ten/index.jsp";
                }
            }
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