package Logica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import Logica.conexion;
import javax.swing.table.DefaultTableModel;

public class consulta {

    private  final String cadena = "jdbc:postgresql://localhost:5432/bdempresasmanta";
    private  final String usuario = "postgres";
    private  final String contrasenia = "1234";
    
    public DefaultTableModel buscar_mostrarTabla()
    {        
        DefaultTableModel modelo = new DefaultTableModel();                        
        try{                    
                Class.forName("org.postgresql.Driver");
                Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
                java.sql.Statement st = conex.createStatement();
                String sql = "select i.ruc, i.razonsocial,max(p.anoContable)as anioultimoregistro, i.sector, i.ciudad, i.direccion,i.telefono,i.email,i.paginaweb,i.nombresocios,i.actividadprincipal,i.numeroEstablecimientos from IdentificacionUbicacionActividad i inner join  personalSueldos p on i.ruc = p.ruc_empresa group by i.ruc, p.ruc_empresa order by i.razonsocial";
                ResultSet resultSet = st.executeQuery(sql);                                     
                ResultSetMetaData rsmd = resultSet.getMetaData();
                int cantidadColumnas = rsmd.getColumnCount();
                for(int i = 1; i <= cantidadColumnas; i++)
                {
                    modelo.addColumn(rsmd.getColumnLabel(i));
                }
                while (resultSet.next())
                {
                    Object[] fila = new Object[cantidadColumnas];
                    for (int j=0; j < cantidadColumnas; j++)
                    {
                        fila[j]= resultSet.getObject(j+1);
                    }
                    modelo.addRow(fila);
                }
                resultSet.close();                
                st.close();
                conex.close();                
            }catch(Exception exc){                
            }            
        return modelo;
    }
    
    public Object[] buscar_mostrarTablaEmpresa(String rucx )
    {        
        Object[] fila = new Object[120];        
        try{
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);                        
            java.sql.Statement st2 = conex.createStatement();                        
            String sql2 = "select * from IdentificacionUbicacionActividad where ruc = '"+rucx+"'";
            ResultSet resultSet2 = st2.executeQuery(sql2);             
            ResultSetMetaData rsmd = resultSet2.getMetaData();
            int cantidadColumnas = rsmd.getColumnCount();
            while (resultSet2.next())
            {
                
                for (int j=0; j < cantidadColumnas; j++)
                {
                    fila[j]= resultSet2.getObject(j+1);
                }                
            }
            resultSet2.close();                                            
            st2.close();                                
            conex.close();                
        }catch(Exception exc){                
        }
        return fila;
    }
    
}
