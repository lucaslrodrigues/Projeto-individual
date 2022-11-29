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
tempo varchar(8),
tempoSegundos decimal(10),
fkUsuario int, foreign key (fkUsuario) references usuario(idUsuario),
primary key (idTentativa, fkUsuario)
);

create table carta(
idCarta int auto_increment,
carta varchar(250),
fkUsuario int, foreign key (fkUsuario) references usuario(idUsuario),
primary key (idCarta, fkUsuario)
);

select * from usuario;
select * from tentativa;
select * from carta;

select usuario.nome 'Nome', tentativa.tempo 'Tempo'
	from usuario join tentativa on idUsuario = fkUsuario order by tentativa.tempoSegundos;

create user 'user'@'localhost' identified by 'user123';
grant insert, select on ciencia.usuario to 'user'@'localhost';
grant insert, select on ciencia.tentativa to 'user'@'localhost';
flush privileges;
drop user 'user'@'localhost';