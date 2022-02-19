package pl.coderslab.users;

import pl.coderslab.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/user/delete")
public class UserDelete extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDao userDao = new UserDao();
        String s = request.getParameter("id");
        userDao.delete(Long.parseLong(s));
        response.sendRedirect("/users/list.jsp");

    }

}

