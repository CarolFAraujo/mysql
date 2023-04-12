CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Criar a tabela tb_categorias com 2 atributos

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo_pizza varchar(100) NOT NULL,
tipo_massa varchar(100) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo_pizza, tipo_massa)
VALUES ("Doce", "Massa fina");

INSERT INTO tb_categorias (tipo_pizza, tipo_massa)
VALUES ("Doce", "Massa grossa");

INSERT INTO tb_categorias (tipo_pizza, tipo_massa)
VALUES ("Salgada", "Massa fina");

INSERT INTO tb_categorias (tipo_pizza, tipo_massa)
VALUES ("Salgada", "Massa grossa");

INSERT INTO tb_categorias (tipo_pizza, tipo_massa)
VALUES ("Vegetariana", "Massa fina");

INSERT INTO tb_categorias (tipo_pizza, tipo_massa)
VALUES ("Vegetariana", "Massa grossa");

SELECT * FROM tb_categorias;

-- criar  tb_pizzas com 4 atributos

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome_pizza varchar(100) NOT NULL,
ingredientes varchar(255) NOT NULL,
borda varchar(100) NOT NULL,
preco decimal not null,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, borda, preco, categoria_id)
VALUES ("Paulista", "Molho de tomates frescos, queijo Catupiry, bacon, salsinha, azeitonas", "Borda de catupiry", 49.00, 3); 

INSERT INTO tb_pizzas (nome_pizza, ingredientes, borda, preco, categoria_id)
VALUES ("Carioca", "Molho de tomates frescos, muçarela, calabresa, cheddar, orégano, azeitonas", "Borda de cheddar", 45.00, 4);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, borda, preco, categoria_id)
VALUES ("Baiana", "Molho de tomates frescos, calabresa, molho de pimenta, muçarela, azeitonas", "Borda de catupiry", 50.00, 3);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, borda, preco, categoria_id)
VALUES ("Paraense", "Camarão, alho picado, jambu, muçarela, azeitonas", "Borda de catupiry", 70.00, 4);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, borda, preco, categoria_id)
VALUES ("Romeu e Julieta", "Leite condensado, queijo meia cura ralado, goiabada", "Borda sem recheio", 65.00, 1);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, borda, preco, categoria_id)
VALUES ("Chocoberry", "Chocolate meio amargo, creme de leite, morangos", "Borda sem recheio", 100.00, 2);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, borda, preco, categoria_id)
VALUES ("Brocolina", "Molho de tomates frescos, brócolis, alho, pimenta calabresa, azeitonas", "Borda sem recheio", 40.00, 5);

INSERT INTO tb_pizzas (nome_pizza, ingredientes, borda, preco, categoria_id)
VALUES ("Sabugosa", "Molho de tomates frescos, milho verde, alho, azeitonas", "Borda sem recheio", 40.00, 6);



SELECT * FROM tb_pizzas;

-- SELECT que retorne todas as pizzas cujo preco seja maior do que 45.00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT que retorne todas as pizzas cujo preco esteja no intervalo 50.00 e 100.00 
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT utilizando o operador LIKE, buscando todes as pizzas possuam a letra C no atributo nome_pizza
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%m%";

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

-- SELECT categoria específica
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tipo_pizza = "doce";


