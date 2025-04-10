create database escola;

use escola;

create table usuario(
id_usuario int(10) not null,
senha varchar (100) not null,
nivel_acesso varchar(30),
primary key(id_usuario) 
);

create table pessoa(
id_pessoa int(10),
nome varchar(50),
RG varchar (20),
CPF varchar (12),
Telefone int(11),
Email varchar(50),
primary key(id_pessoa)
);

create table aluno(
id_aluno int(10) not null,
RA varchar (10),
data_nasci date,
primary key (id_aluno)
);

create table matricula(
id_matricula int(10) not null,
dat date,
id_aluno int(10),
id_turma int(10),
estado varchar (40),
primary key (id_matricula),
FOREIGN KEY (id_aluno) references aluno(id_aluno)
);

create table turma(
id_turma int(10) not null,
horario time,
capacidade int(10),
id_curso int(10),
primary key (id_turma)
);

create table professor(
id_pessoa int(10),
formacao varchar(40),
contato int(10),
FOREIGN KEY (id_pessoa) references pessoa(id_pessoa)
);

create table turma_prof(
id_turma_prof int(10),
id_turma int(10),
id_prof int(10),
primary key (id_turma_prof),
FOREIGN KEY (id_turma) references turma(id_turma)
);

create table curso(
id_curso int(10),
nome varchar(40),
duracao int(5),
primary key (id_curso)
);

