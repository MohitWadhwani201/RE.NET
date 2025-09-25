/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import dto.Userdto;
import java.math.BigInteger;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mohit
 */
public class RegistrationAuthenticator {
    public String isRegistration(Userdto user) throws SQLException
    {
        String userId=user.getUserid();
        String username =user.getUsername();
        String password =user.getPassword();
        String mail =user.getMail();
        String age=user.getAge();
        String dob=user.getDob();
        String aboutMe=user.getAboutme();
        String interest=user.getInterest();
        String gender=user.getGender();
        String contact=user.getContact();
        String state=user.getState();
        String city=user.getCity();
        int age1;
         long contact2;
        if(userId!=null&&username!=null && password!=null && mail!=null && age!=null && dob!=null && !userId.trim().equals("") &&!username.trim().equals("") &&  !dob.trim().equals("") && !age.trim().equals("") && !mail.trim().equals("")  ) 
        {
            try{
                  age1 = Integer.parseInt(age);
                  contact2=Long.parseLong(contact);
            }
            catch(NumberFormatException e)
            {
                return "Age must be a numeric value";
            }
            try{
            Statement st = DBConnector.getStatement();
            String query ="INSERT INTO renet (UserId,Password,DOB,Age,EmailId,NameOfUser,Contact,Interest,AboutMe,State,City,Gender) VALUES ('"+userId+"','"+password+"','"+dob+"','"+age1+"','"+mail+"','"+username+"','"+contact+"','"+interest+"','"+aboutMe+"','"+state+"','"+city+"','"+gender+"')";
            System.out.println(query);
            int i = st.executeUpdate(query);
            if(i>0)
            {
                return "Registration Successfull";
            }
            else
            {
                return "Registration Unsuccessfull please try Again";
            }
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
        }
        return "false";
    }
}
