Create database DBShelby
go

use DBShelby
go

--Tablas

Create table Rol
(
 [Id] int not null primary key identity(1,1),
 [Nombre] varchar(100) not null
)
go

Create table Usuario
(
 [Id] int not null primary key identity(1,1), 
 [IdRol] int not null, 
 [Nombre] varchar(100) not null, 
 [Apellido] varchar(100) not null,
 [Login] varchar(100) not null,
 [Password] varchar(37) not null,
 [Estatus] tinyint not null,
 [FechaRegistro] datetime not null,
 foreign key (IdRol) references Rol(Id)
)
go

Create table Automoviles
(
[IdVehiculos] int not null primary key identity (1,1),
[Marca] varchar (30),
[Modelo] varchar (30),
[Año] varchar (30),
[Precio] decimal,
[Descripcion] varchar (100),
[TipoAutomovil] varchar(30)
)
go

CREATE TABLE Carros (
    [Id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    [Marca] VARCHAR(50) NOT NULL,
	[Color] VARCHAR(50) NOT NULL,
    [Modelo] VARCHAR(50) NOT NULL,
    [Año] VARCHAR(10) NOT NULL,
    [Precio] VARCHAR(10) NOT NULL
	
)
GO

CREATE TABLE Compra (
    [Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    [FechaCompra] DATETIME NOT NULL,
    [MetodoPago] INT NOT NULL,
    [DetallesPago] NVARCHAR(MAX) NULL,
    [CarroId] INT NOT NULL,
    CONSTRAINT FK_Compra_Carro FOREIGN KEY (CarroId) REFERENCES Carros (Id)
)
GO

Create table Ventas (
    [Id_Venta] int not null primary key identity (1,1),
    [Id_Automoviles] int,
	[Id_ClienteCompra] int,
    [Id_Usuario] int,
    [FechaVenta] datetime,
    CONSTRAINT FK_Vehículos_Ventas FOREIGN KEY (Id_Automoviles) REFERENCES Automoviles(IdVehiculos),
    CONSTRAINT FK_Clientes_Ventas FOREIGN KEY (Id_ClienteCompra) REFERENCES Compra(Id),
	CONSTRAINT FK_Clientes_Registro FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id)
)
GO


SELECT * FROM Carros

insert into Carros (Marca, Color, Modelo, Año, Precio) values('Mustang Shelby', 'Azul con Rayas Blancas', 'GT500', '2022', '$2,574,500.00');

select *from Usuario;

INSERT INTO Rol(Nombre) VALUES ('Administrador');

insert into Usuario values(1,'Frank','Agreda','frank1','f9dc77cece7fa16f6edd2d1d64853e4b','1,28/08/2023');

INSERT INTO Usuario(IdRol, Nombre, Apellido, Login, Password, Estatus, FechaRegistro) VALUES (1, 'Miguel', 'Alfaro', 'Miguel', '25bdeacce7f8b4db2758b3527b8a9ee1', 1, '28/08/2023');

INSERT INTO Usuario(IdRol, Nombre, Apellido, Login, Password, Estatus, FechaRegistro) VALUES (1, 'Carlos', 'Peraza', 'Carlos1', '87368d0850b336f0cb6846686949af95', 1, '28/08/2023');


drop table Usuario;

