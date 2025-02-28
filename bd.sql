DROP DATABASE academiadb;
CREATE DATABASE academiadb;

use academiadb;

/* ATIVIDADE_FISICA_LOGICA: */
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11) UNIQUE,
    telefone VARCHAR(15),
    endereco VARCHAR(255),
    data_de_nascimento DATE
);

CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    duracao__min_ INT,
    id_usuario INT,
    calorias_queimadas DECIMAL(6,2),
    id_exercicio INT,
    fk_usuarios_id_usuario INT
    
);

CREATE TABLE exercicios_ (
    id_exercicio INT AUTO_INCREMENT PRIMARY KEY,
    nome_exercicio VARCHAR(100),
    grupo_muscular VARCHAR(50),
    media_calorias__por_min_ DECIMAL(5,2)
);

CREATE TABLE Relacionamento_2 (
    fk_atividade_id_atividade INT,
    fk_exercicios__id_exercicio INT
);
 
ALTER TABLE atividade ADD CONSTRAINT FK_atividade_2
    FOREIGN KEY (fk_usuarios_id_usuario)
    REFERENCES usuarios (id_usuario)
    ON DELETE RESTRICT;
 
 
ALTER TABLE Relacionamento_2 ADD CONSTRAINT FK_Relacionamento_2_1
    FOREIGN KEY (fk_atividade_id_atividade)
    REFERENCES atividade (id_atividade)
    ON DELETE RESTRICT;
 
ALTER TABLE Relacionamento_2 ADD CONSTRAINT FK_Relacionamento_2_2
    FOREIGN KEY (fk_exercicios__id_exercicio)
    REFERENCES exercicios_ (id_exercicio)
    ON DELETE RESTRICT;
    
    INSERT INTO usuarios (id_usuario, nome, cpf, telefone, endereco, data_de_nascimento) 
VALUES (1, 'Ronaldo Cavalini', '44444444410', '(11)98765-4321', 'Rua das Palmeiras - 123', 
'1969-12-24');

INSERT INTO usuarios (id_usuario, nome, cpf, telefone, endereco, data_de_nascimento) 
VALUES (2, 'Adilene Santos', '11111111112', '(11)98765-4322', 'Avenida Brasil, 456', 
'1973-07-02');

INSERT INTO usuarios (id_usuario, nome, cpf, telefone, endereco, data_de_nascimento) 
VALUES (3, 'Phelipe Felitoza', '55555555513', '(11)98765-4323', 'Rua São Joao 789', 
'1991-06-07');

INSERT INTO usuarios (id_usuario, nome, cpf, telefone, endereco, data_de_nascimento) 
VALUES (4, 'Amanda Cavalini', '66666666611', '(11)98765-4324', 'Alameda dos Anjos, 321' ,
'1996-05-16');

INSERT INTO usuarios (id_usuario, nome, cpf, telefone, endereco, data_de_nascimento) 
VALUES (5, 'Misael Moura', '22222222214', '(11)98765-4325', 'Rua do Sol, 654' ,
'2016-01-23');

INSERT INTO usuarios (id_usuario, nome, cpf, telefone, endereco, data_de_nascimento) 
VALUES (6, 'Gabriel Moura', '33333333316', '(11)98765-4326', 'Rua da Lua, 456' ,
'2018-07-26');

SELECT * FROM usuarios;

SELECT usuarios.nome, exercicios_.grupo_muscular /*SELEC: selecione os dados das colunas*/
FROM usuarios /*FRON: pegando os dados da tabela usuarios*/
JOIN atividade ON usuarios.id_usuario = atividade.id_usuario /*JOIN: juntar  a tabela usuarios com atividade usando id_usuario.*/
JOIN exercicios_ ON atividade.id_exercicio = exercicios_.id_exercicio; /*JOIN: juntando atividade com exercicios_ usando id_exercicio.*/






