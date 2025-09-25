/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

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
import model.DeleteProfileData;

import model.ProfileViewer;

/**
 *
 * @author mohit
 */
@WebServlet(name = "DeleteProfile", urlPatterns = {"/DeleteProfile"})
public class DeleteProfile extends HttpServlet {
    public static String message="";
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        response.sendRedirect("login.html");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
    {
        HttpSession session=request.getSession(true);
        
        String userId=(String)session.getAttribute("userId");
        String password=request.getParameter("passwordInput");
        
        DeleteProfileData deletion=new DeleteProfileData();
        boolean delete=false;
        try {
            delete = deletion.isDeleteProfileData(userId, password);
        } catch (SQLException ex) {
            Logger.getLogger(LoginChecker.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(delete)
        {
            session=request.getSession(false);
            response.sendRedirect("login.html");
        }
        else{
            message="Deletion of Profile Unsuccessfull";
            response.sendRedirect("editProfilepage.jsp");
        }
        
    }
}
