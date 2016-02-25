		--- bdempresasmanta
create database bdempresasmanta;


			--- USUARIOS ---

create table usuarios
(
id serial primary key,
nombre varchar,
contrasena varchar
);

insert into usuarios (nombre, contrasena)values ('Mariana Zambrano','mariana1234');
insert into usuarios (nombre, contrasena)values ('Auxiliar','auxiliar1234');
insert into usuarios (nombre, contrasena)values ('1','1');

--select * from usuarios;


			--- PROVINCIA ---
create table provincia
(
 id serial primary key,
 nombre varchar
);

insert into provincia(nombre) values ('Manabi'),('Azuay'),('Bolívar'),('Cañar'),('Carchi'),('Chimborazo'),('Cotopaxi'),('Imbabura'),('Loja'),('Pichincha'),('Tunguragua'),('Santo Domingo de los Tsachilas'),('Esmeraldas'),('Guayas'),('El Oro'),('Los Rios'),('Santa Elena'),('Morono Santiago'),('Napo'),('Orellana'),('Pastaza'),('Sucumbios'),('Zamora Chinchipe'),('Galápagos');

--select * from provincia
			--- CANTON ---
create table canton
(
 id_provincia integer,
 nombre varchar, 
 constraint fk_ciudad_provincia foreign key (id_provincia)
 references provincia(id)
);

insert into canton values (1,'Manta'),(1,'Montecristi'),(1,'Portoviejo'),(1,'Bolivar'),(1,'Chone'),(1,'El Carmen'),(1,'Flavio Alfaro'), (1,'Jipijapa'),(1,'Puerto López'),(1,'Junín'),(1,'Paján'),(1,'Pichincha'),(1,'Roca Fuerte'),(1,'Santa Ana'),(1,'Olmedo'),(1,'Sucre'),(1,'Tosagua'),(1,'24 de Mayo'),(1,'Pedernales'),(1,'Jama'),(1,'Jaramijó'),(1,'San vicente'),(2,'Camilo Ponce Enríquez'),(2,'Cuenca'),(2,'Chordeleg'),(2,'El pan'),(2,'Girón'),(2,'Gualaceo'),(2,'Guachapala'),(2,'Nabón'),(2,'Pucará'),(2,'Paute'),(2,'San Felipe de Oña'),(2,'San Fernando'),(2,'Santa Isabel'),(2,'Sevilla de Oro'),(2,'Sigsig'),(3,'Guaranda'),(3,'San José de Chimbo'),(3,'Chillanes'),(3,'San Miguel'),(3,'Echeandia'),(3,'Caluma'),(3,'Naves'),(4,'Azogues'),(4,'Biblián'),(4,'Cañar'),(4,'Suscal'),(4,'La Troncal'),(4,'El Tambo'),(4,'Deleg'),(5,'Tulcán'),(5,'San Pedro de Huaca'),(5,'Montúfar'),(5,'Bolívar'),(5,'Espejo'),(5,'Mira'),(7,'Latacunga'),(7,'La Maná'),(7,'Pangua'),(7,'Pujilí'),(7,'Salcedo'),(7,'Saquisilí'),(8,'Ibarra'),(8,'Otavalo'),(8,'Cotacachi'),(8,'Antonio Ante'),(8,'Pimampiro'),(8,'Urcuqui'),(9,'Alamor'),(9,'Catamayo'),(9,'Celica'),(9,'Chaguarpamba'),(9,'Espíndola'),(9,'Gonzanamá'),(9,'Loja'),(9,'Macará'),(9,'Olmedo'),(9,'Paltas'),(9,'Pindal'),(9,'Puyango'),(9,'Quilanga'),(9,'Saraguro'),(9,'Sozoranga'),(9,'Zapotillo'),(10,'Quito'),(10,'Cayambe'),(10,'Mejía'),(10,'Pedro Moncayo'),(10,'Rumiñahui'),(10,'Santo Domingo de los Colorados'),(10,'San Miguel de los Bancos'),(10,'Pedro Vicente Maldonado'),(10,'Puerto Quito'),(11,'Ambato'),(11,'Baños de Agua Santa'),(11,'Cevallos'),(11,'Mocha'),(11,'Patate'),(11,'Quero'),(11,'Pelileo'),(11,'Píllaro'),(11,'Tisaleo'),(12,'Santo Domingo'),(13,'Esmeraldas'),(13,'Eloy Alfaro'),(13,'Muisne'),(13,'Quininde'),(13,'San Lorenzo'),(13,'Atacames'),(14,'Balao'),(14,'Balzar'),(14,'Colimes'),(14,'Daule'),(14,'Duran'),(14,'El Empalme'),(14,'El Triunfo'),(14,'Guayaquil'),(14,'Isidro Ayora'),(14,'Jujan'),(14,'La Libertad'),(14,'Lomas de Sargentillo'),(14,'Marcelino Marideuña'),(14,'Milagro'),(14,'Naranjal'),(14,'Naranjito'),(14,'Nobol'),(14,'Palestina'),(14,'Pedro Carbo'),(14,'Playas'),(14,'Salinas'),(14,'San Borondo'),(14,'Santa Elena'),(14,'Santa Lucia'),(14,'Simón Bolívar'),(14,'Salitre'),(14,'Yaguachi'),(15,'Arenillas'),(15,'Atahualpa'),(15,'Balsas'),(15,'Chilla'),(15,'El Guabo'),(15,'Huaquillas'),(15,'Las Lajas'),(15,'Machala'),(15,'Marcabelí'),(15,'Pasaje'),(15,'Piñas'),(15,'Portovelo'),(15,'Santa Rosa'),(15,'Zaruma'),(16,'Babahoyo'),(16,'Baba'),(16,'Montalvo'),(16,'San Francisco de Puebloviejo'),(16,'Quevedo'),(16,'Urdaneta'),(16,'Ventanas'),(16,'Vinces'),(16,'Palenque'),(16,'Buena Fé'),(16,'Valencia'),(16,'Moncache'),(16,'Quinsaloma'),(17,'Salinas'),(17,'Santa Elena'),(17,'La Libertad'),(18,'Gualaquiza'),(18,'Huamboya'),(18,'Limón Indanza'),(18,'Logroño'),(18,'Morona'),(18,'Pablo Sexto'),(18,'Palora'),(18,'San Juan Bosco'),(18,'Santiago'),(18,'Sucúa'),(18,'Taisha'),(18,'Tiwintza'),(19,'Tena'),(19,'Archidona'),(19,'El Chaco'),(19,'Quijos'),(19,'Carlos Julio Arosemena Tola'),(20,'Francisco de Orellana'),(20,'Aguarico'),(20,'La Joya de los Sachas'),(20,'Loreto'),(21,'Pastaza'),(21,'Puyo'),(21,'Mera'),(21,'Santa Clara'),(21,'Arajuno'),(22,'Cascales'),(22,'Cuyabeno'),(22,'Gonzalo Pizarro'),(22,'Lago Agrio'),(22,'Nueva Loja'),(22,'Putumayo'),(22,'Shushufindi'),(22,'Sucumbíos'),(23,'Centinela del Cóndor'),(23,'Chinchipe'),(23,'El Pangui'),(23,'Nangaritza'),(23,'Palanda'),(23,'Paquisha'),(23,'Yacuambi'),(23,'Yantzaza'),(23,'Zamora'),(24,'San Cristóbal'),(24,'Isabela'),(24,'Santa Cruz'),(24,'Puerto Baquerizo Moreno');



