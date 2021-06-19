CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT (5) AUTO_INCREMENT, 
nome VARCHAR (50) NOT NULL, 
preco DECIMAL (10,2) NOT NULL, 
quantidade INT NOT NULL, 
marca VARCHAR (50) NOT NULL, 
emEstoque BOOLEAN NOT NULL, 
validade DATE NOT NULL,
PRIMARY KEY (ID)
); 
 
SELECT * FROM TB_PRODUTOS;

INSERT INTO TB_PRODUTOS (nome, preco, quantidade, marca, emEstoque,validade)
VALUES ("Relógio", 5500, 20, "ROLEX",true, '2031-04-13'),
("PS5", 5200, 3, "SONY",true, '2025-03-23'),
("Televisão", 2700, 0, "SAMSUNG",false, '2023-10-12'),
("Guitarra", 1100, 1, "FENDER",true, '2022-06-05'),
("Notebook", 490, 1, "DELL",true, '2022-09-02'),
("Home Theater", 320, 8, "DOLBY",true, '2022-03-03'),
("Microondas", 250, 6, "LG",true, '2021-11-07'),
("Barbeador", 20, 50, "GILLETE",true, '2021-12-21');

/*Query de selecionar produtos com valor maior que 500:*/
SELECT * FROM tb_produtos where preco > 500;

/*Query de selecionar produtos com valor menor que 500:*/
SELECT * FROM tb_produtos where preco < 500;

/*Query de atualizar dado de produtos (preco, quantidade):*/
UPDATE tb_produtos set preco = 1800 , quantidade = 3 where id = 4;

