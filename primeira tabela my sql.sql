create database cadastros
default character set utf8
default collate utf8_general_ci;

create table if not exists pessoas (
id int not null auto_increment,
nome varchar(38)not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5 , 2),
altura decimal(3 , 2),
nacionalidade varchar(20) default 'brasil',
primary key (id)
) default charset=utf8; 

insert into pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('godofredo','1984-01-02','m','78.5','1.83','brasil'),
('maria','1994-05-26','f','85.3','1.69', default);

select * from pessoas;