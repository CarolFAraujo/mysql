CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Criar a tabela tb_categorias com 2 atributos

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
setor varchar(50) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (categoria, setor)
VALUES ("Cosméticos", "A");

INSERT INTO tb_categorias (categoria, setor)
VALUES ("Medicamentos", "B");

INSERT INTO tb_categorias (categoria, setor)
VALUES ("Higiene Pessoal", "C");

INSERT INTO tb_categorias (categoria, setor)
VALUES ("Infantil", "D");

INSERT INTO tb_categorias (categoria, setor)
VALUES ("Suplementos", "E");


SELECT * FROM tb_categorias;

-- criar  tb_pizzas com 4 atributos

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
nome varchar(100) NOT NULL,
peso_conteudo varchar(100) NOT NULL,
tipo varchar(100) NOT NULL,
preco decimal (6,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, peso_conteudo, tipo, preco, categoria_id)
VALUES ("Paracetamol", "15ml", "Analgésicos", 10.00, 2); 

INSERT INTO tb_produtos (nome, peso_conteudo, tipo, preco, categoria_id)
VALUES ("Xarope Ambroxol", "120ml", "Expectorante", 50.00, 2);

INSERT INTO tb_produtos (nome, peso_conteudo, tipo, preco, categoria_id)
VALUES ("Shampoo Star", "400ml", "Produtos para banho", 25.00, 3);

INSERT INTO tb_produtos (nome, peso_conteudo, tipo, preco, categoria_id)
VALUES ("Sabonete líquido Luxo", "300ml", "Produtos para banho", 60.00, 3);

INSERT INTO tb_produtos (nome, peso_conteudo, tipo, preco, categoria_id)
VALUES ("Base matte rosto Queen", "20ml", "Maquiagem", 80.00, 1);

INSERT INTO tb_produtos (nome, peso_conteudo, tipo, preco, categoria_id)
VALUES ("Pó compacto matte Queen", "6.5g", "Maquiagem", 150.00, 1);

INSERT INTO tb_produtos (nome, peso_conteudo, tipo, preco, categoria_id)
VALUES ("Fralda Pimpolhers", "44 unidades", "Infantil", 100.00, 4);

INSERT INTO tb_produtos (nome, peso_conteudo, tipo, preco, categoria_id)
VALUES ("Creatina Strongest", "200g", "Saúde", 200, 5);



SELECT * FROM tb_produtos;

-- SELECT que retorne todas os produtos cujo preco seja maior do que 50.00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT que retorne todos os produtos cujo preco esteja no intervalo 5.00 e 60.00 
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra c no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

-- SELECT categoria específica
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE categoria = "Cosméticos";


