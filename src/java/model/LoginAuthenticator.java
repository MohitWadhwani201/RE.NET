/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.sun.javafx.sg.prism.NGTriangleMesh;
import db.DBConnector;
import dto.Userdto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



/**
 *
 * @author mohit
 */
public class LoginAuthenticator {
    public static String username ="";
    public boolean isLogin(Userdto user) throws SQLException
    {
        String tablepassword="";
        String userId=user.getUserid();
        String password=user.getPassword();
        try{
            Statement st=DBConnector.getStatement();
            String query="select password , NameOfUser from renet where UserID ='"+userId+"'";
//            System.out.println("Query= "+query);
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                tablepassword=rs.getString(1); 
                username=rs.getString(2);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        if(userId!=null && password!=null && !userId.trim().equals("") && !username.trim().equals("") && password.equals(tablepassword))
        {
//            System.out.println(username);
            return true;
        }
        
        return false;
    }
}
