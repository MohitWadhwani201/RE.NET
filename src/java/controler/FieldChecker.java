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
import model.RegistrationAuthenticator;

/**
 *
 * @author mohit
 */
@WebServlet(name = "FieldChecker", urlPatterns = {"/FieldChecker"})
public class FieldChecker extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        response.sendRedirect("login.html");
    }
    public static String regChecker="";
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        Userdto user=new Userdto();
        user.setUserid(request.getParameter("userId"));
        
        String registration="";
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        user.setCity(request.getParameter("city"));
        user.setMail(request.getParameter("mail"));
        user.setAge(request.getParameter("age"));
        user.setDob(request.getParameter("dob"));
        user.setAboutme(request.getParameter("aboutMe"));
        user.setState(request.getParameter("state"));
        user.setInterest(request.getParameter("interest"));
        user.setGender(request.getParameter("gender"));
        user.setContact(request.getParameter("contact"));
        RegistrationAuthenticator reg= new RegistrationAuthenticator();
       
    try {
        registration= reg.isRegistration(user);
    } catch (SQLException ex) {
        Logger.getLogger(FieldChecker.class.getName()).log(Level.SEVERE, null, ex);
    }
        if(registration.equals("false"))
        {
            response.sendRedirect("registration.jsp");
            regChecker = "Please enter all the details";
        }
        else if(registration.equals("Registration Successfull"))
        {
            HttpSession session=request.getSession(true);
            session.setAttribute("username", user.getUsername());
            session.setAttribute("age", Integer.parseInt(user.getAge()));
            session.setAttribute("mail", user.getMail());
            session.setAttribute("dob", user.getDob());
            session.setAttribute("aboutMe", user.getAboutme());
            session.setAttribute("interest", user.getInterest());
            session.setAttribute("city", user.getCity());
            session.setAttribute("contact",user.getContact());
            session.setAttribute("state",user.getState());
            session.setAttribute("gender", user.getGender());
            response.sendRedirect("home.jsp");
        } 
        else
        {
            regChecker=registration;
        }
    }
}
