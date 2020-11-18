
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    private static String bd="aventos";
    private static String user="root";
    private static String pass="";
    private static String url="jdbc:mysql://localhost/"+ bd;
    
     public Connection getConnection(){
   
     Connection cn = null;
      
     try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(url, user, pass);          

            
        } catch (Exception e) {
            System.out.println("error de conexion " + e.getMessage());
        }
        
     return cn;
}
}
    
    
//    Connection con;
//
//
//    
//    
//    public Connection getConnection(){
//        try {
//            Class.forName("con.mysql.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aventos","root","");
//            
//
//            
//        } catch (Exception e) {
//        }
//        return con;
//        
//    }
//}


