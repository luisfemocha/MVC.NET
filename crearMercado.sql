CREATE DATABASE Mercado;

use Mercado;

CREATE TABLE sede(
	idS int PRIMARY KEY, /*identificacion*/
	nomS varchar(50) not null, /*nombre*/
	dir varchar(200) not null, /*direccion*/
	telS varchar(10) not null /*telefono*/
);

CREATE TABLE empleado(
	idE int PRIMARY KEY,
	nomE varchar(50) not null,
	telE varchar(10) not null,
	salud varchar(50) not null,
	sedeE int,
	CONSTRAINT FK1 FOREIGN KEY (sedeE) REFERENCES sede(idS)
);

CREATE TABLE producto(
	idP int IDENTITY PRIMARY KEY,
	nomP varchar(50) not null,
	precio int not null,
	sedeP int not null,
	CONSTRAINT FK2 FOREIGN KEY (sedeP) REFERENCES sede(idS)
);