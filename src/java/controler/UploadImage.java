/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author mohit
 */
@WebServlet(name = "UploadImage", urlPatterns = {"/UploadImage"})
public class UploadImage extends HttpServlet {
private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("Home.jsp");
    }

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException 
    {
        InputStream inputStream = null;
        System.out.println(request);
        String empid = request.getParameter("userId");
        Part filePart = request.getPart("image");
        System.out.println(empid);
        System.out.println(filePart+" hi");
        if (filePart != null) 
        {
            System.out.println("File Part");
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
        }

        Connection con = null;
        PreparedStatement pst = null; 
        String message =""; 
        
        try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Driver Loaded");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
                System.out.println("Connected");
                
                pst = con.prepareStatement("INSERT INTO post VALUE(?,?)");
                
                pst.setString(1, empid);

            if (inputStream != null) {
                pst.setBlob(2, inputStream);
            }
            int i = pst.executeUpdate();
            if (i > 0) 
            {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException e) 
        {
            System.out.println(e);
        } 
        catch (ClassNotFoundException e) 
        {
            System.out.println(e);
        } 
        finally 
        {
            if (con != null) 
            {
                // closes the database connection
                try 
                {
                    con.close();
                } 
                catch (SQLException e) 
                {
                    System.out.println(e);
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
            getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
        }
        
    }
}
