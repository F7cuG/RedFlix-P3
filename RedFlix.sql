create database RedFlix
use RedFlix

create table peliculas(
ID int primary key identity (1,1),
Titulo varchar (50),
Duracion time,
Reparto varchar (max),
FechaDeEstreno date,
Idioma varchar (50),
Clasificacion varchar (10),
Sinopsis varchar (max),
Genero varchar (50))

create table series(
ID int primary key identity (1,1),
Titulo varchar (50),
CantidadCapitulos int,
Reparto varchar (max),
FechaDeEstreno date,
Idioma varchar (50),
Clasificacion varchar (10),
Sinopsis varchar (max),
Genero varchar (50)
)

create table usuarios(
ID int primary key identity (1,1),
Nombre varchar (50),
Mail varchar (50),
Rol varchar (50),
RolID int,
constraint fk_rol_usuario
foreign key (RolID)
references roles(ID)
)

create table Roles(
ID int primary key identity(1,1),
Nombre varchar(50),
)

create table perfiles(
ID int primary key identity(1,1),
Nombre varchar (50),
Icono varchar(max)
)

create table permisos(
ID int primary key identity(1,1),
Nombre varchar(50)
)

create table rolesPermisos(
RolID int,
PermisoID int,
primary key (rolID, permisoID),
constraint fk_rol_permiso
foreign key (rolID)
references roles(ID),
constraint fk_permiso_rol
foreign key (permisoID)
references permisos(ID)
)

create table favPeliculas(
ID int identity(1,1) primary key,
peliculaID int,
constraint fk_pelicula_fav
foreign key (peliculaID) 
references peliculas(ID)
)

create table favSeries(
ID int identity(1,1) primary key,
serieID int,
constraint fk_serie_fav
foreign key (serieID) 
references series(ID)
)


create table clima(
ID int identity (1,1) primary key,
fecha datetime,
temperatura int,
descripcionClima varchar(max),
icono varchar (max)
)

create table cotizaciones(
ID int identity (1,1),
tipoMoneda varchar(50),
valor decimal (18,0),
fecha date
)
                                                                              





