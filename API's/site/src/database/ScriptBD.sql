create database ciencia;
use ciencia;
select * from usuario;
create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45)
);

select*from tentativa;

create table tentativa(
idTentativa int auto_increment,
tempo varchar(8),
tempoSegundos decimal(10),
fkUsuario int, foreign key (fkUsuario) references usuario(idUsuario),
primary key (idTentativa, fkUsuario)
);

create table teste(
	id int primary key auto_increment,
    tempo varchar(1000)
);

create user 'user'@'localhost' identified by 'user123';
grant insert, select on ciencia.usuario to 'user'@'localhost';
grant insert, select on ciencia.tentativa to 'user'@'localhost';
flush privileges;
drop user 'user'@'localhost';

select * from usuario;