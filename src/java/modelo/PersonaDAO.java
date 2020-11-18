
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class PersonaDAO {
    
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    

   
    public Persona validar(String nom, String contraseña) {
        Persona per = new Persona();
        String sql= "select * from login where usuario=? and contra=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, nom);
            ps.setString(2, contraseña);
            rs=ps.executeQuery();
            while (rs.next()) {  
                per.setId(rs.getInt("id_login"));
                per.setNombre(rs.getString("usuario"));
                per.setContraseña(rs.getString("contra"));
               
            }
            
            
        } catch (Exception e) {
           
        }
         return per; 
          }

    
    
}
