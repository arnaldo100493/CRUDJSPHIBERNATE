create database dbpersona;
use dbpersona;

create table tpersona(
  idPersona int auto_increment not null,
  dniPersona char(10) not null unique,
  nombrePersona varchar(30) not null,
  apellidoPaterno varchar(30) not null,
  apellidoMaterno varchar(30) not null,
  fechaNacimiento date not null,
  estado bool not null,
  primary key(idPersona)  
);

insert into tpersona(idPersona, dniPersona, nombrePersona, apellidoPaterno, apellidoMaterno, estado, fechaNacimiento) values(1, '1047459854', 'Arnaldo Andres', 'Barrios', 'Mena', true, '1993-04-10');

select * from tpersona;