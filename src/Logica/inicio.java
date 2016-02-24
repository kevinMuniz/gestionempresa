package Logica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class inicio {

    
    private  final String cadena = "jdbc:postgresql://localhost:5432/bdempresasmanta";
    private  final String usuario = "postgres";
    private  final String contrasenia = "1234";    
    private String mensaje;
    
    public String login(String name, String password)
    {
        try{
                Class.forName("org.postgresql.Driver");
                Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
                java.sql.Statement st = conex.createStatement();
                String sql = "select logins_verificacion ('"+name+"','"+password+"')";                
                ResultSet resultSet = st.executeQuery(sql);                
                if(resultSet.next())
                {   
                    if((resultSet.getString("logins_verificacion")).equals(name))
                    {                    
                       mensaje = "Correcto";
                    }
                }
                resultSet.close();
                st.close();
                conex.close();                
            }catch(Exception exc){                
            }
        return mensaje;            
    }                
    
}
