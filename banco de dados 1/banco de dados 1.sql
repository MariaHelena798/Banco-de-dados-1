CREATE DATABASE cidade;
USE cidade;

CREATE TABLE estados (
    id INT(6) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE cidades (
    id INT(6) NOT NULL AUTO_INCREMENT,
    idEstado INT(6),
    nome VARCHAR(50),
    PRIMARY KEY(id),
    FOREIGN KEY (idEstado) REFERENCES estados(id)
);

CREATE TABLE pessoas (
    id INT(6) NOT NULL AUTO_INCREMENT,
    idCidade INT(6),
    nome VARCHAR(50),
    email VARCHAR(50),
    senha VARCHAR(50),
    sexo CHAR(2),
    nasci DATE,
    cpf VARCHAR(11),
    bairro VARCHAR(30),
    rua VARCHAR(30),
    numero INT(10),
    telefone VARCHAR(15),
    PRIMARY KEY(id),
    FOREIGN KEY (idCidade) REFERENCES cidades(id)
);

CREATE TABLE generos (
    id INT(6) NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE livros (
    id INT(6) NOT NULL AUTO_INCREMENT,
    idGenero INT(6),
    titulo VARCHAR(40),
    ano VARCHAR(4),
    isbn VARCHAR(40),
    quantidade INT(10),
    PRIMARY KEY(id),
    FOREIGN KEY (idGenero) REFERENCES generos(id)
);

CREATE TABLE emprestimos (
    id INT(6) NOT NULL AUTO_INCREMENT,
    idPessoa INT(6),
    idLivro INT(6),
    dtEmprestimos DATE,
    dtDevolucao DATE,
    status VARCHAR(50),
    PRIMARY KEY(id),
    FOREIGN KEY (idPessoa) REFERENCES pessoas(id),
    FOREIGN KEY (idLivro) REFERENCES livros(id)
);


INSERT INTO estados (nome) VALUES ('Pernambuco');
INSERT INTO generos (descricao) VALUES ('Romance');
INSERT INTO cidades (idEstado, nome) VALUES (2, 'Ceara'); 
INSERT INTO pessoas (idCidade, nome, email, senha, sexo, nasci, cpf, bairro, rua, numero, telefone) 
VALUES (2, 'Manuel', 'manuel@gmail.com', 'senh', 'M', '1990-09-06', '156757678', 'Centro', 'Rua 07', 767, '92754765'); 
INSERT INTO livros (idGenero, titulo, ano, isbn, quantidade) 
VALUES (2, 'As setes magicas', '2001', '978-881-098-09', 80); 
INSERT INTO emprestimos (idPessoa, idLivro, dtEmprestimos, dtDevolucao, status) 
VALUES (2, 2, '2024-11-17', '2024-12-17', 'Livros em pessimas condicoes');
INSERT INTO estados (nome) VALUES ('Amazonas');
INSERT INTO generos (descricao) VALUES ('Ficção');
INSERT INTO cidades (idEstado, nome) VALUES (1, 'Manaus');
INSERT INTO pessoas (idCidade, nome, email, senha, sexo, nasci, cpf, bairro, rua, numero, telefone) 
VALUES (1, 'João Silva', 'joao@gmail.com', 'senha123', 'M', '1990-03-15', '12334567890', 'Centro', 'Rua 10', 123, '923456789'); 

select* from pessoas order by nome;
select* from livros order by titulo;
select* from pessoas order by id desc;
select* from livros order by titulo desc;
select* from pessoas order by sexo;

