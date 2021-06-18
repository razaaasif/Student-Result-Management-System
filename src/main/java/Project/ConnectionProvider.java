package Project;
import java.sql.*;

public class ConnectionProvider {
    public  static Connection getCon() throws ClassNotFoundException {
        try{
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/result","root","root");
             System.out.println("connection is succesfull");
             return con;
        }
        catch( SQLException e){
            System.out.println(e);
            return null;
        }
    }
}
