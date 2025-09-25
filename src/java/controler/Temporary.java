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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author mohit
 */
public class Temporary extends HttpServlet {
private static final long serialVersionUID = 1L;
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        InputStream inputStream = null;
        resp.setContentType("text/html");
        boolean isMultiPart=ServletFileUpload.isMultipartContent(req);
        if(!isMultiPart){
            System.out.println("hi");
            return;
        }
        System.out.println(req);
        String empid = req.getParameter("userId");
        Part filePart = req.getPart("image");
        System.out.println(empid);
        System.out.println(filePart);
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
        String message = null; 
        
        try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Driver Loaded");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
                System.out.println("Connected");
                
                pst = con.prepareStatement("INSERT INTO post VALUE(?,?)");
                
                pst.setString(1, empid);

            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
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
            req.setAttribute("Message", message);

            // forwards to the message page
            getServletContext().getRequestDispatcher("/home.jsp").forward(req, resp);
        }
    }
}


