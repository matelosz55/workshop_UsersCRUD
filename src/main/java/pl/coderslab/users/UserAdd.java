package pl.coderslab.users;

import pl.coderslab.dao.UserDao;
import pl.coderslab.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/user/add")
public class UserAdd extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp")
                .forward(request, response);


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String email = request.getParameter("userEmail");
        String password = request.getParameter("userPassword");
        User user = new User();
        user.setUserName(userName);
        user.setEmail(email);
        user.setPassword(password);
        UserDao userDao = new UserDao();
        userDao.create(user);
        response.sendRedirect("/user/list");


    }


}

