package Logica;

public class conexion {
    
    private  final String cadena = "jdbc:postgresql://localhost:5432/bdempresasmanta";
    private  final String usuario = "postgres";
    private  final String contrasenia = "1234"; //maquina Ing Mariana  "123456"        

    public conexion() {
    }

    /**
     * @return the cadena
     */
    public String getCadena() {
        return cadena;
    }

    /**
     * @return the usuario
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * @return the contrasenia
     */
    public String getContrasenia() {
        return contrasenia;
    }
        
}
