create database Inmobiliaria
go

use Inmobiliaria
go
CREATE TABLE COMPRADOR (
codCompr varchar(20) PRIMARY KEY,
ciCompr char(20) CHECK  (([cicompr] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
nombreCompr varchar(20) not null,
apellidoCompr varchar(20) not null,
tlfCompr char(20) CHECK  (tlfCompr like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') null,
DireccionCompr varchar(20),
CiudadCompr varchar(20)
)
CREATE TABLE VENDEDOR (
codVend varchar(20) PRIMARY KEY,
nombreVend varchar(20) not null,
apellidoVend varchar(20)not null
)
CREATE TABLE Propiedades(
codPropiedad varchar(20) PRIMARY KEY,
FechaContrato date ,
Estado varchar(20)not null check (Estado in ('Vendido', 'En venta')),
codDue varchar(20),
TipoP varchar (20),
DireccionT varchar(20) not null,
SectorT varchar(20) not null,
CiudadT varchar(20) not null,
FOREIGN KEY(codDue) REFERENCES  DUEÑO (codDue),
)
CREATE TABLE COMPRAVENTA (
codCV varchar(20) PRIMARY KEY,
codPropiedad varchar(20),
precioMinVenta money,
ValorVenta money CHECK  (ValorVenta>(0)),
comision int CHECK  (comision >=(3)and comision <=5),
ComisionVenta money,
FechaVenta date default (getdate()),
codCompr varchar(20),
codVend varchar(20),
FOREIGN KEY(codCompr) REFERENCES  COMPRADOR (codCompr),
FOREIGN KEY(codVend) REFERENCES VENDEDOR (codVend),
FOREIGN KEY(codPropiedad) REFERENCES Propiedades (codPropiedad),

)

drop table COMPRAVENTA
CREATE TABLE DUEÑO (
codDue varchar(20) PRIMARY KEY,
CIdue char(20) CHECK  (([CIdue] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
nombreDue varchar(20) not null,
apellidoDue varchar(20)not null,
tlfDue char(20) CHECK  (tlfDue like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') null,
DireccionDue varchar(20),
CiudadDue varchar(20)
)
CREATE TABLE TERRENOS (
codT varchar(20) PRIMARY KEY,
AreaT char(20) not null,
FrenteT char(20) not null,
FondoT char(20) not null,
codPropiedad varchar(20),
FOREIGN KEY(codPropiedad) REFERENCES Propiedades (codPropiedad),
)
CREATE TABLE DEPARTAMENTO (
codDepart varchar(20) PRIMARY KEY,
AreaD char(20) not null,
NrHabitacionesD int not null,
NrBanosD int not null,
TelefD varchar(20) not null check (TelefD in ('s', 'n')),
GarajeD varchar(20) not null check (GarajeD in ('s', 'n')),
codPropiedad varchar(20) not null,
FOREIGN KEY(codPropiedad) REFERENCES Propiedades (codPropiedad)
)
CREATE TABLE CASA (
codCasa varchar(20) PRIMARY KEY,
AreaC char(20) not null,
NrPisos int not null,
NrHabitacionesC int not null,
NrBañosC int not null,
TelefC varchar(20) not null check (TelefC in ('s', 'n')),
GarajeC varchar(20) not null check (GarajeC in ('s', 'n')),
codPropiedad varchar(20) not null,
FOREIGN KEY(codPropiedad) REFERENCES PROPIEDADES (codPropiedad)
)
CREATE TABLE INTERESADOS (
codInteres varchar(20) PRIMARY KEY,
nombreInteres varchar(20) not null,
apellidoInteres varchar(20) not null,
tlfInteres char(20) CHECK  (tlfInteres like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') null,
DireccionI varchar(20) not null,
SectorI varchar(20) not null,
CiudadI varchar(20) not null
)
CREATE TABLE INTERESADOPROPIEDAD (
codPropiedad varchar(20),
CodInteres varchar(20),
FOREIGN KEY(codPropiedad) REFERENCES  PROPIEDADES (codPropiedad),
FOREIGN KEY(codInteres) REFERENCES Interesados (codInteres)
)


CREATE TABLE [dbo].[Usuario](
	[usrid] [int] NOT NULL,
	[usrcedula] [varchar](10) NOT NULL,
	[usrapellidop] [varchar](50) NOT NULL,
	[usrapellidom] [varchar](50) NOT NULL,
	[usrnombrec] [varchar](50) NOT NULL,
	[usrmail] [varchar](50) NOT NULL,
	[usridusuario] [varchar](10) NOT NULL,
	[usrclave] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[usrid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT Usuario VALUES (1,'1723479331','Buri','Naula','Janneth','jannethburi@gmail.com','jburi','jburi')

select * from Comprador
insert Comprador values ('COM1',1754768934,'Victor','soliz','0992345783','Las Casas','Quito')
insert  COMPRADOR values ('COM2',1735466588,'Santiago','suarez','0947384935','Biblian','Azogues')
insert Comprador values ('COM3',1744457689,'Raul','zambrano','0957482344','Horizontes','Cuenca')
insert Comprador values ('COM4',1711237754,'Mario','ledesma','0976463223', 'Benalcazar','Quito')
insert Comprador values ('COM5',1700934653,'Izabel','torres','0957583372','Fiallos','Quito')
insert Comprador values ('COM6',1723467738,'Jorge','Ortiz','0923367332','Aeropuerto','Quito')
insert Comprador values ('COM7',1723467766,'Fernando','naranjo','0994515420','Pulida','Quito')
insert Comprador values ('COM8',1727892766,'Ruben','falcao','0996678020','Villaflora','Quito')
insert Comprador values ('COM9',1723479086,'Randy','quino','0990078391','Aeropuerto','Quito')


select * from VENDEDOR
insert VENDEDOR values ('VEN1','Rolando','yunga')
insert VENDEDOR values ('VEN2','brat','asto')
insert VENDEDOR values ('VEN3','Andres','cepeda')
insert VENDEDOR values ('VEN4','gorge','heredia')
insert VENDEDOR values ('VEN5','David','Cañizare')

select * from CompraVenta
insert CompraVenta values ('CV11','PRO1',45000,47500,5,500 ,default,'COM1','VEN1')
insert CompraVenta values ('CV12','PRO2',50000,60500,3,300,default,'COM2','VEN2')
insert CompraVenta values ('CV13','PRO3',45670,38500,5,500,default,'COM3','VEN3')
insert CompraVenta values ('CV14','PRO4',45789,56000,4,400,default,'COM4','VEN4')
insert CompraVenta values ('CV15','PRO5',28900,31500,4,400,default,'COM5','VEN5')
insert CompraVenta values ('CV16','PRO6',40890,50000,4,400,default,'COM5','VEN1')
insert CompraVenta values ('CV17','PRO7',65000,70000,4,400,default,'COM6','VEN2')
insert CompraVenta values ('CV18','PRO8',90000,100000,3,300,default,'COM7','VEN2')
insert CompraVenta values ('CV19','PRO9',65890,70000,3,300,default,'COM7','VEN2')
insert CompraVenta values ('CV20','PRO10',65890,70000,5,500,default,'COM8','VEN2')
insert CompraVenta values ('CV21','PRO11',90000,100000,4,400,default,'COM9','VEN5')

select * from DUEÑO
insert DUEÑO values ('DUE1',1723464883,'Dario','torres','0974373823','La Gasca','Quito')
insert DUEÑO values ('DUE2',1783647492,'Julio','alban','0911113675','Vivanco','Tulcan')
insert DUEÑO values ('DUE3',1763384923,'Marta','suarez','0974373628','El inca','Cuenca')
insert DUEÑO values ('DUE4',1738344555,'Mikel','ubeda','0947483733', 'Garcia Moreno','Quito')
insert DUEÑO values ('DUE5',1893474733,'antonio','jacome','0983263777','Cuenca','Quito')
insert DUEÑO values ('DUE6',1783637383,'Marco','zurita','0993570180','La Magdalena','Quito')
insert DUEÑO values ('DUE7',1786637383,'Katy','naranjo','0969020175','Valcon del Valle','Quito')
insert DUEÑO values ('DUE8',1711137383,'Karina','andrango','0967820175','La Colina','Quito')
insert DUEÑO values ('DUE9',1710087383,'Yazmin','fueltala','0988982075','Ajavi','Quito')
insert DUEÑO values ('DUE10',1700948482,'Eduardo','caiza','0991985665','Dorado','Quito')

select * from PROPIEDADES

insert PROPIEDADES values ('PRO1', '2012-09-12', 'Vendido', 'DUE2','Departamento','La Tola','Norte','Quito')
insert PROPIEDADES values ('PRO2', '2013-01-31', 'En venta', 'DUE3','Terreno','Villaflora','Centro','Quito')
insert PROPIEDADES values ('PRO3', '2013-03-23', 'Vendido', 'DUE4','Departamento','Sangolqui','Valle','Quito')
insert PROPIEDADES values ('PRO4', '2013-05-17', 'En venta', 'DUE5','Casa','La Mena','Sur','Quito')
insert PROPIEDADES values ('PRO5', '2012-12-12', 'Vendido', 'DUE1','Terreno','Guanami','Sur','Cuenca')
insert PROPIEDADES values ('PRO6', '2012-08-09', 'Vendido', 'DUE6','Departamento','La Ecuatoriana','Sur','Ibarra')
insert PROPIEDADES values ('PRO7', '2012-09-01', 'Vendido', 'DUE5','Departamento','La Comuna','Norte','Quito')
insert PROPIEDADES values ('PRO8', '2013-04-04', 'En venta', 'DUE7','Departamento','Av. Gonzalez Suarez','Norte','Quito')
insert PROPIEDADES values ('PRO9', '2013-07-04', 'En venta', 'DUE8','Departamento','Av. Gonzalez Suarez','Norte','Quito')
insert PROPIEDADES values ('PRO10', '2013-09-12', 'Vendido', 'DUE9','Departamento','Av. Garcia Moreno','Centro','Quito')
insert PROPIEDADES values ('PRO11', '2013-10-18', 'Vendido', 'DUE10','Terreno','Av. Naciones Unidas','Norte','Quito')
insert PROPIEDADES values ('PRO12', '2013-10-18', 'Vendido', 'DUE4','Departamento','Av. Naciones Unidas','Centro','Quito')

select * from  DEPARTAMENTO
insert DEPARTAMENTO values ('DEP1','100','3','3','s','s','PRO1')
insert DEPARTAMENTO values ('DEP2','100','3','3','s','n','PRO3')
insert DEPARTAMENTO values ('DEP3','250','3','3','s','s','PRO6')
insert DEPARTAMENTO values ('DEP4','250','4','3','s','s','PRO7')
insert DEPARTAMENTO values ('DEP5','250','4','3','s','s','PRO8')
insert DEPARTAMENTO values ('DEP6','250','4','3','s','s','PRO9')
insert DEPARTAMENTO values ('DEP7','550','3','4','s','s','PRO10')
insert DEPARTAMENTO values ('DEP8','550','3','4','s','s','PRO12')
alter table departamento 

select * from Casa  
insert Casa values ('CAS1','150','3','3','3','s','s','PRO4')

select * from TERRENOS 
insert TERRENOS values ('TER1','200','10','20','PRO2')
insert TERRENOS values ('TER2','100','10','10','PRO5')
insert TERRENOS values ('TER3','350','20','50','PRO1')

select * from Interesados
insert Interesados values ('INTE1','mora','Diego', '0992336722','Bayas','Norte','Azoguez')
insert Interesados values ('INTE2','Loachamin','Lucia', '0987464721','Ferroviaria','Sur','Quito')
insert Interesados values ('INTE3','yaquez','Andrea', '0974843748','Calderon','Norte','Quito')
insert Interesados values ('INTE4','Vaca','Cesar', '0945683274','Carapungo','Norte','Quito')
insert Interesados values ('INTE5','Garces','Daniel', '0975837244', 'Gavilanez','Centro','Latacunga')
insert Interesados values ('INTE6','Vazurto','David', '0985677443', 'Guamani','Centro','Quito')

select * from INTERESADOPROPIEDAD
insert INTERESADOPROPIEDAD values ('PRO1','INTE4')
insert INTERESADOPROPIEDAD values ('PRO3','INTE1')
insert INTERESADOPROPIEDAD values ('PRO5','INTE5')
insert INTERESADOPROPIEDAD values ('PRO2','INTE6')


/*INDICES*/

/*TABLA CASA*/
create index ind_Casa_CodPropiedad
on Casa (codPropiedad)

select * from casa

/*TABLA COMPRADOR*/

create index ind_Comprador_nombreYapellido
on COMPRADOR (nombreCompr,apellidoCompr)
select nombreCompr, ApellidoCompr from COMPRADOR

create index ind_Comprador_Direccion
on COMPRADOR (DireccionCompr)

select nombreCompr, ApellidoCompr from COMPRADOR where DireccionCompr = 'Aeropuerto'


create index ind_Comprador_Ciudad
on COMPRADOR (CiudadCompr)
select CiudadCompr from COMPRADOR

/*TABLA COMPRAVENTA*/

create index ind_CompraVenta_CodComprador
on COMPRAVENTA (codCompr)

select codCompr from COMPRAVENTA

create index ind_CompraVenta_CodVendedor
on COMPRAVENTA (codVend)
select codVend from COMPRAVENTA

/*TABLA DEPARTAMENTO*/

create index ind_Departamento_CodPropiedad
on DEPARTAMENTO (codPropiedad)

/*TABLA DUEÑO*/

create index ind_Dueno_nombreYapellido
on DUEÑO (nombreDue,apellidoDue)
select nombreDue, ApellidoDue from DUEÑO

create index ind_Dueno_Direccion
on DUEÑO (DireccionDue)

select nombreDue, ApellidoDue from DUEÑO where DireccionDue = 'La Gasca'

create index ind_Dueno_Ciudad
on DUEÑO (CiudadDue)
select CiudadDue from DUEÑO

/*TABLA INTERESADOPROPIEDAD*/

create index ind_IP_CodPropiedad
on INTERESADOPROPIEDAD (codPropiedad)

create index ind_IP_CodInteresados
on INTERESADOPROPIEDAD (codInteres)

select codPropiedad  from INTERESADOPROPIEDAD

/*TABLA INTERESADOS*/

create index ind_Interesados_nombreyapellido
on INTERESADOS (apellidoInteres,nombreInteres)
select nombreInteres  from INTERESADOS

select * from INTERESADOS
create index ind_Interesados_Direccion
on INTERESADOS (DireccionI)

select nombreInteres, apellidoInteres from INTERESADOS where DireccionI = 'Calderon'

create index ind_Interesados_Sector
on INTERESADOS (SectorI)

create index ind_Interesados_Ciudad
on INTERESADOS (CiudadI)
select CiudadI from INTERESADOS

/*TABLA PROPIEDADES*/

create index ind_Propiedades_CodDue
on PROPIEDADES (codDue)

create index ind_Propiedades_Estado
on PROPIEDADES (Estado)

create index ind_Propiedades_TipoP
on PROPIEDADES (TipoP)

create index ind_Propiedades_Direccion
on PROPIEDADES (DireccionT)


create index ind_Propiedades_Sector
on PROPIEDADES (SectorT)

create index ind_Propiedades_Ciudad
on PROPIEDADES (CiudadT)

/*TABLA TERRENOS*/

create index ind_Terrenos_CodPropiedad
on TERRENOS (codPropiedad)

/*TABLA VENDEDOR*/
create index ind_Vendedor_nombreyapellido
on VENDEDOR (nombreVend,apellidoVend)

/*vistas*/

/*Nombres de los clientes y nombres y direcciones de los inmuebles que están vendiendo.*/

create view _clientes
as 
select nombreDue, apellidoDue, codPropiedad, direccionT from DUEÑO d inner join PROPIEDADES p 
on d.codDue=p.codDue 
where Estado = 'En Venta' 

select * from Vw_clientes

/*Lista de propiedades que se han vendido agrupadas por sectores.*/
create view Vw_PropVendi
as 
select cv.codPropiedad, sectorT from Propiedades p inner join COMPRAVENTA cv
on p.codPropiedad = cv.codPropiedad
group by SectorT, cv.codPropiedad

select * from Vw_PropVendi

/*Realizar las siguientes consultas en SQL sobre la base de datos de la Inmobiliaria:*/
/*Desplegar el nombre, apellido, dirección y teléfono de todos los clientes que compraron terrenos de más 
 de 200 metros cuadrados en el norte de Quito.*/

select nombreCompr, ApellidoCompr, DireccionCompr, tlfCompr,codT, areaT, SectorT, CiudadT from COMPRADOR comp 
inner join COMPRAVENTA cv on comp.codCompr= cv.codCompr inner join PROPIEDADES pro on cv.codPropiedad = pro.codPropiedad inner join TERRENOS t 
on pro.codPropiedad = t.codPropiedad
where AreaT >=200 and SectorT = 'Norte' and CiudadT = 'Quito'

/*Desplegar el nombre y apellido de los empleados de la empresa inmobiliaria que vendieron inmuebles por más de 100000
dólares en los últimos tres meses.*/

select nombreVend, apellidoVend from VENDEDOR v inner join COMPRAVENTA cv
on v.codVend = cv.codVend
where ValorVenta >= 100000

/*Nombres, apellidos y teléfonos de los clientes que vendieron departamentos de tres dormitorios en el Centro de 
Quito el último año.*/

select nombreDue, apellidoDue, tlfDue, codDepart, NrHabitacionesD from DUEÑO d inner join PROPIEDADES pro
on d.codDue = pro.codDue inner join DEPARTAMENTO dep on pro.codPropiedad = dep.codPropiedad inner join COMPRAVENTA cv
on pro.codPropiedad = cv.codPropiedad
where NrHabitacionesD = 3 and SectorT  = 'Centro' and CiudadT= 'Quito' and YEAR (FechaVenta)=2014

/*Total de ganancias de la inmobiliaria desglosado por mes en el último año.*/

select month (FechaVenta) as 'Mes', sum((ValorVenta * comision)/100) as 'Total de Ganancias' from CompraVenta
where (YEAR (FechaVenta)=2014 )
group by MONTH (FechaVenta)

/*Departamentos de más de 150 metros cuadrados, de al menos 3 dormitorios, con garaje y teléfono, 
ubicados en la Avenida Gonzalez Suarez, y cuyo valor sea de hasta 80000 dólares.*/

select codDepart,AreaD, NrHabitacionesD, GarajeD, TelefD, DireccionT, ValorVenta from DEPARTAMENTO dep
inner join PROPIEDADES prop on dep.codPropiedad = prop.codPropiedad inner join COMPRAVENTA cv on prop.codPropiedad = cv.codPropiedad
where AreaD>150 and NrHabitacionesD>=3 and GarajeD = 's' and TelefD = 's' and DireccionT = 'Av. Gonzalez Suarez'
and ValorVenta <= 80000.00

/*Estado en el que se encuentra el trámite de compra de la propiedad del Sr. Jorge Ortiz.*/

select nombreCompr, apellidoCompr, cv.codPropiedad,Estado from PROPIEDADES p inner join COMPRAVENTA cv
on p.codPropiedad = cv.codPropiedad inner join COMPRADOR comp on cv.codCompr = comp.codCompr
where nombreCompr = 'Jorge' and ApellidoCompr = 'Ortiz'

/*Lista de clientes que quieren adquirir una propiedad en Sangolquí y que no viven en Quito.*/

select i.apellidoInteres, i.nombreInteres, ciudadI,inte.codPropiedad, DireccionT from INTERESADOS i inner join INTERESADOPROPIEDAD inte
on i.codInteres = inte.CodInteres inner join PROPIEDADES pro on inte.codPropiedad = pro.codPropiedad 
where DireccionT = 'Sangolqui' and CiudadI not like 'Quito'

/*Lista de propiedades que están ofertándose desde hace 5 meses y todavía no se venden.*/

select cv.codPropiedad, Estado, FechaContrato from PROPIEDADES prop inner join COMPRAVENTA cv
on prop.codPropiedad= cv.codPropiedad 
where Estado = 'En Venta' and prop.codPropiedad not like cv.codCompr


/*TRIILERS*/


/*TRIILERS CUANDO SE REALIZA EL PROCESO DE VENTA, CAMBIAR EL ESTADO DE UNA PROPIEDAD A "VENDIDA"*/


select * from Propiedades
select * from COMPRAVENTA


INSERT COMPRAVENTA VALUES ('CV24','PRO4',42000,45500,5,500,'2-12-2013','COM6','VEN1')
UPDATE Propiedades SET Estado='Vdo'where codPropiedad='P2'

create trigger tr_CambioEstadoPropiedad
on Compraventa
after insert 
as
declare @cod varchar (20)
select @cod=codPropiedad from inserted
update Propiedades set Estado= 'Vdo' where codPropiedad=@cod 

/*Cuando se vende una propiedad insertar en forma automática el valor a pagar a la inmobiliaria.*/
INSERT COMPRAVENTA VALUES ('CV24','PRO4',42000,45500,5,500,'2-12-2013','COM6','VEN1')
UPDATE Propiedades SET Estado='Vdo'where codPropiedad='P2'
create trigger tr_

/*Cuando se vende una propiedad, borrar de la base de datos las filas de las personas interesadas en esa propiedad.*/

create trigger tr_BorrarFilasInteresadopropiedad
on interesadopropiedad
after delete 
as
declare @cod varchar (20)
select @cod=codInteres from deleted
update Propiedades set Estado= 'Vendido' where codPropiedad=@cod 