--select * from canton

-------------------------------------------- Reestructura

CREATE TABLE IdentificacionUbicacionActividad
(  
  Ruc varchar primary key not null,
  RazonSocial varchar not null,
  Sector varchar(7) not null,
  Provincia varchar(35) not null,
  Ciudad varchar not null,
  Direccion varchar,
  Telefono varchar(10) not null,
  Fax varchar not null,
  Email varchar not null,
  PaginaWeb varchar not null,
  NombreSocios varchar not null,
  actividadPrincipal varchar not null,
  anoIncioActividad int not null,
  numeroEstablecimientos  int not null,
  volVentasMayor int not null,
  volVentasMenor int not null
);


--select i.ruc, i.empresa, i.razonsocial, i.sector, i.ciudad, i.direccion,i.telefono,i.email,i.paginaweb,i.nombresocios,i.actividadprincipal,i.numeroEstablecimientos, max(p.anoContable)as anioultimoregistro from IdentificacionUbicacionActividad i, personalSueldos p group by i.ruc;
--select InsertarIdentificacionUbicacionActividad ('1314853209001', 'mobile monkeys SA','Publico','Manabí','Manta','Mar bella','0997600712','ND','mobilemonkeys@hotmail.com','www.mobilemonkeys.com','Edgardo Panchana, Kevin Muñiz','Desarrollo de sistemas',2015,1,123,97612);
--select * from IdentificacionUbicacionActividad


CREATE TABLE personalSueldos(
  Ruc_empresa varchar primary key not null,
  anoContable int not null, 
  ----
  totalSociosNoRemunerados int not null,
  SueldoTotalSociosNoRemunerados int not null,
  SociosNoRemuneradosMujer int not null,
  SueldoSociosNoRemuneradosMujer int not null,
  SociosNoRemuneradosHombre int not null,  
  SueldoSociosNoRemuneradosHombre int not null,  

  totalEjecutivosGerenciales int not null,
  SueldoTotalEjecutivosGerenciales int not null,
  ejecutivosGerencialesMujer int not null,
  SueldoejecutivosGerencialesMujer int not null,
  ejecutivosGerencialesHombre int not null,
  SueldoEjecutivosGerencialesHombre int not null,

  totalObreros int not null,
  SueldototalObreros int not null,
  obrerosMujer int not null,
  SueldoobrerosMujer int not null,
  obrerosHombre int not null,
  SueldoobrerosHombre int not null,	

  totalEmpleados int not null,
  SueldototalEmpleados int not null,
  empleadosmujer int not null,
  Sueldoempleadosmujer int not null,
  empleadoshombre int not null,    
  SUeldoempleadoshombre int not null,    	

  totalTrabajadores int not null,
  totalsueldos int not null,
  totalMujeres int not null,
  totalhombres int not null,
  totalSUeldoMujeres int not null,
  totalSUeldohombres int not null,  
  constraint fk_detalle_Empresa foreign key (Ruc_empresa)
  references IdentificacionUbicacionActividad(ruc)
);
--select InsertarPersonalSueldos('1314853209001',2015,2,0,3,0,2,890,4,920,3,450,6,450,2,320,6,360);
--select * from personalSUeldos
--select ruc from IdentificacionUbicacionActividad

--select i.ruc, i.razonsocial,max(p.anoContable)as anioultimoregistro, i.sector, i.ciudad, i.direccion,i.telefono,i.email,i.paginaweb,i.nombresocios,i.actividadprincipal,i.numeroEstablecimientos from IdentificacionUbicacionActividad i inner join  personalSueldos p on i.ruc = p.ruc_empresa group by i.ruc, p.ruc_empresa

--select * from ventasCosto_Ventas

