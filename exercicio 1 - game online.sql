CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
id_classe BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
orientacao VARCHAR (50) NOT NULL,
divina BOOLEAN NOT NULL,
arma VARCHAR (50) NOT NULL,
equipamento VARCHAR (50) NOT NULL,
PRIMARY KEY (id_classe)
);

SELECT * FROM tb_personagem;

CREATE TABLE tb_personagem (
id_personagem BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
raca VARCHAR (50) NOT NULL,
nivel INT NOT NULL,
ataque BIGINT (10) NOT NULL,
defesa BIGINT (10) NOT NULL,
fk_classe BIGINT(5),
PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);

INSERT INTO tb_classe (nome, orientacao, divina, arma, equipamento)
VALUES ("Guerreiro", "Neutro", TRUE , "Machado", "Malha"),
("Arqueiro", "Bom", TRUE, "Arco", "Couro"),
("Mago", "Neutro", FALSE, "Cajado", "Tecido"),
("Bruxo", "Mal", FALSE , "Cajado", "Tecido"),
("Sacerdote", "Bom", TRUE, "Livro", "Tecido");

INSERT INTO tb_personagem (nome, raca, nivel, ataque, defesa, fk_classe)
VALUES ("Gimli", "Anão", 25, 1800, 2100, 1),
("Legolas", "Elfo", 51, 1900, 1500, 2),
("Gandalf", "Humano", 99, 4200, 900, 3),
("Saruman", "Humano", 80, 2900 , 800, 4),
("Elrond", "Elfo", 150, 3100, 1300, 5),
("Aragorn", "Humano", 28, 2100, 1900, 2),
("Boromir", "Humano", 26, 2300, 1800, 1),
("Thorin", "Anão", 41, 1700 , 1700, 1);

SELECT * FROM tb_personagem;

SELECT * FROM tb_classe;

/*Query para selecionar personagens com ataque maior que 2000:*/
SELECT * FROM tb_personagem
WHERE ataque > 2000;

/*Query para selecionar personagens com defesa entre 1000 e 2000:*/
SELECT * FROM tb_personagem
WHERE defesa <= 2000
and defesa >= 1000;

/*Query para selecionar personagens com a letra G:*/
SELECT * FROM tb_personagem WHERE nome LIKE "%G%";

/*Query para Inner Joint classe e personagem:*/
SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id_classe = tb_personagem.fk_classe;

/*Query para selecionar personagens classe específica:*/
SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_classe.id_classe = tb_personagem.fk_classe
WHERE tb_classe.nome = "Guerreiro";