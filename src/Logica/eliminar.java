package Logica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class eliminar {

    private  final String cadena = "jdbc:postgresql://localhost:5432/bdempresasmanta";
    private  final String usuario = "postgres";
    private  final String contrasenia = "1234";
    
    public void eliminar_empresa(String ruc)
    {
        try{                    
                Class.forName("org.postgresql.Driver");
                Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
                java.sql.Statement st = conex.createStatement();
                String sql = "delete from identificacionubicacionactividad where Ruc = '"+ruc+"';";   
                sql += "delete from personalSUeldos where Ruc_empresa = '"+ruc+"';";
                sql += "delete from ventasCosto_Ventas where Ruc_empresa = '"+ruc+"';";
                sql += "delete from gastosoperacionalesotrosingresos where Ruc_empresa = '"+ruc+"';";
                sql += "delete from GASTOSOPERACIONALES2 where Ruc = '"+ruc+"';";
                sql += "delete from COMBUSTIBLES where ruc = '"+ruc+"';";
                sql += "delete from impuestos where ruc = '"+ruc+"';";
                sql += "delete from inventario where ruc = '"+ruc+"';";
                sql += "delete from electricidad_agua where ruc = '"+ruc+"';";
                sql += "delete from pagosPorServicio where ruc = '"+ruc+"';";
                sql += "delete from pagosPorServiciosAlquiler where ruc = '"+ruc+"';";
                sql += "delete from activosIntangibles where ruc = '"+ruc+"';";
                sql += "delete from nombreMateriasPrimasAuxiliares where ruc = '"+ruc+"';";
                sql += "delete from produccionVentas where ruc = '"+ruc+"';";
                sql += "delete from costoVentasMercaderia where ruc = '"+ruc+"';";                
                ResultSet resultSet = st.executeQuery(sql);     
            }catch(Exception exc){                
            }  
    }
    
}