CREATE TABLE ventasCosto_Ventas(
  Ruc_empresa varchar primary key not null,
  anoContable int not null, 
  --- 
  Netasmercaderiatotal int not null,
  netasmercaderiaPais int not null,
  netasmercaderiaExterior int not null,
  
  articulosfabricadostotal int not null,
  articulosfabricadosPais int not null,
  articulosfabricadosExterior int not null,
  
  trasferenciaEstablecimientostotal int not null,
  trasferenciaEstablecimientosPais int not null,
  trasferenciaEstablecimientosExterior int not null,
  
  desechostotal int not null,
  desechosPais int not null,
  desechosExterior int not null,
  
  costoMercaderiatotal int not null,
  costoMercaderiaPais int not null,
  costoMercaderiaExterior int not null,

  inventarioinicialmercaderiatOtal int not null,
  inventarioinicialmercaderiapais int not null,
  inventarioinicialmercaderiaExterior int not null,

  comprasnetasMercaderiaTotal int not null,
  comprasnetasMercaderiapais int not null,
  comprasnetasMercaderiaexterior int not null,

  iventariofinalmercaderiatotal int not null,
  iventariofinalmercaderiapais int not null,
  iventariofinalmercaderiaexterior int not null,

  manoobradirectatotal int not null,
  manoobradirectapais int not null,
  manoobradirectaexterioit int not null,

  sueldobasicototal int not null,
  sueldobasicopais int not null,
  sueldobasicoexterior int not null,

  otraremuneracionestotal int not null,
  otraremuneracionespais int not null,
  otraremuneracionesexterior int not null,

  sobresueldostotal int not null,
  sobresueldospais int not null,
  sobresueldosexterior int not null,

  jubilacionpatronaltotal int not null,
  jubilacionpatronalpais int not null,
  jubilacionpatronalexterior int not null,

  subsidiosfamiliartotal int not null,
  subsidiosfamiliarpais int not null,
  subsidiosfamiliarexterior int not null,

  aportepatronaltotal int not null,
  aportepatronalpais int not null,
  aportepatronalexterior int not null,

  fondosreservatotal int not null,
  fondosreservapais int not null,
  fondosreservaexterior int not null,

  iecesecaptotal int not null,
  iecesecappais int not null,
  iecesecapexterior int not null,

  gastosfabricaciontotal int not null,
  gastosfabricacionpais int not null,
  gastosfabricacionexterior int not null,  

  depreciaciontotal int not null,
  depreciacionpais int not null,
  depreciacionexterior int not null,

  amortizacionpatentetotal int not null,
  amortizacionpatentepais int not null,
  amortizacionpatenteexterior int not null,

  asistenciatecnicatotal int not null,
  asistenciatecnicapais int not null,
  asistenciatecnicaexterior int not null,

  manoobraindirectatotal int not null,
  manoobraindirectapais int not null,
  manoobraindirectaexterior int not null,

  sueldosalario2total int not null,
  sueldosalario2pais int not null,
  sueldosalario2exterior int not null,

  otrasremuneraciones2total int not null,
  otrasremuneraciones2pais int not null,
  otrasremuneraciones2exterior int not null,

  sobresueldos2total int not null,
  sobresueldos2pais int not null,
  sobresueldos2exterior int not null,  

  jubilacionpatronal2total int not null,
  jubilacionpatronal2pais int not null,
  jubilacionpatronal2exterior int not null,

  subsidiosfamiliar2total int not null,
  subsidiosfamiliar2pais int not null,
  subsidiosfamiliar2exterior int not null,

  aporteIESStotal int not null,
  aporteIESSpais int not null,
  aporteIESSexterior int not null,

  fondosreserva2total int not null,
  fondosreserva2pais int not null,
  fondosreserva2exterior int not null,

  iecesecap2total int not null,
  iecesecap2pais int not null,
  iecesecap2exterior int not null,

  materialesauxiliarestotal int not null,
  materialesauxiliarespais int not null,
  materialesauxiliaresexterior int not null,

  segurosobreinventariostotal int not null,
  segurosobreinventariospais int not null,
  segurosobreinventariosexterior int not null,

  mantenimientoreparaciontotal int not null,
  mantenimientoreparacionpais int not null,
  mantenimientoreparacionexterior int not null,
	--- faltan 3 campos 
  trabajosfabricaciontotal int not null,
  trabajosfabricacionpais int not null,
  trabajosfabricacionexterior int not null,

  impuestopredialtotal int not null,
  impuestopredialpais int not null,
  impuestopredialexterior int not null,

  otrosimpuestostotal int not null,
  otrosimpuestospais int not null,
  otrosimpuestosexterior int not null,

  energiaelectricatotal int not null,
  energiaelectricapais int not null,
  energiaelectricaexterior int not null,

  combustibleslubricantestotal int not null,
  combustibleslubricantespais int not null,
  combustibleslubricantesexterior int not null,

  aguatotal int not null,
  aguapais int not null,
  aguaexterior int not null,

  telefonototal int not null,
  telefonopais int not null,
  telefonoexterior int not null,

  otrosgastosfabricaciontotal int not null,
  otrosgastosfabricacionpais int not null,
  otrosgastosfabricacionexterior int not null,

  inventarioinicialproductosprocesototal int not null,
  inventarioinicialproductosprocesopais int not null,
  inventarioinicialproductosprocesoexterior int not null,

  inventariofinalproductosprocesototal int not null,
  inventariofinalproductosprocesopais int not null,
  inventariofinalproductosprocesoexterior int not null,

  utilidadbrutatotal int not null,
  utilidadbrutapais int not null,
  utilidadbrutaexterior int not null,  
  constraint fk_ventas_Empresa foreign key (Ruc_empresa)
  references IdentificacionUbicacionActividad(ruc)
);

