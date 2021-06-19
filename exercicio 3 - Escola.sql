CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
id BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (45) NOT NULL,
turma VARCHAR (45) NOT NULL,
idade INT NOT NULL,
nota DECIMAL (10,2) NOT NULL,
genero VARCHAR (45) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, turma, idade, nota, genero)
VALUES ("Bruno", "24", 31, 7.5, "Masculino"),
("Guilherme", "24", 19, 8.0, "Masculino"),
("Igor", "24", 23, 7, "Masculino"),
("Ed", "25", 22, 6.1, "Masculino"),
("Zinha", "24", 20, 5, "Feminino"),
("Beatriz", "25", 21, 9.2, "Feminino"),
("Boaz", "Teacher", 32, 3, "Masculino"),
("Luis", "Teacher", 39, 0, "Masculino");

/*Query de selecionar notas maiores que 7:*/
SELECT * FROM tb_estudantes where nota >7;

/*Query de selecionar notas menores que 7:*/
SELECT * FROM tb_estudantes where nota <7;

/*Query de atualizar dados (turma, nota):*/
UPDATE tb_estudantes set turma = "25", nota = 10.00 where id = 2;
UPDATE tb_estudantes set turma = "25", nota = 20.00 where id = 1;
