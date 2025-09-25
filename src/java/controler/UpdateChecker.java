/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Locale;
import java.util.Date;
 
import java.text.SimpleDateFormat;
import javax.servlet.annotation.WebServlet;
import model.RegistrationAuthenticator;
import model.UpdateField;

/**
 *
 * @author mohit
 */
@WebServlet(name = "UpdateChecker", urlPatterns = {"/UpdateChecker"})
public class UpdateChecker extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        response.sendRedirect("login.html");
    }
   public static String updateChecker="";
   public static String updateInfo;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        
        String name =request.getParameter("Name");
        
        
        String mail =request.getParameter("email");
        String age = request.getParameter("age");
        String day=request.getParameter("day");
        String month=request.getParameter("month");
        String year=request.getParameter("year");
        String aboutMe=request.getParameter("aboutMe");
        String newUsername = name;
        String dob=day+"-"+month+"-"+year;
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH);
        Date date=new Date();
        if(!dob.trim().equals(""))
        try {
            date = formatter.parse(dob);
        } catch (ParseException ex) {
            Logger.getLogger(UpdateChecker.class.getName()).log(Level.SEVERE, null, ex);
        }
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
        String dob1=simpleDateFormat1.format(date);
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String contact=request.getParameter("contact");
        System.out.println(dob1);
        UpdateField update=new UpdateField();
    try {
        updateInfo=update.isUpdate(newUsername,age , dob1, mail,aboutMe,city,state,contact);
    } catch (SQLException ex) {
        Logger.getLogger(FieldChecker.class.getName()).log(Level.SEVERE, null, ex);
    }
        if(updateInfo.equals("false"))
        {
            response.sendRedirect("editProfilePage.jsp");
            updateChecker = "Please enter all the details";
        }
        else if(updateInfo.equals("Update Successfull"))
        {
            HttpSession session=request.getSession(true);
            session.setAttribute("username", newUsername);
            session.setAttribute("age", Integer.parseInt(age));
            session.setAttribute("email", mail);
            session.setAttribute("dob", dob);
            session.setAttribute("city", city);
            session.setAttribute("state", state);
            session.setAttribute("aboutMe", aboutMe);
            session.setAttribute("contact", contact);
            response.sendRedirect("editProfilePage.jsp");
        } 
        else
        {
            updateChecker="Some Error Occured";
            response.sendRedirect("editProfilePage.jsp");
        }
    }
}