--select * from ventasCosto_Ventas;


create table gastosoperacionalesotrosingresos
 (
  Ruc_empresa varchar,
  anoContable int not null, 
  --
  gastosoperacionalestotal int not null,
  gastosoperacionalespais int not null,
  gastosoperacionalesexterior int not null,
  
  sueldosalariototal int not null,
  sueldosalariopais int not null,
  sueldosalarioexterior int not null,

  otrasremuneracionestotal int not null,
  otrasremuneracionespais int not null,
  otrasremuneracionesexterior int not null,

  sobresueldostotal int not null,
  sobresueldospais int not null,
  sobresueldosexterior int not null,

  jubilacionpatronaltotal int not null,
  jubilacionpatronalpais int not null,
  jubilacionpatronalexterior int not null,

  subsidiofamiliartotal int not null,
  subsidiofamiliarpais int not null,
  subsidiofamiliarexterior int not null,

  aporteIESStotal int not null,
  aporteIESSpais int not null,
  aporteIESSexterior int not null,

  fondosreservatotal int not null,
  fondosreservapais int not null,
  fondosreservaexterior int not null,

  iecesecaptotal int not null,
  iecesecappais int not null,
  iecesecapexterior int not null,

  comisionespagadastotal int not null,
  comisionespagadaspais int not null,
  comisionespagadasexterior int not null,

  asistenciatecnicatotal int not null,
  asistenciatecnicapais int not null,
  asistenciatecnicaexterior int not null,

  serviciobancariototal int not null,
  serviciobancariopais int not null,
  serviciobancarioexterior int not null,

  otrosgastosfinancierostotal int not null,
  otrosgastosfinancierospais int not null,
  otrosgastosfinancierosexterior int not null,

  impuestopredialtotal int not null,
  impuestopredialpais int not null,
  impuestopredialexterior int not null,

  otrosimpuestostotal int not null,
  otrosimpuestospais int not null,
  otrosimpuestosexterior int not null,

  presentaciontotal int not null,
  presentacionpais int not null,
  presentacionexterior int not null,

  honorariostotal int not null,
  honorariospais int not null,
  honorariosexterior int not null,

  viaticostotal int not null,
  viaticospais int not null,
  viaticosexterior int not null,

  reparacionmantenimientototal int not null,
  reparacionmantenimientopais int not null,
  reparacionmantenimientoexterior int not null,

  repuestosaccesoriostotal int not null,
  repuestosaccesoriospais int not null,
  repuestosaccesoriosexterior int not null,

  envasesembalajestotal int not null,
  envasesembalajespais int not null,
  envasesembalajesexterior int not null,

  fletestransportetotal int not null,
  fletestransportepais int not null,
  fletestransporteexterior int not null,

  energiaelectricatotal int not null,
  energiaelectricapais int not null,
  energiaelectricaexterior int not null,

  combustibleslubricantestotal int not null,
  combustibleslubricantespais int not null,
  combustibleslubricantesexterior int not null,

  alquilerestotal int not null,
  alquilerespais int not null,
  alquileresexterior int not null,  

  arrendamientomercantiltotal int not null,
  arrendamientomercantilpais int not null,
  arrendamientomercantilexterior int not null,

  publicidadtotal int not null,
  publicidadpais int not null,
  publicidadexterior int not null,

  primassegurototal int not null,
  primasseguropais int not null,
  primasseguroexterior int not null,

  pagosregaliastotal int not null,
  pagosregaliaspais int not null,
  pagosregaliasexterior int not null,

  vigilanciaseguridadtotal int not null,
  vigilanciaseguridadpais int not null,
  vigilanciaseguridadexterior int not null,

  limpiezatotal int not null,
  limpiezapais int not null,
  limpiezaexterior int not null,

  almacenamientototal int not null,
  almacenamientopais int not null,
  almacenamientoexterior int not null,

  comunicacionestotal int not null,
  comunicacionespais int not null,
  comunicacionesexterior int not null,

  internettotal int not null,
  internetpais int not null,
  internetexterior int not null,

  aguatotal int not null,
  aguapais int not null,
  aguaexterior int not null,

  interesestotal int not null,
  interesespais int not null,
  interesesexterior int not null,

  materialesoficinatotal int not null,
  materialesoficinapais int not null,
  materialesoficinaexterior int not null,

  depreciacionbienestotal int not null,
  depreciacionbienespais int not null,
  depreciacionbienesexterior int not null,

  bajainventariostotal int not null,
  bajainventariospais int not null,
  bajainventariosexterior int not null,

  perdidacambiototal int not null,
  perdidacambiopais int not null,
  perdidacambioexterior int not null
 );

			-- VERIFICACION DE USUARIO

create or replace function logins_verificacion(varchar, varchar)
returns text as
$Body$
	begin 
	return (select nombre from usuarios where nombre = $1 and contrasena = $2);
	end;
$Body$
language plpgsql volatile  
cost 25;

--select logins_verificacion ('Mariana Zambrano','mariana1234');
--select * from usuarios;

			--- PROCEDIMIENTOS DE ALMACENADOS ---

create or replace function InsertarIdentificacionUbicacionActividad(varchar, varchar, varchar, varchar,varchar,varchar, varchar, varchar, varchar,varchar,varchar,varchar,int,int,int,int)
returns void as
$Body$		
	begin 		
	insert into IdentificacionUbicacionActividad values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16);	
	end;
$Body$
language plpgsql volatile  
cost 100;


