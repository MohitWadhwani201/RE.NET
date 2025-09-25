package model;


import db.DBConnector;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mohit
 */
public class UpdateField {
    public String isUpdate(String newUsername,String age ,String dob,String mail,String aboutMe,String city,String state,String contact2) throws SQLException
    {
        String userId=ProfileViewer.userId;
        int age1;
        long contact;
        if(userId!=null && newUsername!=null && mail!=null && age!=null && dob!=null && !userId.trim().equals("") &&!newUsername.trim().equals("")&&  !dob.trim().equals("") && !age.trim().equals("") && !mail.trim().equals("") && !city.trim().equals("") && !state.trim().equals("") && !aboutMe.trim().equals("") && !contact2.trim().equals("") ) 
        {
            try{
                contact=Long.parseLong(contact2);
                age1 = Integer.parseInt(age);
            }
            catch(NumberFormatException e)
            {
                return "Age must be a numeric value";
            }
            try{
            Statement st = DBConnector.getStatement();
            String query ="Update  renet SET NameOfUser='"+newUsername+"',City='"+city+"',DOB='"+dob+"',Age='"+age1+"',EmailiD='"+mail+"',State='"+state+"',Contact='"+contact+"',AboutMe='"+aboutMe+"' where userID='"+userId+"'";
            System.out.println(query);
            int i = st.executeUpdate(query);
            if(i>0)
            {
                return "Update Successfull";
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
