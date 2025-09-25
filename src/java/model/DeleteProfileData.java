/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author mohit
 */
public class DeleteProfileData {
    public boolean isDeleteProfileData(String UserId,String Password) throws SQLException
    {
        String tablepassword="";
        
        try{
            Statement st=DBConnector.getStatement();
            String query="select password , NameOfUser from renet where UserID ='"+UserId+"'";
            System.out.println("Query= "+query);
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                tablepassword=rs.getString(1); 
                
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        if(UserId!=null && Password!=null && !UserId.trim().equals("") && Password.equals(tablepassword))
        {
            Statement st=DBConnector.getStatement();
            String deleteQuery="DELETE FROM renet WHERE UserId='"+UserId+"'";
            System.out.println(deleteQuery);
            int i=st.executeUpdate(deleteQuery);
            if(i>0)
            return true;
            return false;
        }
        return false;
    }
}