create or replace function InsertarPersonalSueldos(varchar,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int)
returns void as
$Body$		
declare tsnr int; declare stsnr int; declare teg int; declare steg int;declare tos int; declare stos int;declare te int; declare ste int;
declare tt int;declare ts int; declare tm int; declare th int;declare tsh int;declare tsm int;
	begin 	
	tsnr = ($3+$5);	stsnr = ($4+$6); teg =($7+$9);steg=($8+$10);tos=($11+$13); stos=($12+$14); te=($15+$17);ste=($16+$18);
	tt=(tsnr+teg+tos+te); ts=(stsnr+steg+stos+ste);tm=($3+$7+$11+$15); th=($5+$9+$13+$17);tsm=($4+$8+$12+$16);tsh=($6+$10+$14+$18);
	insert into personalSueldos values ($1,$2,tsnr,stsnr,$3,$4,$5,$6,teg,steg,$7,$8,$9,$10,tos,stos,$11,$12,$13,$14,te,ste,$15,$16,$17,$18,tt,ts,tm,th,tsm,tsh);
	end;
$Body$
language plpgsql volatile  
cost 100;

--select * from IdentificacionUbicacionActividad i inner join personalSueldos p on i.ruc = p.Ruc_empresa inner join ventasCosto_Ventas v on p.Ruc_empresa = v.Ruc_empresa inner join gastosoperacionalesotrosingresos ga on v.Ruc_empresa = ga.Ruc_empresa where v.anoContable = 2015

create or replace function InsertarventasCosto_Ventas(varchar,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int)
returns void as
$Body$
	begin
	insert into ventasCosto_Ventas values ($1,$2,($3+$4),$3,$4,($5+$6),$5,$6,($7+$8),$7,$8,($9+$10),$9,$10,($11+$12),$11,$12,($13+$14),$13,$14,($15+$16),$15,$16,($17+$18),$17,$18,($19+$20),$19,$20,($21+$22),$21,$22,($23+$24),$23,$24,($25+$26),$25,$26,($27+$28),$27,$28,($29+$30),$29,$30,($31+$32),$32,$32,($33+$34),$33,$34,($35+$36),$35,$36,($37+$38),$37,$38,($39+$40),$39,$40,($41+$42),$41,$42,($43+$44),$43,$44,($45+$46),$45,$46,($47+$48),$47,$48,($49+$50),$49,$50,($51+$52),$51,$52,($53+$54),$53,$54,($55+$56),$55,$56,($57+$58),$57,$58,($59+$60),$59,$60,($61+$62),$61,$62,($63+$64),$63,$64,($65+$66),$65,$66,($67+$68),$67,$68,($69+$70),$69,$70,($71+$72),$71,$72,($73+$74),$73,$74,($75+$76),$75,$76,($77+$78),$77,$78,($79+$80),$79,$80,($81+$82),$81,$82,($83+$84),$83,$84,($85+$86),$85,$86,($87+$88),$87,$88,($89+$90),$89,$90);
	end;
$Body$
language plpgsql volatile  
cost 100;

--select InsertarventasCosto_Ventas ('1314853209001',2015,12,2,3,5,1,7,1,8,1,6,1,7,112,45,12,7,12,8,23,86,12,64,12,67,1,79,12856,5,2,56,34,76234,8568,234567,112,532,234,234,23,576,789,987,45,4523,32,87,54,78,23,809,13,7989,234,65,234,23,234,234,98,23,9,34,08,23,09,23,45,789,234,234,234,789,234,89,234,970,234,234,876,132,78,31,67,12,432,234,12,312);
--select * from ventasCosto_Ventas;

create or replace function Insertargastosoperacionalesotrosingresos(varchar,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int)--,int,int)
returns void as
$Body$
	begin
	insert into gastosoperacionalesotrosingresos values ($1,$2,($3+$4),$3,$4,($5+$6),$5,$6,($7+$8),$7,$8,($9+$10),$9,$10,($11+$12),$11,$12,($13+$14),$13,$14,($15+$16),$15,$16,($17+$18),$17,$18,($19+$20),$19,$20,($21+$22),$21,$22,($23+$24),$23,$24,($25+$26),$25,$26,($27+$28),$27,$28,($29+$30),$29,$30,($31+$32),$31,$32,($33+$34),$33,$34,($35+$36),$35,$36,($37+$38),$37,$38,($39+$40),$39,$40,($41+$42),$41,$42,($43+$44),$43,$44,($45+$46),$45,$46,($47+$48),$47,$48,($49+$50),$49,$50,($51+$52),$51,$52,($53+$54),$53,$54,($55+$56),$55,$56,($57+$58),$57,$58,($59+$60),$59,$60,($61+$62),$61,$62,($63+$64),$63,$64,($65+$66),$65,$66,($67+$68),$67,$68,($69+$70),$69,$70,($71+$72),$71,$72,($73+$74),$73,$74,($75+$76),$75,$76,($77+$78),$77,$78,($79+$80),$79,$80);--,($81+$82),$81,$82);
	end;
$Body$
language plpgsql volatile  
cost 100;

--select Insertargastosoperacionalesotrosingresos('1314853209001',2015,634,345,634,34,7,34,567,34,87,34,23,234,56,23,23,56,567,8575,687,89,34,789,34,98,234,879,23,7098,23,9,234,45,56234,2344577567,23423,23424,234234,78,34,87,345,68,234,423,56,678,34,687,809,23,798,234,0,243,67,23,78,456,243,687,66783,78,23,678,234,78,234,524,768,234,98,23,89,23,87,23,32,3,31,12,321);

--select * from gastosoperacionalesotrosingresos;
select Insertargastosoperacionalesotrosingresos ('1',4,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,0,0,0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,0,4,0)

