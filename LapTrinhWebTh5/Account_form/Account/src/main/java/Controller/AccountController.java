package Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AccountController", value = "/account")
public class AccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/account.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Set the user input as attributes in the request
        request.setAttribute("fullname", fullname);
        request.setAttribute("email", email);
        request.setAttribute("password", password);

        // Forward the request to the "result.jsp" page
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/result.jsp");
        dispatcher.forward(request, response);
    }
}