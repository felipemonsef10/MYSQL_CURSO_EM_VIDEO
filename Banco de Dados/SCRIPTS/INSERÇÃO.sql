create database imepac;
use imepac;
create table cliente(
idcliente int primary key auto_increment,
nome varchar(30) not null,
sexo enum('M', 'F') not null,
email varchar (50) unique,
cpf varchar (15) unique
);
create table endereço (
idendereço int primary key auto_increment,
logradouro varchar(80) not null,
bairro varchar(50) not null,
cidade varchar (40) not null,
estado char(2) not null,
id_cliente int unique,
foreign key (id_cliente)
references cliente(idcliente)
);
create table telefone(
idetelefone int primary key auto_increment,
tipo enum ('RES','COM','CEL') not null,
numero varchar(10),
id_cliente int,
foreign key(id_cliente)
references cliente(idcliente)
);
insert into cliente values (null, 'joao','M','joao@ig.com','76567587887');
insert into cliente values (null, 'carlos','M','carlosa@ig.com','5464553466');
insert into cliente values (null, 'ana','F','ana@ig.com','456545678');
insert into cliente values (null, 'clara','F',null,'5687766856');
insert into cliente values (null, 'jorge','M','jorge@ig.com','8756547688');
insert into cliente values (null, 'celia','F','jcelia@ig.com','5767876889');
INSERT INTO endereço VALUES(NULL,'RUA ANTONIO SA','CENTRO','B.
HORIZONTE','MG',4);
INSERT INTO endereço VALUES(NULL,'RUA CAPITAO HERMES','CENTRO','RIO DE
JANEIRO','RJ',1);
INSERT INTO endereço VALUES(NULL,'RUA PRES VARGAS','JARDINS','SAO
PAULO','SP',3);
INSERT INTO endereço VALUES(NULL,'RUA ALFANDEGA','ESTACIO','RIO DE
JANEIRO','RJ',2);
INSERT INTO endereço VALUES(NULL,'RUA DO OUVIDOR','FLAMENGO','RIO DE
JANEIRO','RJ',6);
INSERT INTO endereço VALUES(NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);
INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','CENTRO','SAO
PAULO','SP',5);
SELECT * FROM ENDERECO;
DESC TELEFONE;
INSERT INTO telefone VALUES(NULL,'CEL','78458743',5);
INSERT INTO telefone VALUES(NULL,'RES','56576876',5);
INSERT INTO telefone VALUES(NULL,'CEL','87866896',1);
INSERT INTO telefone VALUES(NULL,'COM','54768899',2);
INSERT INTO telefone VALUES(NULL,'RES','99667587',1);
INSERT INTO telefone VALUES(NULL,'CEL','78989765',3);
INSERT INTO telefone VALUES(NULL,'CEL','99766676',3);
INSERT INTO telefone VALUES(NULL,'COM','66687899',1);