CREATE TABLE GASTOSOPERACIONALES2
(ruc varchar not null,
anioRefe int not null,
----
OTROSGATOSOPERACIONALESTOTAL int NOT NULL,
OTROSGATOSOPERACIONALESPAIS int NOT NULL,
OTROSGATOSOPERACIONALESEXTERIOR int NOT NULL,

OTROSINGRESOSTOTAL int NOT NULL,
OTROSINGRESOSPAIS int NOT NULL,
OTROSINGRESOSEXTERIOR int NOT NULL,

TRABAJOSFABRICACIONTOTAL int NOT NULL,
TRABAJOSFABRICACIONPAIS int NOT NULL,
TRABAJOSFABRICACIONEXTERIOR int NOT NULL,

REPARACIONTOTAL int NOT NULL,
REPARACIONPAIS int NOT NULL,
REPARACIONXTERIOR int NOT NULL,

ASESORIATOTAL int NOT NULL,
ASESORIAPAIS int NOT NULL,
ASESORIAEXTEROR int NOT NULL,

TRANSPORTETOTAL int NOT NULL,
TRANSPORTEPAIS int NOT NULL,
TRANSPORTEEXTERIOR int NOT NULL,

BIENESMUEBLESTOTAL int NOT NULL,
BIENESMUEBLESPAIS int NOT NULL,
BIENESMUEBLESEXTERIOR int NOT NULL,

BIENESINMUEBLESTOTAL int NOT NULL,
BIENESINMUEBLESPAIS int NOT NULL,
BIENESINMUEBLESEXTERIOR int NOT NULL,

COMISIONTOTAL int NOT NULL,
COMISIONPAIS int NOT NULL,
COMISIONEXTERIOR int NOT NULL,

VENTAENERGIATOTAL int NOT NULL,
VENTAENERGIAPAIS int NOT NULL,
VENTAENERGIAEXTERIOR int NOT NULL,

UTILIDADFIJOSTOTAL int NOT NULL,
UTILIDADFIJOSPAIS int NOT NULL,
UTILIDADFIJOSEXTERIOR int NOT NULL,

SUBSIDIOSTOTAL int NOT NULL,
SUBSIDIOSPAIS int NOT NULL,
SUBSIDIOSEXTERIOR int NOT NULL,

INTERESRECIBIDOTOTAL int NOT NULL,
INTERESRECIBIDOPAIS int NOT NULL,
INTERESRECIBIDOEXTERIOR int NOT NULL,

DIVIDENDOSPROPIEDADTOTAL int NOT NULL,
DIVIDENDOSPROPIEDADPAIS int NOT NULL,
DIVIDENDOSPROPIEDADEXTERIOR int NOT NULL,

UTILIDADPERDIDATOTAL int NOT NULL,
UTILIDADPERDIDAPAIS int NOT NULL,
UTILIDADPERDIDAEXTERIOR int NOT NULL,

TRABAJADORES15TOTAL int NOT NULL,
TRABAJADORES15PAIS int NOT NULL,
TRABAJADORES15EXTERIOR int NOT NULL,

DIVIDENDOSPAGADOSTOTAL int NOT NULL,
DIVIDENDOSPAGADOSPAIS int NOT NULL,
DIVIDENDOSPAGADOSEXTERIOR int NOT NULL
); 

create or replace function InsertarGASTOSOPERACIONALES2(character, integer,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int)
returns void as
$BODY$
	begin
	insert into 
	GASTOSOPERACIONALES2 values($1,$2,($3+$4),$3,$4,($5+$6),$5,$6,($7+$8),$7,$8,($9+$10),$9,$10,($11+$12),$11,$12,($13+$14),$13,$14,($15+$16),$15,$16,($17+$18),$17,$18,($19+$20),$19,$20,($21+$22),$21,$22,($23+$24),$23,$24,($25+$26),$25,$26,($27+$28),$27,$28,($29+$30),$29,$30,($31+$32),$32,$32,($33+$34),$33,$34,($35+$36),$35,$36);
	end;
$BODY$
language plpgsql volatile
cost 100;

--SELECT InsertarGASTOSOPERACIONALES2 ('1314853209001',2015,123,123,12,123,234,234,345,345,354,345,35,35,345,456,4,123,1243,132,23,312,123,123,132,132,43,53,654,45,456,567,567,7567,567,567)
--SELECT * FROM GASTOSOPERACIONALES2

----------- JOSUE


CREATE TABLE COMBUSTIBLES
(ruc varchar not null,
anioRefe int not null,
---
GASOLINAMEDIDA VARCHAR NOT NULL,
GASOLINACANTIDAD int NOT NULL,
GASOLINAVALOR int NOT NULL,

DIESELMEDIDA VARCHAR NOT NULL,
DIESELCANTIDAD int NOT NULL,
DIESELVALOR int NOT NULL,

RESIDUOMEDIDA VARCHAR NOT NULL,
RESIDUOCANTIDAD int NOT NULL,
RESIDUOVALOR int NOT NULL,

GASMEDIDA VARCHAR NOT NULL,
GASCANTIDAD int NOT NULL,
GASVALOR int NOT NULL,

ACEITEMEDIDA VARCHAR NOT NULL,
ACEITECANTIDAD int NOT NULL,
ACEITEVALOR int NOT NULL,

GRASASMEDIDA VARCHAR NOT NULL,
GRASASCANTIDAD int NOT NULL,
GRASASVALOR int NOT NULL,

OTROSMEDIDA VARCHAR NOT NULL,
OTROSCANTIDAD int NOT NULL,
OTROSVALOR int NOT NULL,

TOTALCANTIDAD int  NOT NULL,
TOTALVALOR int NOT NULL
);

