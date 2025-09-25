/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dto.Userdto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;

/**
 *
 * @author mohit
 */
@WebServlet(name = "LoginChecker", urlPatterns = {"/LoginChecker"})
public class LoginChecker extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        response.sendRedirect("login.html");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        String userId=request.getParameter("userId");
        String password=request.getParameter("password");
        String username="";
        Userdto  user=new Userdto();
        user.setUserid(userId);
        user.setPassword(password);
        LoginAuthenticator authenticator=new LoginAuthenticator();
        boolean login=false;
        try {
            login = authenticator.isLogin(user);
        } catch (SQLException ex) {
            Logger.getLogger(LoginChecker.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(login)
        {
            HttpSession session=request.getSession(true);
//            System.out.println(userId);
            
            session.setAttribute("userId", userId);
            username=LoginAuthenticator.username;
            session.setAttribute("username", LoginAuthenticator.username);
//            System.out.println(username);
            response.sendRedirect("home.jsp");
        }
        else{
            response.sendRedirect("login.html");
        }
        
    }
}
