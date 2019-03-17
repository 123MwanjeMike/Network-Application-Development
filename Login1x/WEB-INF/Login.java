import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.security.*;

public class Login extends HttpServlet {
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    // Get the parameter from the request
    PrintWriter writer = response.getWriter();
    String username = request.getParameter("username");
      String password1 = request.getParameter("password");
      response.setContentType("text/html");

    // Send the response back to the user
    try {


  byte[] salt = getSalt();
        String password = get_SHA_1_SecurePassword(password1, salt);

      Class.forName("com.mysql.jdbc.Driver");//loads and registers mysql.jdbc drivers
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/NAD","root","the3demos.");//define the connection URL and establish the connection

    PreparedStatement ps = con.prepareStatement("SELECT UserName,Password from USERS where UserName=? and Password=?");
		ps.setString(1, username);
		ps.setString(2, password);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
		writer.println("********************************************************************************************************************************************");//process the result
    writer.println("**************************************************** YOU HAVE SUCCESSFULLY LOGGED IN !! ****************************************************");//process the result

			return;
		}
		writer.println("************************************* INVALID CREDENTIALS , PLEASE TRY AGAIN **************************************************");//process the result
		return;

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