create or replace function insertarCOMBUSTIBLES(character, integer,varchar,int,int,varchar,int,int,varchar,int,int,varchar,int,int,varchar,int,int,varchar,int,int,varchar,int,int)
returns void as
$BODY$
	begin
	insert into 
	COMBUSTIBLES values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22,$23,($4+$7+$10+$13+$16+$19+$22),($5+$8+$11+$14+$17+$20+$23));
	end;
$BODY$
language plpgsql volatile
cost 100;
--select insertarCOMBUSTIBLES ('1314853209001',2015,'sa',213,213,'sa',213,213,'sa',213,213,'sa',213,213,'sa',213,213,'sa',213,213,'sa',213,213);
--select * from COMBUSTIBLES

--drop table impuestos

create table impuestos(
ruc varchar not null,
anioRefernc int not null,
IVACOBRADOvalor int not null,
IVAPAGADOvalor int  not null,
ICEvalor int not null,
IMPUESTOPREDIALvalor int not null,
OTROSIMPUETOSvalor int not null,
IMPUESTOSNETOSvalor int not null);

create or replace function InsertarImpuestos(character, integer,int,int,int,int,int,int)
returns void as
$BODY$
	begin
	insert into 
	impuestos values($1,$2,$3,$4,$5,$6,$7,$8);
	end;
$BODY$
language plpgsql volatile
cost 100;

--select InsertarImpuestos('1314853209001',2015,92113,1231,312,565,123,674);
--select * from impuestos;
--select * from identificacionubicacionactividad;

--DROP TABLE INVENTARIO
create table inventario(
ruc varchar not null,
anioRefernc int not null,
--

MATERIAenero int not null,
MATERIAdiciembre int not null,

COMBUSTIBLESenero int not null,
COMBUSTIBLESdiciembre int not null,

TERMINADOSenero int not null,
TERMINADOSdiciembre int not null,

PROCESOenero int not null,
PROCESOdiciembre int not null,

MERCADERIAenero int not null,
MERCADERIAdiciembre int not null,

OTROSenero int not null,
OTROSdiciembre int not null,

TOTALENERO int not null,
TOTALDICIEMBRE int not null
);

create or replace function InsertarInventario(character, integer ,int, int,int, int,int, int,int, int,int, int,int, int)
returns void as
$BODY$
	begin
	insert into 
	inventario values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,($3+$5+$7+$9+$11+$13),($4+$6+$8+$10+$12+$14));
	end;
$BODY$
language plpgsql volatile
cost 100;

--select InsertarInventario ('1314853209001',2015,13132123,1231231231,13132123,1231231231,13132123,1231231231,13132123,1231231231,13132123,1231231231,13132123,1231231231);
--select * from inventario;

--DROP TABLE electricidad_agua;
create table electricidad_agua( 
ruc varchar  not null,
anioRefernc int NOT NULL,
--
ELECTRICIDADunidadMedida varchar NOT NULL,
ELECTRICIDADcantidad int NOT NULL,
ELECTRICIDADvalor int NOT NULL,

ELECTRICIDADCOMPRADAunidadMedida varchar NOT NULL,
ELECTRICIDADCOMPRADAcantidad int NOT NULL,
ELECTRICIDADCOMPRADAvalor int NOT NULL,

AGUAunidadMedida varchar NOT NULL,
AGUAcantidad int NOT NULL,
AGUAvalor int NOT NULL,

AGUANATURALunidadMedida varchar NOT NULL,
AGUANATURALcantidad int NOT NULL,
AGUANATURALvalor int NOT NULL,

TOTALCANTIDAD int NOT NULL,
TOTALVALOR int NOT NULL 
);

create or replace function InsertarElec_Agua(character, integer,character, int, int,character, int, int,character, int, int,character, int, int)
returns void as
$BODY$
	begin
	insert into 
	electricidad_agua values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,($4+$7+$10+$13),($5+$8+$11+$14));
	end;
$BODY$
language plpgsql volatile
cost 100;

--select InsertarElec_Agua ('1314853209001',2015,'KwH',196,238,'KwH',196,238,'M3',196,238,'M3',196,238);
--select * from electricidad_agua;

--drop table pagosPorServicio
create table pagosPorServicio(
ruc varchar not null,
anioRefernc int,
--
juridicovalor integer,
contabilidadvalor integer,
informaticosvalor integer,
comisionesvalor integer,
asistenciavalor integer,
otrosvalor integer,
total int
);

create or replace function InsertarPagosPorServicio(character, integer, integer, integer, integer, integer, integer, integer)
returns void as
$BODY$
	begin
	insert into 
	pagosPorServicio values($1,$2,$3,$4,$5,$6,$7,$8,($3+$4+$5+$6+$7+$8));
	end;
$BODY$
language plpgsql volatile
cost 100;

--select InsertarPagosPorServicio ('1314853209001',2015,2312,12,12,12,12,12);
--select * from pagosPorServicio;

--DROP TABLE pagosPorServiciosAlquileR
create table pagosPorServiciosAlquiler(
ruc varchar not null,
anioRefernc int,
--
LOCALESTIEMPO INTEGER,
LOCALESVALOR int,

MUEBLESTIEMPO INTEGER,
MUEBLESVALOR int,

MAQUINARIATIEMPO INTEGER,
MAQUINARIAVALOR int,

COMPUTOTIEMPO INTEGER,
COMPUTOVALOR int,

ELECTRONICOSTIEMPO INTEGER,
ELECTRONICOSVALOR int,

VEHICULOTIEMPO INTEGER,
VEHICULOVALOR int,

OTROSTIEMPO INTEGER,
OTROSVALOR int,

TOTALVALOR int
);

