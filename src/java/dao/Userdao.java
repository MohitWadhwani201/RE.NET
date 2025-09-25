/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Statement;
import db.DBConnector;
import dto.Userdto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mohit
 */
public class Userdao {
    public Userdto getUserData(String userId){
        Userdto user=new Userdto();
        try{
            Statement st=DBConnector.getStatement();
            String query="SELECT * FROM renet WHERE userId='"+userId+"'";
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                user.setUsername(rs.getString(12));
        user.setPassword(rs.getString(2));
        user.setCity(rs.getString(9));
        user.setMail(rs.getString(5));
        user.setAge(rs.getString(4));
        user.setDob(rs.getString(3));
        user.setAboutme(rs.getString(8));
        user.setState(rs.getString(10));
        user.setInterest(rs.getString(7));
        user.setGender(rs.getString(11));
        user.setContact(rs.getString(6));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Userdao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
}
