CREATE TABLE Usuario(
    ID_user INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL,
     p_apellido VARCHAR(15) NOT NULL,
    s_apellido VARCHAR(15),
    contrasenia VARCHAR(50) not NULL,
    correo VARCHAR(15) NOT NULL,
    lada INT NOT NULL,
    telefono VARCHAR(14) NOT NULL,
    fecha_registro DATE,
    gender VARCHAR(5) NOT NULL,
    ID_country int NOT NULL
);
CREATE TABLE country(
    ID_country INT PRIMARY KEY NOT NULL,
    countryName VARCHAR(80) NOT NULL,
    lada INT NOT NULL
)
CREATE TABLE Reservaciones(
    ID_reservacion int PRIMARY KEY NOT NULL,
    ID_user INT NOT NULL,
    ID_cabania INT NOT NULL,
    fecha_registro DATE NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_cierre DATE NOT NULL,
    tipo_pago VARCHAR(10) NOT NULL,
    cuanto_se_pago FLOAT NOT NULL,
    cuantos_ninios INT NOT NULL,
    cuanto_adultos INT NOT NULL
);
CREATE TABLE Reviews(
    ID_reviews INT PRIMARY KEY NOT NULL,
    ID_reservacion INT NOT NULL,
    score INT ,
    resenia TEXT(500)
);
CREATE TABLE Administrador(
    ID_admin INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    p_apellido VARCHAR(15) NOT NULL,
    s_apellido VARCHAR(15) NOT NULL,
    correo VARCHAR(15) NOT NULL,
    telefono VARCHAR(14) NOT NULL,
    fecha_registro DATE
);

CREATE TABLE cabanias(
    ID_cabania INT PRIMARY KEY NOT NULL,
    ID_duenio INT NOT NULL,
    nombre_cabania VARCHAR(10) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    n_cuartos INT NOT NULL,
    n_camasGrandes INT,
    n_camasMedianas INT,
    n_camasInvididuales INT,
    n_PersonasMAX INT NOT NULL,
    n_baniosCompletos INT,
    n_baniosSencillos INT,
    INSIDE INT NOT NULL,
    cocina INT NOT NULL,
    asador INT NOT NULL,
    refrigerador INT NOT NULL,
    chimenea INT NOT NULL,
    aire_Acondicionado INT NOT NULL,
    alberca INT NOT NULL,
    espejos INT NOT NULL,
    tvcable INT NOT NULL
);
CREATE TABLE duenio(
    ID_duenio INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    p_apellido VARCHAR(15) NOT NULL,
    s_apellido VARCHAR(15) NOT NULL,
    telefono VARCHAR(14) NOT NULL
);