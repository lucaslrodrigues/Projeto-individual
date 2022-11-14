create database ciencia;
use ciencia;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45)
);

create table tentativa(
idTentativa int auto_increment,
tempo decimal(10,2),
dtTentativa datetime,
fkUsuario int, foreign key (fkUsuario) references usuario(idUsuario),
primary key (idTentativa, fkUsuario)
);

create user 'user'@'localhost' identified by 'user123';
grant insert, select on ciencia.usuario to 'user'@'localhost';
grant insert, select on ciencia.tentativa to 'user'@'localhost';
flush privileges;
drop user 'user'@'localhost';