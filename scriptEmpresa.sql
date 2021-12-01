create database empresa;
use empresa;

create table cargo(
cdCargo char(2) primary key not null,
nmCargo varchar(15) not null,
vrSalario float not null
);

create table departamento(
cdDpto char(2) primary key not null,
nmDpto varchar(15) not null,
ramal int not null
);


create table funcionario(
nrMatricula int primary key not null,
nmFunc varchar(30) not null,
dtAdm date not null,
sexo char(1) not null,
cdCargo char(2),
foreign key (cdCargo)
references cargo(cdCargo),
cdDpto char(2),
foreign key (cdDpto)
references departamento(cdDpto)
);
