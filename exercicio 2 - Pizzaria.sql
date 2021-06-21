CREATE DATABASE db_pizzaria_legal;

USE db_generation_game_online;

CREATE TABLE tb_categoria (
id_categoria BIGINT (5) AUTO_INCREMENT,
tipo VARCHAR (50) NOT NULL,
massa VARCHAR (50) NOT NULL,
identificador INT NOT NULL,
PRIMARY KEY (id_categoria)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza (
id_pizza BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
tamanho VARCHAR (50) NOT NULL,
preco DECIMAL (10.2) NOT NULL,
borda  BOOLEAN NOT NULL,
tempo_preparo TIME NOT NULL,
fk_categoria BIGINT(5),
PRIMARY KEY (id_pizza),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (tipo, massa, identificador)
VALUES ("Salgada", "Pan", 100),
("Salgada", "Tradicional", 200),
("Salgada", "Leve", 300),
("Doce", "Pan", 400),
("Doce", "Tradicional", 500),
("Doce", "Leve", 600);

INSERT INTO tb_pizza (nome, tamanho, preco, borda, tempo_preparo, fk_categoria)
VALUES ("Portuguesa", "Grande", 42.90, FALSE, '01:20:00', 2),
("Marguerita", "Grande", 51.90, TRUE, '01:45:00', 1),
("Chocolate", "Média", 28.80, TRUE, '01:10:00', 4),
("Banana com Canela", "Pequena", 20.50, FALSE, '00:40:00', 6),
("Calabresa", "Média", 25.50, FALSE, '01:00:00', 3),
("Sensação", "Pequena", 26.60, FALSE, '00:45:00', 5),
("Quatro Queijos", "Grande", 52.50, TRUE, '01:30:00', 1),
("Frango com Catupiry", "Grande", 45.00, TRUE , '01:30:00', 2);

SELECT * FROM tb_pizza;

SELECT * FROM tb_categoria;

/*Query para selecionar pizzas com valor maior que 45 reais:*/
SELECT * FROM tb_pizza
WHERE preco > 45.00;

/*Query para selecionar pizzas com valor entre 29 e 60 reais:*/
SELECT * FROM tb_pizza
WHERE preco >= 29.00
and preco <= 60.00;

/*Query para selecionar pizzas com a letra C:*/
SELECT * FROM tb_pizza WHERE nome LIKE "%C%";

/*Query para Inner Joint categoria e pizza:*/
SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.fk_categoria;

/*Query para selecionar pizzas de categoria específica:*/
SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id_categoria = tb_pizza.fk_categoria
WHERE tb_categoria.tipo = "Doce";