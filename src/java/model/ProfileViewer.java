package model;

import db.DBConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import java.text.SimpleDateFormat;  


/**
 *
 * @author mohit
 */
public class ProfileViewer {
    
     Date date=new Date();
     public String dateOfBirth="";
     public String username="";
     public String city="";
     public int age;
     public String email="";
     public long contact;
     public String state="";
     public String aboutMe="";
     public String interest="";
     public static String userId="";
     public String Gender="";
     public ProfileViewer(String userId1)
     {
        userId=userId1;
        try{
            Statement st=DBConnector.getStatement();
            String query="select * from renet where UserID ='"+userId+"'";
            System.out.println("Query= "+query);
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                this.username=rs.getString(12);
                this.date=rs.getDate(3);
                this.age=Integer.parseInt(rs.getString(4));
                String temp=rs.getString(5);
                this.email=temp.toLowerCase();
                this.contact=Long.parseLong(rs.getString(6));
                this.interest=rs.getString(7);
                this.aboutMe=rs.getString(8);
                this.city=rs.getString(9);
                this.state=rs.getString(10);
                this.Gender=rs.getString(11);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
         System.out.println(userId);
         System.out.println(username);
         System.out.println(email);
         System.out.println(dateOfBirth);
         System.out.println(userId);
         System.out.println(age);
        SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");  
        dateOfBirth=formatter.format(date);
    }
}
