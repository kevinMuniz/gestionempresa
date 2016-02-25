package Logica;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;



public class ingreso_modificacion {

    private  final String cadena = "jdbc:postgresql://localhost:5432/bdempresasmanta";
    private  final String usuario = "postgres";
    private  final String contrasenia = "1234";
    private String modelo;
    
    public String Insertar_actualizar_empresa_identificacion(String rucx)
    {            
        modelo = "crear";
        try{                    
                Class.forName("org.postgresql.Driver");
                Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
                java.sql.Statement st = conex.createStatement();
                String sql = "select ruc from IdentificacionUbicacionActividad where ruc = '"+rucx+"'";
                ResultSet resultSet = st.executeQuery(sql);                                             
                if(resultSet.next())
                {   
                    if((resultSet.getString("ruc")).equals(rucx))
                    {                    
                       modelo = "Actualizar";
                    }
                }                
                resultSet.close();                
                st.close();
                conex.close();                
            }catch(Exception exc){                
            }            
        return modelo;
    }
    
    public void insertar_empresa(String rucx,String razonx,String sectorx,String provinciax,String ciudadx,String direccionx,String telefonox,String faxx,String emailx,String paginax,String sociosx,String actividadx,int iniciox,int establecimientosx,int ventamayorx, int ventamanorx)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarIdentificacionUbicacionActividad ('"+rucx+"','"+razonx+"','"+sectorx+"','"+provinciax+"','"+ciudadx+"','"+direccionx+"','"+telefonox+"','"+faxx+"','"+emailx+"','"+paginax+"','"+sociosx+"','"+actividadx+"',"+iniciox+","+establecimientosx+","+ventamayorx+","+ventamanorx+")";
            ResultSet resultSet = st.executeQuery(sql);                
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }            
    }
    
    public void actualizar_empresa(String rucx,String razonx,String sectorx,String provinciax,String ciudadx,String direccionx,String telefonox,String faxx,String emailx,String paginax,String sociosx,String actividadx,int iniciox,int establecimientosx,int ventamayorx, int  ventamanorx)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "update IdentificacionUbicacionActividad set RazonSocial = '"+razonx+"',Sector = '"+sectorx+"',Provincia = '"+provinciax+"',Ciudad = '"+ciudadx+"', Direccion = '"+direccionx+"',Telefono = '"+telefonox+"',fax = '"+faxx+"',email = '"+emailx+"',PaginaWeb = '"+paginax+"',NombreSocios = '"+sociosx+"', actividadPrincipal = '"+actividadx+"',anoIncioActividad = "+iniciox+",numeroEstablecimientos = "+establecimientosx+",volVentasMayor = "+ventamayorx+", volVentasMenor = "+ventamanorx+" where ruc = '"+rucx+"'";
            ResultSet resultSet = st.executeQuery(sql);       
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            } 
    }
    
    public void ingreso_personalSueldo( String rucx,int ano,int SocioMujer, int SueldoSocioMujer,int SocioHombre, int SueldoSocioHombre, int EjecutivoMujer, int SueldoEjecutivoMujer,int EjecutivoHombre, int SueldoEjecutivoHombre,   int ObreroMujer, int SueldoObreroMujer,int ObreroHombre, int SueldoObreroHombre, int EmpleadoMujer, int SueldoEmpleadoMujer,int EmpleadoHombre, int SueldoEmpleadoHombre)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarPersonalSueldos ('"+rucx+"',"+ano+","+SocioMujer+","+SueldoSocioMujer+","+SocioHombre+","+SueldoSocioHombre+","+EjecutivoMujer+","+SueldoEjecutivoMujer+","+EjecutivoHombre+","+SueldoEjecutivoHombre+","+ObreroMujer+","+SueldoObreroMujer+","+ObreroHombre+","+SueldoObreroHombre+","+EmpleadoMujer+","+SueldoEmpleadoMujer+","+EmpleadoHombre+","+SueldoEmpleadoHombre+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }            
    }
    
    public void ingreso_ventas(String rucx, int ano, int netasmercaderiaPaisx ,  int netasmercaderiaExteriorx ,    int articulosfabricadosPaisx ,  int articulosfabricadosExteriorx ,    int trasferenciaEstablecimientosPaisx ,  int trasferenciaEstablecimientosExteriorx ,    int desechosPaisx ,  int desechosExteriorx ,    int costoMercaderiaPaisx ,  int costoMercaderiaExteriorx ,    int inventarioinicialmercaderiapaisx ,  int inventarioinicialmercaderiaExteriorx ,    int comprasnetasMercaderiapaisx ,  int comprasnetasMercaderiaexteriorx ,    int iventariofinalmercaderiapaisx ,  int iventariofinalmercaderiaexteriorx ,    int manoobradirectapaisx ,  int manoobradirectaexterioitx ,    int sueldobasicopaisx ,  int sueldobasicoexteriorx ,    int otraremuneracionespaisx ,  int otraremuneracionesexteriorx ,    int sobresueldospaisx ,  int sobresueldosexteriorx ,    int jubilacionpatronalpaisx ,  int jubilacionpatronalexteriorx ,    int subsidiosfamiliarpaisx ,  int subsidiosfamiliarexteriorx ,    int aportepatronalpaisx ,  int aportepatronalexteriorx ,    int fondosreservapaisx ,  int fondosreservaexteriorx ,    int iecesecappaisx ,  int iecesecapexteriorx ,    int gastosfabricacionpaisx ,  int gastosfabricacionexteriorx ,      int depreciacionpaisx ,  int depreciacionexteriorx ,    int amortizacionpatentepaisx ,  int amortizacionpatenteexteriorx ,    int asistenciatecnicapaisx ,  int asistenciatecnicaexteriorx ,    int manoobraindirectapaisx ,  int manoobraindirectaexteriorx ,    int sueldosalario2paisx ,  int sueldosalario2exteriorx ,    int otrasremuneraciones2paisx ,  int otrasremuneraciones2exteriorx ,    int sobresueldos2paisx ,  int sobresueldos2exteriorx ,      int jubilacionpatronal2paisx ,  int jubilacionpatronal2exteriorx ,    int subsidiosfamiliar2paisx ,  int subsidiosfamiliar2exteriorx ,    int aporteIESSpaisx ,  int aporteIESSexteriorx ,    int fondosreserva2paisx ,  int fondosreserva2exteriorx ,    int iecesecap2paisx ,  int iecesecap2exteriorx ,    int materialesauxiliarespaisx ,  int materialesauxiliaresexteriorx ,    int segurosobreinventariospaisx ,  int segurosobreinventariosexteriorx ,    int mantenimientoreparacionpaisx ,  int mantenimientoreparacionexteriorx ,    int trabajosfabricacionpaisx ,  int trabajosfabricacionexteriorx ,    int impuestopredialpaisx ,  int impuestopredialexteriorx ,   int otrosimpuestospaisx , int otrosimpuestosexteriorx ,    int energiaelectricapaisx ,  int energiaelectricaexteriorx ,    int combustibleslubricantespaisx ,  int combustibleslubricantesexteriorx ,    int aguapaisx ,  int aguaexteriorx ,    int telefonopaisx ,  int telefonoexteriorx ,    int otrosgastosfabricacionpaisx ,  int otrosgastosfabricacionexteriorx ,    int inventarioinicialproductosprocesopaisx ,  int inventarioinicialproductosprocesoexteriorx ,    int inventariofinalproductosprocesopaisx ,  int inventariofinalproductosprocesoexteriorx ,    int utilidadbrutapaisx , int utilidadbrutaexteriorx  )
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarventasCosto_Ventas ('"+rucx+"',"+ano+","+netasmercaderiaPaisx+","+netasmercaderiaExteriorx+","+articulosfabricadosPaisx+" ,"+articulosfabricadosExteriorx+","+trasferenciaEstablecimientosPaisx+","+trasferenciaEstablecimientosExteriorx+","+desechosPaisx+","+desechosExteriorx+" ,"+costoMercaderiaPaisx+","+costoMercaderiaExteriorx+","+inventarioinicialmercaderiapaisx+","+inventarioinicialmercaderiaExteriorx+","+comprasnetasMercaderiapaisx+","+comprasnetasMercaderiaexteriorx+","+iventariofinalmercaderiapaisx+","+iventariofinalmercaderiaexteriorx+","+manoobradirectapaisx+","+manoobradirectaexterioitx+","+sueldobasicopaisx+","+sueldobasicoexteriorx+","+otraremuneracionespaisx+","+otraremuneracionesexteriorx+","+sobresueldospaisx+","+sobresueldosexteriorx+","+jubilacionpatronalpaisx+","+jubilacionpatronalexteriorx+","+subsidiosfamiliarpaisx+","+subsidiosfamiliarexteriorx+","+aportepatronalpaisx+","+aportepatronalexteriorx+","+fondosreservapaisx+","+fondosreservaexteriorx+","+iecesecappaisx+", "+iecesecapexteriorx+","+gastosfabricacionpaisx+","+gastosfabricacionexteriorx+","+depreciacionpaisx+","+depreciacionexteriorx+","+amortizacionpatentepaisx+","+amortizacionpatenteexteriorx+","+asistenciatecnicapaisx+","+asistenciatecnicaexteriorx+","+manoobraindirectapaisx+","+manoobraindirectaexteriorx+","+sueldosalario2paisx+","+sueldosalario2exteriorx+","+otrasremuneraciones2paisx+","+otrasremuneraciones2exteriorx+","+sobresueldos2paisx+","+sobresueldos2exteriorx+","+jubilacionpatronal2paisx+","+jubilacionpatronal2exteriorx+","+subsidiosfamiliar2paisx+","+subsidiosfamiliar2exteriorx+","+aporteIESSpaisx+","+aporteIESSexteriorx+","+fondosreserva2paisx+","+fondosreserva2exteriorx+","+iecesecap2paisx+","+iecesecap2exteriorx+","+materialesauxiliarespaisx+","+materialesauxiliaresexteriorx+","+segurosobreinventariospaisx+","+segurosobreinventariosexteriorx+","+mantenimientoreparacionpaisx+","+mantenimientoreparacionexteriorx+","+trabajosfabricacionpaisx+","+trabajosfabricacionexteriorx+","+impuestopredialpaisx+","+impuestopredialexteriorx+","+otrosimpuestospaisx+","+otrosimpuestosexteriorx+","+energiaelectricapaisx+","+energiaelectricaexteriorx+","+combustibleslubricantespaisx+","+combustibleslubricantesexteriorx+","+aguapaisx+","+aguaexteriorx+","+telefonopaisx+","+telefonoexteriorx+","+otrosgastosfabricacionpaisx+","+otrosgastosfabricacionexteriorx+","+inventarioinicialproductosprocesopaisx+","+inventarioinicialproductosprocesoexteriorx+","+inventariofinalproductosprocesopaisx+","+inventariofinalproductosprocesoexteriorx+","+utilidadbrutapaisx+","+utilidadbrutaexteriorx+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_gastosOperacionales(String rucx, int ano ,int gastosoperacionalespais,int gastosoperacionalesexterior,int sueldosalariopais,int sueldosalarioexterior,int otrasremuneracionespais,int otrasremuneracionesexterior,int sobresueldospais,int sobresueldosexterior,int jubilacionpatronalpais,int jubilacionpatronalexterior,int subsidiofamiliarpais,int subsidiofamiliarexterior,int aporteIESSpais,int aporteIESSexterior,int fondosreservapais,int fondosreservaexterior,int iecesecappais,int iecesecapexterior,int comisionespagadaspais,int comisionespagadasexterior,int asistenciatecnicapais,int asistenciatecnicaexterior,int serviciobancariopais,int serviciobancarioexterior,int otrosgastosfinancierospais,int otrosgastosfinancierosexterior,int impuestopredialpais,int impuestopredialexterior,int otrosimpuestospais,int otrosimpuestosexterior,int presentacionpais,int presentacionexterior,int honorariospais,int honorariosexterior,int viaticospais,int viaticosexterior,int reparacionmantenimientopais,int reparacionmantenimientoexterior,int repuestosaccesoriospais,int repuestosaccesoriosexterior,int envasesembalajespais,int envasesembalajesexterior,int fletestransportepais,int fletestransporteexterior,int energiaelectricapais,int energiaelectricaexterior,int combustibleslubricantespais,int combustibleslubricantesexterior,int alquilerespais,int alquileresexterior,  int arrendamientomercantilpais,int arrendamientomercantilexterior,int publicidadpais,int publicidadexterior,int primasseguropais,int primasseguroexterior,int pagosregaliaspais,int pagosregaliasexterior,int vigilanciaseguridadpais,int vigilanciaseguridadexterior,int limpiezapais,int limpiezaexterior,int almacenamientopais,int almacenamientoexterior,int comunicacionespais,int comunicacionesexterior,int internetpais,int internetexterior,int aguapais,int aguaexterior,int interesespais,int interesesexterior,int materialesoficinapais,int materialesoficinaexterior,int depreciacionbienespais,int depreciacionbienesexterior,int bajainventariospais,int bajainventariosexterior,int perdidacambiopais,int perdidacambioexterior)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select Insertargastosoperacionalesotrosingresos ('"+rucx+"',"+ano+","+gastosoperacionalespais+","+gastosoperacionalesexterior+","+sueldosalariopais+","+sueldosalarioexterior+","+otrasremuneracionespais+","+otrasremuneracionesexterior+","+sobresueldospais+","+sobresueldosexterior+","+jubilacionpatronalpais+","+jubilacionpatronalexterior+","+subsidiofamiliarpais+","+subsidiofamiliarexterior+","+aporteIESSpais+","+aporteIESSexterior+","+fondosreservapais+","+fondosreservaexterior+","+iecesecappais+","+iecesecapexterior+","+comisionespagadaspais+","+comisionespagadasexterior+","+asistenciatecnicapais+","+asistenciatecnicaexterior+","+serviciobancariopais+","+serviciobancarioexterior+","+otrosgastosfinancierospais+","+otrosgastosfinancierosexterior+","+impuestopredialpais+","+impuestopredialexterior+","+otrosimpuestospais+","+otrosimpuestosexterior+","+presentacionpais+","+presentacionexterior+","+honorariospais+","+honorariosexterior+","+viaticospais+","+viaticosexterior+","+reparacionmantenimientopais+","+reparacionmantenimientoexterior+","+repuestosaccesoriospais+","+repuestosaccesoriosexterior+","+envasesembalajespais+","+envasesembalajesexterior+","+fletestransportepais+","+fletestransporteexterior+","+energiaelectricapais+","+energiaelectricaexterior+","+combustibleslubricantespais+","+combustibleslubricantesexterior+","+alquilerespais+","+alquileresexterior+",  "+arrendamientomercantilpais+","+arrendamientomercantilexterior+","+publicidadpais+","+publicidadexterior+","+primasseguropais+","+primasseguroexterior+","+pagosregaliaspais+","+pagosregaliasexterior+","+vigilanciaseguridadpais+","+vigilanciaseguridadexterior+","+limpiezapais+","+limpiezaexterior+","+almacenamientopais+","+almacenamientoexterior+","+comunicacionespais+","+comunicacionesexterior+","+internetpais+","+internetexterior+","+aguapais+","+aguaexterior+","+interesespais+","+interesesexterior+","+materialesoficinapais+","+materialesoficinaexterior+","+depreciacionbienespais+","+depreciacionbienesexterior+","+bajainventariospais+","+bajainventariosexterior+","+perdidacambiopais+","+perdidacambioexterior+")";                        
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_gastosOperacionales2(String rucx, int ano,int OTROSGATOSOPERACIONALESPAIS,int OTROSGATOSOPERACIONALESEXTERIOR,int OTROSINGRESOSPAIS,int OTROSINGRESOSEXTERIOR,int TRABAJOSFABRICACIONPAIS,int TRABAJOSFABRICACIONEXTERIOR,int REPARACIONPAIS,int REPARACIONXTERIOR,int ASESORIAPAIS,int ASESORIAEXTEROR,int TRANSPORTEPAIS,int TRANSPORTEEXTERIOR,int BIENESMUEBLESPAIS,int BIENESMUEBLESEXTERIOR,int BIENESINMUEBLESPAIS,int BIENESINMUEBLESEXTERIOR,int COMISIONPAIS,int COMISIONEXTERIOR,int VENTAENERGIAPAIS,int VENTAENERGIAEXTERIOR,int UTILIDADFIJOSPAIS,int UTILIDADFIJOSEXTERIOR,int SUBSIDIOSPAIS,int SUBSIDIOSEXTERIOR,int INTERESRECIBIDOPAIS,int INTERESRECIBIDOEXTERIOR,int DIVIDENDOSPROPIEDADPAIS,int DIVIDENDOSPROPIEDADEXTERIOR,int UTILIDADPERDIDAPAIS,int UTILIDADPERDIDAEXTERIOR,int TRABAJADORES15PAIS,int TRABAJADORES15EXTERIOR,int DIVIDENDOSPAGADOSPAIS,int DIVIDENDOSPAGADOSEXTERIOR )
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarGASTOSOPERACIONALES2 ('"+rucx+"',"+ano+", "+OTROSGATOSOPERACIONALESPAIS+","+OTROSGATOSOPERACIONALESEXTERIOR+","+OTROSINGRESOSPAIS+", "+OTROSINGRESOSEXTERIOR+","+TRABAJOSFABRICACIONPAIS+","+TRABAJOSFABRICACIONEXTERIOR+","+REPARACIONPAIS+","+REPARACIONXTERIOR+","+ASESORIAPAIS+","+ASESORIAEXTEROR+","+TRANSPORTEPAIS+","+TRANSPORTEEXTERIOR+","+BIENESMUEBLESPAIS+","+BIENESMUEBLESEXTERIOR+","+BIENESINMUEBLESPAIS+","+BIENESINMUEBLESEXTERIOR+","+COMISIONPAIS+","+COMISIONEXTERIOR+","+VENTAENERGIAPAIS+","+VENTAENERGIAEXTERIOR+","+UTILIDADFIJOSPAIS+","+UTILIDADFIJOSEXTERIOR+","+SUBSIDIOSPAIS+","+SUBSIDIOSEXTERIOR+","+INTERESRECIBIDOPAIS+","+INTERESRECIBIDOEXTERIOR+","+DIVIDENDOSPROPIEDADPAIS+","+DIVIDENDOSPROPIEDADEXTERIOR+","+UTILIDADPERDIDAPAIS+","+UTILIDADPERDIDAEXTERIOR+","+TRABAJADORES15PAIS+","+TRABAJADORES15EXTERIOR+","+ DIVIDENDOSPAGADOSPAIS+","+ DIVIDENDOSPAGADOSEXTERIOR+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_cONBUSTIBLES(String rucx, int ano ,String GASOLINAMEDIDA,int GASOLINACANTIDAD,int GASOLINAVALOR,String DIESELMEDIDA,int DIESELCANTIDAD,int DIESELVALOR,String RESIDUOMEDIDA,int RESIDUOCANTIDAD,int RESIDUOVALOR,String GASMEDIDA,int GASCANTIDAD,int GASVALOR,String ACEITEMEDIDA,int ACEITECANTIDAD,int ACEITEVALOR,String GRASASMEDIDA,int GRASASCANTIDAD,int GRASASVALOR,String OTROSMEDIDA,int OTROSCANTIDAD,int OTROSVALOR)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select insertarCOMBUSTIBLES ('"+rucx+"',"+ano+", '"+GASOLINAMEDIDA+"' , "+GASOLINACANTIDAD+" , "+GASOLINAVALOR+" , '"+DIESELMEDIDA+"' , "+DIESELCANTIDAD+" , "+DIESELVALOR+" , '"+RESIDUOMEDIDA+"' , "+RESIDUOCANTIDAD+" , "+RESIDUOVALOR+" , '"+GASMEDIDA+"' , "+GASCANTIDAD+" , "+GASVALOR+" , '"+ACEITEMEDIDA+"' , "+ACEITECANTIDAD+" , "+ACEITEVALOR+" , '"+GRASASMEDIDA+"' , "+GRASASCANTIDAD+" , "+GRASASVALOR+" , '"+OTROSMEDIDA+"' , "+OTROSCANTIDAD+" , "+OTROSVALOR+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_Impuestos(String rucx, int ano, int IVACOBRADOvalor,int IVAPAGADOvalor,int ICEvalor,int IMPUESTOPREDIALvalor,int OTROSIMPUETOSvalor,int IMPUESTOSNETOSvalor )
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarImpuestos ('"+rucx+"',"+ano+", "+IVACOBRADOvalor+" , "+IVAPAGADOvalor+" , "+ICEvalor+" , "+IMPUESTOPREDIALvalor+" , "+OTROSIMPUETOSvalor+" , "+IMPUESTOSNETOSvalor+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_Inventario(String rucx, int ano,int MATERIAenero,int MATERIAdiciembre,int COMBUSTIBLESenero,int COMBUSTIBLESdiciembre,int TERMINADOSenero,int TERMINADOSdiciembre,int PROCESOenero,int PROCESOdiciembre,int MERCADERIAenero,int MERCADERIAdiciembre,int OTROSenero,int OTROSdiciembre)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarInventario ('"+rucx+"',"+ano+" ,"+MATERIAenero+" , "+MATERIAdiciembre+" , "+COMBUSTIBLESenero+" , "+COMBUSTIBLESdiciembre+" , "+TERMINADOSenero+" , "+TERMINADOSdiciembre+" , "+PROCESOenero+" , "+PROCESOdiciembre+" , "+MERCADERIAenero+" , "+MERCADERIAdiciembre+" , "+OTROSenero+" , "+OTROSdiciembre+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_Electricidad(String rucx, int ano,String ELECTRICIDADunidadMedida,int ELECTRICIDADcantidad,int ELECTRICIDADvalor,String ELECTRICIDADCOMPRADAunidadMedida,int ELECTRICIDADCOMPRADAcantidad,int ELECTRICIDADCOMPRADAvalor,String AGUAunidadMedida,int AGUAcantidad,int AGUAvalor,String AGUANATURALunidadMedida,int AGUANATURALcantidad,int AGUANATURALvalor)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarElec_Agua ('"+rucx+"',"+ano+" ,'"+ELECTRICIDADunidadMedida+"' , "+ELECTRICIDADcantidad+" , "+ELECTRICIDADvalor+" , '"+ELECTRICIDADCOMPRADAunidadMedida+"' , "+ELECTRICIDADCOMPRADAcantidad+" , "+ELECTRICIDADCOMPRADAvalor+" , '"+AGUAunidadMedida+"' , "+AGUAcantidad+" , "+AGUAvalor+" , '"+AGUANATURALunidadMedida+"' , "+AGUANATURALcantidad+" , "+AGUANATURALvalor+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
   
     public void ingreso_pagosPorServicio(String rucx, int ano,int juridicovalor,int contabilidadvalor,int informaticosvalor,int comisionesvalor,int asistenciavalor,int otrosvalor)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarPagosPorServicio ('"+rucx+"',"+ano+", "+juridicovalor+" , "+contabilidadvalor+" , "+informaticosvalor+" , "+comisionesvalor+" , "+asistenciavalor+" , "+otrosvalor+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_PagosPorServiciosAlquiler(String rucx, int ano,int LOCALESTIEMPO,int LOCALESVALOR,int MUEBLESTIEMPO,int MUEBLESVALOR,int MAQUINARIATIEMPO,int MAQUINARIAVALOR,int COMPUTOTIEMPO,int COMPUTOVALOR,int ELECTRONICOSTIEMPO,int ELECTRONICOSVALOR,int VEHICULOTIEMPO,int VEHICULOVALOR,int OTROSTIEMPO,int OTROSVALOR)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarPagosPorServiciosAlquiler('"+rucx+"',"+ano+", "+LOCALESTIEMPO+","+LOCALESVALOR+","+MUEBLESTIEMPO+","+MUEBLESVALOR+","+MAQUINARIATIEMPO+","+MAQUINARIAVALOR+","+COMPUTOTIEMPO+","+COMPUTOVALOR+","+ELECTRONICOSTIEMPO+","+ELECTRONICOSVALOR+","+VEHICULOTIEMPO+","+VEHICULOVALOR+","+OTROSTIEMPO+","+OTROSVALOR+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
     
    public void ingreso_ActivosIntangibles(String rucx, int ano,String descripcion,int anioCompra, int compra, int duracionEnAnios)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarActivosIntangibles('"+rucx+"',"+ano+",'"+ descripcion+"',"+anioCompra+", "+compra+", "+duracionEnAnios+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_nombreMateriasPrimasAuxiliares(String rucx, int ano,String descripcion,int anioCompra, int compra, int duracionEnAnios)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarMateriasPrimasAuxiliares('"+rucx+"',"+ano+",'"+ descripcion+"',"+anioCompra+", "+compra+", "+duracionEnAnios+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
    
    public void ingreso_activosfijos(String rucx, int ano,String descripcion,int d1, int d2, int d3,int d4, int d5, int d6,int d7, int d8, int d9,int d10, int d11, int d12)
    {
        try{                    
            Class.forName("org.postgresql.Driver");
            Connection conex = DriverManager.getConnection(cadena,usuario,contrasenia);
            java.sql.Statement st = conex.createStatement();
            String sql = "select InsertarActivosFijos('"+rucx+"',"+ano+",'"+descripcion+"',"+d1+","+d2+","+d3+","+d4+","+d5+","+d6+","+d7+","+d8+","+d9+","+d10+","+d11+","+d12+")";
            ResultSet resultSet = st.executeQuery(sql);                        
            resultSet.close();                
            st.close();
            conex.close();                
            }catch(Exception exc){                
            }
    }
      
}

//String[] descripcion ,ND0 int[],unidadMedida varchar[],cantidad_ND1 int[],valor_ND1 int[],cantidad_ND2 int[],valor_ND2 int[],cantidad_ND3 int[],valor_ND3 int[],ND4 int[]