create or replace function InsertarPagosPorServiciosAlquiler(character, integer,intEGER,int,intEGER,int,intEGER,int,intEGER,int,intEGER,int,intEGER,int,intEGER,int)
returns void as
$BODY$
	begin
	insert into 
	pagosPorServiciosAlquiler values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,($4+$6+$8+$10+$12+$14+$16));
	end;
$BODY$
language plpgsql volatile
cost 100;

--select InsertarPagosPorServiciosAlquiler ('1314853209001',2015,2015,123480,2015,123480,2015,123480,2015,123480,2015,123480,2015,123480,2015,123480);
--select * from pagosPorServiciosAlquiler;


create table activosIntangibles(
ruc varchar ,
anioRefernc int,
descripcion varchar,
anioCompra int, 
compra int, 
duracionEnAnios int
);

create or replace function InsertarActivosIntangibles(character, integer, character, int, int, int)
returns void as
$BODY$
	begin
	insert into 
	activosIntangibles(ruc, anioRefernc, descripcion, anioCompra, compra, duracionEnAnios) values($1,$2,$3,$4,$5,$6);
	end;
$BODY$
language plpgsql volatile
cost 100;

--select InsertarActivosIntangibles ('1314853209001',2015,'Servicios en la nube',2015,69,1);
--select * from activosIntangibles;


--DROP TABLE nombreMateriasPrimasAuxiliares
create table nombreMateriasPrimasAuxiliares(
ruc varchar,
anioRefernc int,
--
descripcion varchar[],
ND0 int[],
unidadMedida varchar[],
cantidad_ND1 int[],
valor_ND1 int[],
cantidad_ND2 int[],
valor_ND2 int[],
cantidad_ND3 int[],
valor_ND3 int[],
ND4 int[]
);

create or replace function InsertarMateriasPrimasAuxiliares(character, integer, character[], integer[], character[],
 int[], int[], int[], int[], int[], int[], int[])
returns void as
$BODY$
	begin
	insert into 
	nombreMateriasPrimasAuxiliares(ruc, anioRefernc, descripcion, nd0, unidadMedida, cantidad_ND1, valor_ND1,
	cantidad_ND2, valor_ND2, cantidad_ND3, valor_ND3, nd4) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12);
	end;
$BODY$
language plpgsql volatile
cost 1000;

--select InsertarMateriasPrimasAuxiliares ('1314853209001',2015,array['Mantera','BONELA'],array[12,3],'{"lb","ASD"}',array[2313,12],array[23,12],array[54,21],array[12,12],array[78,12],array[12,3],array[6,7]);
--select * from nombreMateriasPrimasAuxiliares;


create table produccionVentas(
ruc varchar ,
anioRefernc int, 
---
nombreProducto varchar[],
NN integer[], 
unidadMedida varchar[], 
cantidad_NN1 int[],
valor_NN1 int[],
cantidad_NN2 int[],
valor_NN2 int[],
NN3 int[]
);

create or replace function InsertarProduccionVentas(character, integer, character[], integer[], character[],
 int[], int[], int[], int[], int[])
returns void as
$BODY$
	begin
	insert into 
	produccionVentas(ruc, anioRefernc, nombreProducto, NN, unidadMedida, cantidad_NN1, valor_NN1,
	cantidad_NN2, valor_NN2, NN3) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10);
	end;
$BODY$
language plpgsql volatile
cost 200;

--select InsertarProduccionVentas ('1314853209001',2015,'{"pan","huevo"}',array[1122,12],'{"lb","lt"}',array[3,21],array[345,3169],array[12,31],array[215,5456],array[12,35]);
--select * from produccionVentas;


--drop table costoVentasMercaderia
create table costoVentasMercaderia(
ruc varchar not null,
anioRefernc int,
--
nombreMercaderia varchar[],
IDE integer[], 
unidadMedida varchar[], 
cantidad_NM1 int[], 
valor_NM1 int[], 
cantidad_NM2 int[],
valor_NM2 int[]
);

create or replace function InsertarCostoVentasMercaderia(character, integer, character[], integer[], character[],
 int[], int[], int[], int[])
returns void as
$BODY$
	begin
	insert into 
	costoVentasMercaderia(ruc, anioRefernc, nombreMercaderia, IDE, unidadMedida, cantidad_NM1, valor_NM1,
	cantidad_NM2, valor_NM2) values($1,$2,$3,$4,$5,$6,$7,$8,$9);
	end;
$BODY$
language plpgsql volatile
cost 200;

--select InsertarCostoVentasMercaderia ('1314853209001',2015,ARRAY['pascuañl','SADSA'],ARRAY[12,21],ARRAY['kg','LB'],ARRAY[3,2],ARRAY[4,53],ARRAY[31,23],ARRAY[3,55]);
--select * from costoVentasMercaderia;

create table activosFijos(
ruc varchar,
anioRefernc int, 
---
nombreActivo varchar,
SD1 int,
SD2 int,
SD3 int,
SD4 int,
SD5 int,
SD6 int,
SD7 int,
SD8 int,
SD9 int,
SD10 int,
SD11 int,
SD12 int
);

create or replace function InsertarActivosFijos(character, integer, character, 
 int, int, int, int, int, int, int, int, int, int, int, int)
returns void as
$BODY$
	begin
	insert into 
	activosFijos(ruc, anioRefernc, nombreActivo, SD1, SD2, SD3, SD4, SD5, SD6, 
	SD7, SD8, SD9, SD10, SD11, SD12) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15);
	end;
$BODY$
language plpgsql volatile
cost 200;

--select InsertarActivosFijos('1314853209001',2015,'laskjd',12,12,34,56,12,56,12,2,334,672131,3453453532341322,1);
--select * from activosFijos;
