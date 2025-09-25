<%-- 
    Document   : registration.jsp
    Created on : 20 Apr, 2024, 10:27:49 PM
    Author     : mohit
--%>

<%@page import="controler.FieldChecker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/style.css" rel="stylesheet" />
    
    </head>
    <body bgcolor="cyan" style="padding-top: 5%;">
        
        <center>
        <img src="images/logo2.png" class="mypng" alt="Logo">
        <form action="FieldChecker" method="post" id="registrationForm">
            <table>
                <tr>
                    <td>
                        UserId:
                    </td>
                    <td>
                        <input type="text" name="userId" id="userId" oninput="handleUserIDValidation()" placeholder="Enter UserId" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Username:
                    </td>
                    <td>
                        <input type="text" name="username" onchange="handleUsernameValidation()" id="username" placeholder="Enter Username" >
                    </td>
                </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <input type="password" name="password" id="password" placeholder="Enter password" required>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Age
                    </td>
                    <td>
                        <input type="number" name="age" id="age" placeholder="Enter Age" required>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Date of Birth
                    </td>
                    <td>
                        <input type="date" name="dob" placeholder="Select DOB" required>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Email
                    </td>
                    <td>
                        <input type="email" name="mail" id="mail" placeholder="Enter Email" >
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact
                    </td>
                    <td>
                        <input type="number" name="contact" id="contact" placeholder="Enter Email" >
                    </td>
                </tr>
                <tr rowspan="4">
                    <td>
                    About Yourself;
                    </td>
                    <td colspan="5" >
                        <textarea placeholder="Write About Yourself Here" name="aboutMe" value="" style="height: 100%;width: 100%"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        Interest:
                    </td>
                    <td colspan="5">
                        <input style="width: 100%;height: 20px"type="text" name="interest" value="" placeholder="Write Your Interests here" >
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                       <input type="radio"  value="Male" name="gender" required> Male
                    </td>
                    <td>
                        
                        <input type="radio"  value="Female" name="gender" required> Female
                    </td>
                </tr>
               
                <tr>
                    <td>City:</td>
                    <td><input type="text" name="city" placeholder="Enter your City" required></td>
                </tr>
                <tr>
                    <td>State</td>
                    <td><select name="state" value="state" required>
                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                        <option value="Goa">Goa</option>
                        <option value="Gujarat">Gujarat</option>
                        <option value="Haryana">Haryana</option>
                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                        <option value="Jharkhand">Jharkhand</option>
                        <option value="Karnataka">Karnataka</option>
                        <option value="Kerala">Kerala</option>
                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                        <option value="Maharashtra">Maharashtra</option>
                        <option value="Manipur">Manipur</option>
                        <option value="Meghalaya">Meghalaya</option>
                        <option value="Mizoram">Mizoram</option>
                        <option value="Nagaland">Nagaland</option>
                        <option value="Odisha">Odisha</option>
                        <option value="Punjab">Punjab</option>
                        <option value="Rajasthan">Rajasthan</option>
                        <option value="Sikkim">Sikkim</option>
                        <option value="Tamil Nadu">Tamil Nadu</option>
                        <option value="Telangana">Telangana</option>
                        <option value="Tripura">Tripura</option>
                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                        <option value="Uttarakhand">Uttarakhand</option>
                        <option value="West Bengal">West Bengal</option>
                    </select></td>
                </tr>
                 <tr>
                    <td>
                        
                    </td>
                    <td>
                        <input type="reset"  value="Reset">
                        <input type="submit"  Value="Register">
                    </td>
                </tr>
                <tr>
                    <td colspan='2'><a href="login.html">Already have an account? Sign In...</a></td>
                </tr>
                <tr>
                    <td>
                        <%=FieldChecker.regChecker%>
                    </td>
                </tr>
            </table>
        </form>
        </center>
    </body>
    <script src="javascript.js"></script>
    
</html>
