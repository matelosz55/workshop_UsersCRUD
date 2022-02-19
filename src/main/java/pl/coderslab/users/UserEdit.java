package pl.coderslab.users;

import pl.coderslab.dao.UserDao;
import pl.coderslab.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        String id = request.getParameter("id");

        user.setId(Long.parseLong(id));
        user.setUserName(request.getParameter("userName"));
        user.setEmail(request.getParameter("userEmail"));
        user.setPassword(request.getParameter("userPassword"));

        UserDao userDao = new UserDao();
        userDao.update(user);

        response.sendRedirect("/user/list");
    }
}