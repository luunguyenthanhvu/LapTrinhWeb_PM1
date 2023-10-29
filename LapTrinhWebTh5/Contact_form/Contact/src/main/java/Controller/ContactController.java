package Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ContactController", value = "/contact")
public class ContactController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/contact.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String service = request.getParameter("service");
        String message = request.getParameter("message");
        if(message.isEmpty() || message.isBlank()) {
            request.setAttribute("note", "bạn không để lại lời nhắn gì cả :(");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/contact.jsp");
            dispatcher.forward(request,response);
        }
        request.setAttribute("userName", fullName);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/result.jsp");
        dispatcher.forward(request,response);
    }
}