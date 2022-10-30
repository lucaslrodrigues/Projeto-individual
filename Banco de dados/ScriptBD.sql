create database saturn;
use saturn;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
login varchar(45),
senha varchar(45)
);

create table tentativa(
idTentativa int auto_increment,
tempo decimal(10,2),
dtTentativa datetime,
fkUsuario int, foreign key (fkUsuario) references usuario(idUsuario),
primary key (idTentativa, fkUsuario)
);