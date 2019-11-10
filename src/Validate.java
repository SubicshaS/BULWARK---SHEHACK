import java.sql.*;



public class Validate {

    public static boolean checkUser(String username,String otp)
    {
        boolean status=false;
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
         Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/ebank","root","root");
         PreparedStatement ps =con.prepareStatement("select *from info where username=? and otp=?");
         //Statement st = con.createStatement();
         ps.setString(1,username);
         ps.setString(2,otp);
         ResultSet rs=ps.executeQuery();
         status=rs.next();
         
        } catch(Exception e)
        {
            e.printStackTrace();            
        }
        return status;
            
    }
}