CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

-- Criar a tabela tb_categorias com 2 atributos

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo_carne varchar(255) NOT NULL,
tipo_corte varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo_carne, tipo_corte)
VALUES ("Aves", "Simples");

INSERT INTO tb_categorias (tipo_carne, tipo_corte)
VALUES ("Bovinos", "Premium");

INSERT INTO tb_categorias (tipo_carne, tipo_corte)
VALUES ("Suínos", "Simples");

INSERT INTO tb_categorias (tipo_carne, tipo_corte)
VALUES ("Peixes", "Premium");


SELECT * FROM tb_categorias;

-- criar  tb_produtos  com 4 atributos

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
nome varchar(100) NOT NULL,
peso varchar(100) NOT NULL,
armazenamento varchar(100) NOT NULL,
preco decimal (6,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, peso, armazenamento, preco, categoria_id)
VALUES ("Coxinha da asa", "1kg", "Congelados", 30.00, 1); 

INSERT INTO tb_produtos (nome, peso, armazenamento, preco, categoria_id)
VALUES ("Alcatra", "1kg", "Refrigerados", 100.00, 2);

INSERT INTO tb_produtos (nome, peso, armazenamento, preco, categoria_id)
VALUES ("Filé Mignon", "500g", "Refrigerados", 50.00, 2);

INSERT INTO tb_produtos (nome, peso, armazenamento, preco, categoria_id)
VALUES ("Bisteca", "500g", "Refrigerados", 40.00, 3);

INSERT INTO tb_produtos (nome, peso, armazenamento, preco, categoria_id)
VALUES ("Iscas de frango", "300g", "Congelados", 25.00, 1);

INSERT INTO tb_produtos (nome, peso, armazenamento, preco, categoria_id)
VALUES ("Cortes de Salmão", "500g", "Congelados", 100.00, 4);

INSERT INTO tb_produtos (nome, peso, armazenamento, preco, categoria_id)
VALUES ("Filé de peito de frango", "1kg", "Refrigerados", 100.00, 1);

INSERT INTO tb_produtos (nome, peso, armazenamento, preco, categoria_id)
VALUES ("Contra-filé", "1kg", "Refrigerados", 60.00, 2);



SELECT * FROM tb_produtos;

-- SELECT que retorne todos os produtos cujo preco seja maior do que 50.00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT que retorne todos os produtos cujo preco esteja no intervalo 50.00 e 150.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra c no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

-- SELECT categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tipo_carne = "Aves";


