
package modelo;


public class prueba {
    
    public static void main(String[] arg){
        Conexion c = new Conexion();
        if(c.getConnection()!= null)
            System.out.println("conexion exitosa");
        
        else System.out.println("error de conexion");
    }
    
}
