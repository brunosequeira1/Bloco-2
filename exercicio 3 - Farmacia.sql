CREATE DATABASE db_farmacia_do_bem;

USE db_generation_game_online;

CREATE TABLE tb_categorias (
id_categorias BIGINT (5) AUTO_INCREMENT,
tipo VARCHAR (50) NOT NULL,
aplicacao VARCHAR (50) NOT NULL,
generico BOOLEAN NOT NULL,
PRIMARY KEY (id_categorias)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produto (
id_produto BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (50) NOT NULL,
valor DECIMAL (10.2) NOT NULL,
vencimento DATE NOT NULL,
quantidade INT NOT NULL,
fk_categorias BIGINT(5),
PRIMARY KEY (id_produto),
FOREIGN KEY (fk_categorias) REFERENCES tb_categorias (id_categorias)
);

INSERT INTO tb_categorias (tipo, aplicacao, generico)
VALUES ("Antibiótico", "Comprimido", FALSE),
("Corticóide", "Comprimido", FALSE),
("Relaxante", "Pomada", TRUE),
("Relaxante", "Comprimido", TRUE),
("Antibiótico", "Gotas", FALSE),
("Corticóide", "Pomada", FALSE);

INSERT INTO tb_produto (nome, valor, vencimento,quantidade, fk_categorias)
VALUES ("Amoxicilina", 53.00, '2022-12-29',25,1),
("ParallaxB", 65.00, '2023-10-05',12,2),
("Dorflex", 25.00, '2023-09-12',32,3),
("Estronten", 22.0, '2023-01-20',44,4),
("Aspargen", 88.00, '2022-11-12',50,5),
("Extrocina", 55.00, '2023-05-14',20,6),
("Paraqulin", 71.00, '2024-07-03',10,5),
("Antioxbenzol", 33.00, '2022-06-02',13,4);

SELECT * FROM tb_produto;

SELECT * FROM tb_categorias;

/*Query para selecionar com valor maior que 50 reais:*/
SELECT * FROM tb_produto
WHERE valor > 50.00;

/*Query para selecionar com valor entre 3 e 60 reais:*/
SELECT * FROM tb_produto
WHERE valor >= 03.00
and valor <= 60.00;

/*Query para selecionar pizzas com a letra C:*/
SELECT * FROM tb_produto WHERE nome LIKE "%B%";

/*Query para Inner Joint categorias e produtos:*/
SELECT * FROM tb_categorias INNER JOIN tb_produto ON tb_categorias.id_categorias = tb_produto.fk_categorias;

/*Query para selecionar produtos de categoria específica:*/
SELECT * FROM tb_categorias INNER JOIN tb_produto ON tb_categorias.id_categorias = tb_produto.fk_categorias
WHERE tb_categorias.tipo = "Antibiótico";