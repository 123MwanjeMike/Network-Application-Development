import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.security.*;

public class Registration extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Get the parameter from the request
    PrintWriter writer = response.getWriter();
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String username = request.getParameter("username");
        String address = request.getParameter("address");
        String phone_number= request.getParameter("phone_number");
      //  String password = request.getParameter("password");
        String passwordToHash = request.getParameter("password");

        String email = request.getParameter("email");
         response.setContentType("text/html");

    // Send the response back to the user
    try {

 byte[] salt = getSalt();
        String password = get_SHA_1_SecurePassword(passwordToHash, salt);




      Class.forName("com.mysql.jdbc.Driver");//loads and registers mysql.jdbc drivers
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/NAD","root","the3demos.");//define the connection URL and establish the connection

     Statement st= con.createStatement();//create the statement
     String sql = "INSERT INTO USERS VALUES ('"+fname+"','" +  lname+"','" +  username+"','" +  address+"','" +  phone_number+"','" +  password+"','" +  email+"')";
           int i = st.executeUpdate(sql); //execute the statement using the query
           if(i>0){
            writer.println("***************************************************************************************************************");//process the result
            writer.println("**************************************************** YOU HAVE SUCCESSFULLY REGISTERED !! ****************************************************");//process the result
            writer.println("**************************************************** YOU HAVE SUCCESSFULLY REGISTERED !!****************************************************");//process the result
            writer.println("**************************************************** YOU HAVE SUCCESSFULLY REGISTERED !!****************************************************");//process the result
            writer.println("**************************************************** YOU HAVE SUCCESSFULLY REGISTERED !!****************************************************");//process the result

           }else{
            writer.println("***************************************************************************************************************");//process the result
            writer.println("**************************************************** ERROR, REGISTRATION FAILED !! ****************************************************");//process the result
            writer.println("**************************************************** ERROR, REGISTRATION FAILED !!****************************************************");
           }
      writer.close();//close the connection
    } catch (Exception e) {//incase thea is an error in the try it prints the error
        writer.println(e);
    }
  }


     public byte[] getSalt(){
    byte[] salt = new byte[10];
        return salt;
       }



  public static String get_SHA_1_SecurePassword(String passwordToHash, byte[] salt)
  { String generatedPassword = null;
      try {
          MessageDigest md = MessageDigest.getInstance("SHA-1");
          md.update(salt);
          byte[] bytes = md.digest(passwordToHash.getBytes());
          StringBuilder sb = new StringBuilder();
          for(int i=0; i< bytes.length ;i++){ sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));  }
          generatedPassword = sb.toString();
      }catch (NoSuchAlgorithmException e) { e.printStackTrace();}
      return generatedPassword;
  }






}
